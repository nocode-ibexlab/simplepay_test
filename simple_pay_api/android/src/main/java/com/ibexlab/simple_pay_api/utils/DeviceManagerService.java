package com.ibexlab.simple_pay_api.utils;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;

import com.ibexlab.simple_pay_api.Feature;
import com.ibexlab.simple_pay_api.device.DeviceManager;
import com.ibexlab.simple_pay_api.servicegeneral.ICameraService;
import com.ibexlab.simple_pay_api.servicegeneral.ISystemSettingService;
import com.ibexlab.simple_pay_api.serviceprint.IPrintManager;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Locale;

/**
 * Yoshop 시스템 서비스와 연결
 */
public class DeviceManagerService implements IPrintManager, ISystemSettingService, ICameraService {
    private static final String TAG = DeviceManagerService.class.getSimpleName();
    private static final String PKG_SYSTEM_SERVICE = "com.ibexlab.pos.yoshop.systemservice";
    private static final String CLS_PWOER_MANAGER = PKG_SYSTEM_SERVICE.concat(".PowerManager");
    private static final String CLS_DEVICE_MANAGER = PKG_SYSTEM_SERVICE.concat(".DeviceManager");

    private static final String PM_YOSHOP_POS = "c1ccb7b6-21c5-11e8-b467-0ed5f89f718b";
    private static final String PM_EXTRA_KEY = "key";
    private static final String PM_EXTRA_CMD = "cmd";
    private static final String PM_CMD_SHUTDOWN = "shutdown";

    private static final int MSG_HELLO = 1;
    private static final int MSG_PRINT = 2;
    private static final int MSG_CONNECT = 3;
    private static final int MSG_CLOSE = 4;
    private static final int MSG_STATUS = 10;
    private static final int MSG_SET_TIME = 11;
    private static final int MSG_BT_DEVICES = 12;
    private static final int MSG_POWER_REBOOT = 13;
    private static final int MSG_CAMERA_BARCODE = 14;

    private static final String DEVICE_NAME = "deviceName";
    private static final String ADDRESS = "address";
    private static final String PRINT_BRIGHT = "bright";
    private static final String PRINT_SPEED = "printSpeed";
    private static final String PRINT_PAPER_SIZE = "paperSize";
    private static final String PRINT_PAPER_CUT = "paperCut";
    private static final String PRINT_LANGUAGE = "language";
    private static final String PRINT_LOG = "log";
    private static final String PRINT_DATA = "data";
    private static final String PRINT_DATA_BYTE = "byteDta";
    private static final String EXTRA = "extra";
    private static final String MESSAGE_DATA = "message";
    private static final String ONLY_DATA_MATRIX = "onlyDataMatrix";
    private static final String USE_FRONT_CAMERA = "useFrontCamera";
    private static final String USE_FLASH = "useFlash";

    public static final String DEVICE_CENTERM_PRINTER = "centerm_printer";
    public static final String DEVICE_CENTERM_IMAGE_PRINTER = "centerm_image_printer";
    private static final String DEVICE_CENTERM_SYSTEM = "centerm_system";
    public static final String DEVICE_BLUETOOTH = "bluetooth";
    private static final String DEVICE_ML = "ml";

    private static final int STATUS_PAPER_EMPTY = 1;
    private static final int STATUS_COVER_OPEN = 2;

    private static final int SERVICE_NOT_BOUND = -1000;

    public static final int FULL_CUT = 0;
    public static final int PARTIAL_CUT = 1;

    private Activity context;
    private boolean isBound;
    private ServiceConnection connection;
    private Messenger messenger;
    private Messenger replyTo;
    private int portSpeed = 115200;
    private String address = "";
    private int printBright = 0;
    private int printSpeed = 80;
    private int paperSize = 48;
    private int paperCut = FULL_CUT;
    private String extra;
    private String language;
    private SparseArray<IServiceCallback> callbackMap;
    private SparseArray<IServiceBTCallback> btCallbackMap;
    private SparseArray<IServiceMessageCallback> messageCallbackMap;

    interface IServiceCallback {
        void call(int result);
    }

    interface IServiceBTCallback {
        void call(ArrayList<String> address, ArrayList<String> names);
    }

    interface IServiceMessageCallback {
        void call(int result, String code);
    }

    private static class LazyHolder {
        private static final DeviceManagerService INSTANCE = new DeviceManagerService();
    }

    public static DeviceManagerService getInstance() {
        return LazyHolder.INSTANCE;
    }

    private DeviceManagerService() {
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public void init(Activity context) {
        this.context = context;
        this.callbackMap = new SparseArray<>();
        this.btCallbackMap = new SparseArray<>();
        this.messageCallbackMap = new SparseArray<>();
    }

    void shutdown() {
        Intent intent = new Intent();
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.setComponent(new ComponentName(PKG_SYSTEM_SERVICE, CLS_PWOER_MANAGER));
        intent.putExtra(PM_EXTRA_KEY, PM_YOSHOP_POS);
        intent.putExtra(PM_EXTRA_CMD, PM_CMD_SHUTDOWN);
        context.startService(intent);
    }

    public void bind() {
        connection = new DeviceManagerConnection();
        replyTo = new Messenger(new IncomingHandler(this));
        Intent intent = new Intent();

        if (Feature.USE_DEVICE_MANAGER_APP) {
            intent.setClassName(PKG_SYSTEM_SERVICE, CLS_DEVICE_MANAGER);
        } else {
            intent.setClass(context, DeviceManager.class);
        }

        context.bindService(intent, connection, Context.BIND_AUTO_CREATE);
    }

    public void unbind() {
        if (isBound) {
            if (context != null) {
                context.unbindService(connection);
            }

            isBound = false;
        }
    }

    //return value int
    private void sendMessage(int cmd, Bundle bundle, IServiceCallback callback) {
        int token = 31 * cmd + (int) System.currentTimeMillis();
        Message message = Message.obtain(null, cmd, token, 0);
        message.replyTo = replyTo;

        if (bundle != null) {
            message.setData(bundle);
        }

        try {
            messenger.send(message);

            if (callback != null) {
                callbackMap.put(token, callback);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    //return value String
    private void sendMessageReceiveMessage(int cmd, Bundle bundle, IServiceMessageCallback callback) {
        int token = 31 * cmd + (int) System.currentTimeMillis();
        Message message = Message.obtain(null, cmd, token, 0);
        message.replyTo = replyTo;

        if (bundle != null) {
            message.setData(bundle);
        }

        try {
            messenger.send(message);

            if (callback != null) {
                messageCallbackMap.put(token, callback);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void sendMessageBT(int cmd, Bundle bundle, IServiceBTCallback callback) {
        int token = 31 * cmd + (int) System.currentTimeMillis();
        Message message = Message.obtain(null, cmd, token, 0);
        message.replyTo = replyTo;

        if (bundle != null) {
            message.setData(bundle);
        }

        try {
            messenger.send(message);

            if (callback != null) {
                btCallbackMap.put(token, callback);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void hello() {
        if (!isBound) {
            return;
        }

        sendMessage(MSG_HELLO, null, null);
    }

    @Override
    public void setPortSpeed(int portSpeed) {
        this.portSpeed = portSpeed;
    }

    @Override
    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public void setPrintBright(int bright) {
        this.printBright = bright;
    }

    @Override
    public void setPrintSpeed(int speed) {
        this.printSpeed = speed;
    }

    public void setPaperSize(int paperSize) {
        this.paperSize = paperSize;
    }

    @Override
    public void setPaperCut(int paperCut) {
        this.paperCut = paperCut;
    }

    @Override
    public void setExtra(String extra) {
        this.extra = extra;
    }

    @Override
    public void print(String name, String text, final IPrintManager.Callback callback) {
        if (!isBound) {
            callback.call(SERVICE_NOT_BOUND);
            return;
        }

        String localeLang;

        switch (language) {
            default:
            case "KOR":
                localeLang = "ko";
                break;
            case "KAZ":
            case "RUS":
                localeLang = "ru";
                break;
            case "CHI":
                localeLang = "zh";
                break;
            case "JPN":
                localeLang = "jp";
                break;
            case "POR":
                localeLang = "pt";
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, name);
        bundle.putString(ADDRESS, address);
        bundle.putInt(PRINT_BRIGHT, printBright);
        bundle.putInt(PRINT_SPEED, printSpeed);
        bundle.putInt(PRINT_PAPER_SIZE, paperSize);
        bundle.putInt(PRINT_PAPER_CUT, paperCut);
        bundle.putString(PRINT_LANGUAGE, localeLang);
        bundle.putString(PRINT_DATA, text);
        bundle.putBoolean(PRINT_LOG, true);
        sendMessage(MSG_PRINT, bundle, callback::call);
    }

    @Override
    public void print(String name, Bitmap data, final IPrintManager.Callback callback) {
        if (!isBound) {
            callback.call(SERVICE_NOT_BOUND);
            return;
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, name);
        bundle.putString(ADDRESS, address);

        bundle.putInt(PRINT_BRIGHT, printBright);
        bundle.putInt(PRINT_PAPER_SIZE, paperSize);
        bundle.putInt(PRINT_PAPER_CUT, paperCut);
        bundle.putString(EXTRA, extra);

        ByteArrayOutputStream bs = new ByteArrayOutputStream();
        data.compress(Bitmap.CompressFormat.PNG, 100, bs);
        bundle.putByteArray(PRINT_DATA_BYTE, bs.toByteArray());

        bundle.putBoolean(PRINT_LOG, true);

        Log.d(TAG, "[PRINT][DeviceManagerService] send data: " + bs.size() + " bytes");
        sendMessage(MSG_PRINT, bundle, callback::call);
    }

    public void connect(String name, final IPrintManager.Callback callback) {
        if (!isBound) {
            callback.call(SERVICE_NOT_BOUND);
            return;
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, name);
        bundle.putString(ADDRESS, address);
        sendMessage(MSG_CONNECT, bundle, callback::call);
    }

    public void close(String name) {
        if (!isBound) {
            return;
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, name);
        sendMessage(MSG_CLOSE, bundle, null);
    }

    @Override
    public void getStatus(String name, final IPrintManager.Callback callback) {
        if (!isBound) {
            return;
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, name);
        sendMessage(MSG_STATUS, bundle, result -> {
            Log.d(TAG, "Status: paper empty? " + ((result & STATUS_PAPER_EMPTY) != 0 ? "true" : "false") +
                    ", cover opened? " + ((result & STATUS_COVER_OPEN) != 0 ? "true" : "false"));

            if (callback != null) {
                callback.call(result);
            }
        });
    }

    // ext 모듈에서 write 가 되기 전에 바이트 배열을 초기화 시키는 경우가 있어 복사
    private byte[] copyArray(byte[] src) {
        byte[] dst = new byte[src.length];
        System.arraycopy(src, 0, dst, 0, dst.length);
        return dst;
    }

    @Override
    public void setTime(int year, int month, int day, int hour, int min, int sec, final ISystemSettingService.Callback callback) {
        if (!isBound) {
            callback.call(SERVICE_NOT_BOUND);
            return;
        }

        String extra = String.format(Locale.getDefault(), "%d:%d:%d:%d:%d:%d", year, month, day, hour, min, sec);
        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, DEVICE_CENTERM_SYSTEM);
        bundle.putString(EXTRA, extra);
        sendMessage(MSG_SET_TIME, bundle, callback::call);
    }

    @Override
    public void powerReboot(final ISystemSettingService.Callback callback) {
        if (!isBound) {
            callback.call(SERVICE_NOT_BOUND);
            return;
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, DEVICE_CENTERM_SYSTEM);
        sendMessage(MSG_POWER_REBOOT, bundle, callback::call);
    }

    @Override
    public void getBondedDevices(final BluetoothCallback callback) {
        if (!isBound) {
            callback.call(null, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, DEVICE_BLUETOOTH);
        sendMessageBT(MSG_BT_DEVICES, bundle, callback::call);
    }

    @Override
    public void readBarcode(String device, String message, boolean onlyDataMatrix, boolean useFrontCamera, boolean useFlash, ICameraService.BarcodeCallback callback) {
        if (!isBound) {
            callback.onBarcodeRead(-1, null);
            return;
        }

        String deviceName;

        switch (device) {
            case "ml":
                deviceName = DEVICE_ML;
                break;
            case "k9":
            default:
                deviceName = DEVICE_CENTERM_SYSTEM;
                break;
        }

        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, deviceName);
        bundle.putString(MESSAGE_DATA, message);
        bundle.putBoolean(ONLY_DATA_MATRIX, onlyDataMatrix);
        bundle.putBoolean(USE_FRONT_CAMERA, useFrontCamera);
        bundle.putBoolean(USE_FLASH, useFlash);
        sendMessageReceiveMessage(MSG_CAMERA_BARCODE, bundle, callback::onBarcodeRead);
    }

    private class DeviceManagerConnection implements ServiceConnection {
        @Override
        public void onServiceConnected(ComponentName component, IBinder binder) {
            messenger = new Messenger(binder);
            isBound = true;
            hello();
        }

        @Override
        public void onServiceDisconnected(ComponentName component) {
            messenger = null;
            isBound = false;
        }
    }

    private static class IncomingHandler extends Handler {
        private final DeviceManagerService context;

        IncomingHandler(DeviceManagerService context) {
            this.context = context;
        }

        @Override
        public void handleMessage(Message msg) {
            IServiceCallback callback;
            IServiceBTCallback btCallback;
            Bundle bundle;
            ArrayList<String> address;
            ArrayList<String> names;

            switch (msg.what) {
                case MSG_HELLO:
                    Log.d(TAG, "Connected");
                    break;
                case MSG_PRINT:
                case MSG_CONNECT:
                case MSG_STATUS:
                case MSG_SET_TIME:
                    callback = context.callbackMap.get(msg.arg1);

                    if (callback != null) {
                        callback.call(msg.arg2);
                        context.callbackMap.remove(msg.arg1);
                    }
                    break;
                case MSG_BT_DEVICES:
                    btCallback = context.btCallbackMap.get(msg.arg1);
                    bundle = msg.getData();
                    address = bundle.getStringArrayList("address");
                    names = bundle.getStringArrayList("names");
                    if (btCallback != null) {
                        btCallback.call(address, names);
                        context.btCallbackMap.remove(msg.arg1);
                    }
                    break;
                case MSG_CAMERA_BARCODE:
                    IServiceMessageCallback messageCallback = context.messageCallbackMap.get(msg.arg1);
                    int result = msg.arg2;
                    bundle = msg.getData();
                    String code = bundle.getString(MESSAGE_DATA);

                    if (messageCallback != null) {
                        messageCallback.call(result, code);
                        context.messageCallbackMap.remove(msg.arg1);
                    }
                    break;
            }
        }
    }
}

