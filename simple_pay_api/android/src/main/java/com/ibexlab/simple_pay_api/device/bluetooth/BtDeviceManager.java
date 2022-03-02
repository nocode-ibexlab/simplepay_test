package com.ibexlab.simple_pay_api.device.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

import com.ibexlab.simple_pay_api.device.DeviceManager;
import com.ibexlab.simple_pay_api.device.bluetooth.printer.BtPrintHandler;
import com.ibexlab.simple_pay_api.device.bluetooth.printer.IBtPrinter;
import com.ibexlab.simple_pay_api.device.util.IDeviceHandler;
import com.ibexlab.simple_pay_api.device.util.IResult;
import com.ibexlab.simple_pay_api.device.util.ITask;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BtDeviceManager {
    private static final String TAG = BtDeviceManager.class.getSimpleName();

    private final DeviceManager context;
    private BroadcastReceiver btReceiver;
    private final BluetoothAdapter btAdapter;
    private final Map<String, ITask> btTasks;
    private final Map<String, IDeviceHandler> btHandlers;

    public BtDeviceManager(DeviceManager context) {
        this.context = context;
        btAdapter = BluetoothAdapter.getDefaultAdapter();
        btAdapter.enable();
        btTasks = new HashMap<>();
        btHandlers = new HashMap<>();
    }

    public void init() {
        btReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                int state;
                BluetoothDevice device;
                IDeviceHandler handler;
                String action = intent.getAction();

                if (action == null) {
                    return;
                }

                switch (action) {
                    case BluetoothDevice.ACTION_BOND_STATE_CHANGED:
                        state = intent.getIntExtra(BluetoothDevice.EXTRA_BOND_STATE, -1);
                        device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);

                        if (state == BluetoothDevice.BOND_BONDED) {
                            Log.d(TAG, "Created bond with " + device.getAddress());
                            runOrRemoveTask(device.getAddress(), true);
                        } else if (state == BluetoothDevice.BOND_NONE) {
                            Log.d(TAG, "Cannot create bond with " + device.getAddress());
                            runOrRemoveTask(device.getAddress(), false);
                        }
                        break;
                    case BluetoothDevice.ACTION_ACL_DISCONNECTED:
                        device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
                        runOrRemoveTask(device.getAddress(), false);
                        handler = btHandlers.get(device.getAddress());

                        if (handler != null) {
                            handler.close();
                        }

                        btHandlers.remove(device.getAddress());
                        Log.d(TAG, "BT device disconnected: " + device.getAddress());
                        break;
                    case BluetoothAdapter.ACTION_DISCOVERY_STARTED:
                        Log.d(TAG, "Received bluetooth device discovery event, so close all devices.");

                        // 장치가 연결되어 있으면 연결된 장치는 BT 리스트에 보이지 않음
                        // BT 리스트에 보이게 하기 위해 기존 연결을 닫음
                        for (IDeviceHandler h : btHandlers.values()) {
                            h.close();
                        }
                        break;
                }
            }
        };

        IntentFilter filter = new IntentFilter();
        filter.addAction(BluetoothDevice.ACTION_BOND_STATE_CHANGED);
        filter.addAction(BluetoothDevice.ACTION_ACL_DISCONNECTED);
        filter.addAction(BluetoothAdapter.ACTION_DISCOVERY_STARTED);
        context.registerReceiver(btReceiver, filter);
    }

    private void runOrRemoveTask(String address, boolean run) {
        ITask task = btTasks.get(address);

        if (task != null) {
            if (run) {
                task.run();
            }

            btTasks.remove(address);
        }
    }

    public void destroy() {
        context.unregisterReceiver(btReceiver);

        for (IDeviceHandler handler : btHandlers.values()) {
            handler.close();
        }
    }

    private boolean isBonded(String address) {
        if (btAdapter == null) {
            return false;
        }

        for (BluetoothDevice device : btAdapter.getBondedDevices()) {
            if (device.getAddress().equals(address)) {
                return true;
            }
        }

        return false;
    }

    private boolean createBond(String address) {
        if (btAdapter == null) {
            return false;
        }

        try {
            BluetoothDevice device = btAdapter.getRemoteDevice(address);
            Method method = device.getClass().getMethod("createBond");
            boolean result = (boolean) method.invoke(device);
            Log.d(TAG, "Try to create bond with " + address + " : " + result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public BluetoothAdapter getBtAdapter() {
        return btAdapter;
    }

    public boolean getBondedDevices(int what, int token) {
        if (btAdapter == null) {
            return false;
        }
        ArrayList<String> address= new ArrayList<String>();
        ArrayList<String> names= new ArrayList<String>();
        for (BluetoothDevice device : btAdapter.getBondedDevices()) {
//                if (device.getAddress().equals(address)) {
//                    return true;
//                }
            address.add(device.getAddress());
            names.add(device.getName());
        }
        context.sendMessage(what,token,"bluetooth",address,names);

        return false;
    }

    public void print(final String address, final byte[] data, final IResult result) {
        if (btAdapter == null) {
            if (result != null) {
                result.set(DeviceManager.RSP_DEVICE_NOT_FOUND);
            }

            return;
        }
/*
        String address_local = address;
        if(address.isEmpty()){
            for (BluetoothDevice device : btAdapter.getBondedDevices()) {
//                if (device.getAddress().equals(address)) {
//                    return true;
//                }

                if(device.getBluetoothClass().getMajorDeviceClass()!=android.bluetooth.BluetoothClass.Device.Major.AUDIO_VIDEO){
                    address_local = device.getAddress();
                    break;
                }
            }
        }
        final String addressFinal = address_local;

*/

        ITask task = new ITask() {
            @Override
            public void run() {
                IBtPrinter printer = (IBtPrinter) btHandlers.get(address);

                if (printer == null) {
                    printer = createPrinter(address);
                }

                int r = printer.print(data);

                if (result != null) {
                    result.set(r);
                }
            }
        };

        if (!isBonded(address)) {
            if (!createBond(address)) {
                if (result != null) {
                    result.set(DeviceManager.RSP_BT_PARING_FAILED);
                }

                return;
            }

            btTasks.put(address, task);
        } else {
            task.run();
        }

    }

    private IBtPrinter createPrinter(String address) {
        IBtPrinter printer = new BtPrintHandler(this, address);
        btHandlers.put(address, printer);
        return printer;
    }

    public void close(String name) {
        IDeviceHandler handler = btHandlers.get(name);

        if (handler != null) {
            handler.close();
        }
    }
}

