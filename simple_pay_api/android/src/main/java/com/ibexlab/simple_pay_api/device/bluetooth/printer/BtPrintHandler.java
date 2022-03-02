package com.ibexlab.simple_pay_api.device.bluetooth.printer;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.util.Log;

import com.ibexlab.simple_pay_api.device.DeviceManager;
import com.ibexlab.simple_pay_api.device.bluetooth.BtDeviceManager;

import java.io.IOException;
import java.util.UUID;

public class BtPrintHandler implements IBtPrinter {
    private static final String TAG = BtPrintHandler.class.getSimpleName();
    private static final UUID SPP_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");

    private final BtDeviceManager context;
    private final String address;
    private BluetoothSocket btSocket;

    public BtPrintHandler(BtDeviceManager context, String address) {
        this.context = context;
        this.address = address;
    }

    @Override
    public int print(byte[] data) {
        open(address);

        if (btSocket == null) {
            return DeviceManager.RSP_DEVICE_NOT_FOUND;
        }

        if (data != null && data.length > 0) {
            try {
                btSocket.getOutputStream().write(data);
            } catch (IOException e) {
                e.printStackTrace();
                close();
                return DeviceManager.RSP_FAIL;
            }
        }

        return DeviceManager.RSP_OK;
    }

    private void open(String address) {
        if (btSocket != null) {
            return;
        }

        BluetoothDevice device;

        // connect() 하기전에 혹시 있을지 모를 장치 검색을 중지해야 함
        if (context.getBtAdapter().isDiscovering()) {
            context.getBtAdapter().cancelDiscovery();
        }

        try {
            device = context.getBtAdapter().getRemoteDevice(address);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return;
        }

        try {
            Log.d(TAG, "Try to connect (" + address + ")...");
            btSocket = device.createRfcommSocketToServiceRecord(SPP_UUID);
            btSocket.connect();
            Log.d(TAG, "Connection success (" + address + ")");

            // connect 직후 바로 출력 시 프린터에 따라 (Next-M) 일부 내용이 잘리는 경우가 발생하기도 함
            try {
                Thread.sleep(1000);
            } catch (InterruptedException ignored) {
            }
        } catch (IOException e) {
            e.printStackTrace();
            close();
        }
    }

    @Override
    public void close() {
        Log.d(TAG, "Close BT (" + address + ")");

        try {
            if (btSocket != null) {
                btSocket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        btSocket = null;
    }
}

