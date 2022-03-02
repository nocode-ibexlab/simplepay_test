package com.ibexlab.simple_pay_api.device;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

import com.ibexlab.simple_pay_api.device.bluetooth.BtDeviceManager;
import com.ibexlab.simple_pay_api.device.centerm.CentermDeviceManager;
import com.ibexlab.simple_pay_api.device.ml.MlDeviceManager;
import com.ibexlab.simple_pay_api.device.util.BitmapUtil;
import com.ibexlab.simple_pay_api.device.util.IResult;
import com.ibexlab.simple_pay_api.device.util.ISender;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

public class DeviceManager extends Service implements ISender {
    private static final String TAG = DeviceManager.class.getSimpleName();
    private static final String ACTION_OFFLINE_PIN = "ACTION_OFFLINE_PIN";
    public static final String ACTION_BARCODE = "ACTION_BARCODE";

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
    private static final String PORT_SPEED = "portSpeed";
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
    public static final String DEVICE_CENTERM_CARD = "centerm_card";
    public static final String DEVICE_CENTERM_SYSTEM = "centerm_system";
    public static final String DEVICE_ML = "ml";

    // 0 미만은 에러로, 0 이상은 정상 처리로 함
    public static final int RSP_OK = 0;
    public static final int RSP_FAIL = -1;
    public static final int RSP_DEVICE_NOT_FOUND = -2;
    public static final int RSP_BT_PARING_FAILED = -3;
    private static final int RSP_DEVICE_NULL = -4;

    public static final int STATUS_PAPER_EMPTY = 1;
    public static final int STATUS_COVER_OPEN = 2;
    public static final int STATUS_ERROR = 4;

    private static final int TYPE_PRINTER = 0;
    private static final int TYPE_BT = 0;
    private static final int TYPE_CENTERM = 3;

    private static final boolean SAVE_BITMAP = false;

    private Messenger replyTo;
    private Messenger messenger;
    private BtDeviceManager btDeviceManager;
    private CentermDeviceManager centermDeviceManager;
    private MlDeviceManager mlDeviceManager;
    private BroadcastReceiver receiver;

    @Override
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind");

        if (messenger == null) {
            synchronized (DeviceManager.class) {
                if (messenger == null) {
                    HandlerThread thread = new HandlerThread(TAG);
                    thread.start();
                    messenger = new Messenger(new DeviceManagerHandler(this, thread.getLooper()));
                    init();
                }
            }
        }

        return messenger.getBinder();
    }

    @Override
    public void onCreate() {
        super.onCreate();

        receiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if (ACTION_OFFLINE_PIN.equals(intent.getAction())) {
                    if (centermDeviceManager == null) {
                        return;
                    }

                    String pin = intent.getStringExtra("pin");
                    centermDeviceManager.enterOfflinePin(pin);
                } else if (ACTION_BARCODE.equals(intent.getAction())) {
                    if (mlDeviceManager == null) {
                        return;
                    }

                    mlDeviceManager.onBarcodeRead(intent);
                }
            }
        };

        IntentFilter filter = new IntentFilter();
        filter.addAction(ACTION_OFFLINE_PIN);
        filter.addAction(ACTION_BARCODE);
        registerReceiver(receiver, filter);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(receiver);
    }

    private void init() {
        btDeviceManager = new BtDeviceManager(this);
        btDeviceManager.init();

        if (CentermDeviceManager.support(this)) {
            centermDeviceManager = new CentermDeviceManager(this);
        }

        mlDeviceManager = new MlDeviceManager(this);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        Log.d(TAG, "onUnbind");
        destroy();
        return super.onUnbind(intent);
    }

    private void destroy() {
        btDeviceManager.destroy();

        if (centermDeviceManager != null) {
            centermDeviceManager.destroy();
        }
    }

    @Override
    public void sendMessage(int what, int token, int result) {
        Message message = Message.obtain(null, what, token, result);

        if (replyTo != null) {
            try {
                replyTo.send(message);
            } catch (Throwable e) {
                Log.e(TAG, "sendMessage", e);
            }
        }
    }

    @Override
    public void sendMessage(int what, int token, int result, String msg) {
        Message message = Message.obtain(null, what, token, result);
        Bundle bundle = new Bundle();
        bundle.putString(MESSAGE_DATA, msg);
        message.setData(bundle);

        if (replyTo != null) {
            try {
                replyTo.send(message);
            } catch (Throwable e) {
                Log.e(TAG, "sendMessage", e);
            }
        }
    }

    @Override
    public void sendMessage(String deviceName, byte[] data) {
        Message message = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, deviceName);
        message.setData(bundle);

        if (replyTo != null) {
            try {
                replyTo.send(message);
            } catch (Throwable e) {
                Log.e(TAG, "sendMessage", e);
            }
        }
    }

    @Override
    public void sendMessage(int what, int token, String deviceName, ArrayList<String> address, ArrayList<String> names) {
        Message message = Message.obtain(null, what, token, RSP_OK);
        Bundle bundle = new Bundle();
        bundle.putString(DEVICE_NAME, deviceName);

        bundle.putStringArrayList("address", address);
        bundle.putStringArrayList("names", names);

        message.setData(bundle);

        if (replyTo != null) {
            try {
                replyTo.send(message);
            } catch (Throwable e) {
                Log.e(TAG, "sendMessage", e);
            }
        }
    }

    private static int getDeviceType(String name) {
        switch (name) {
            case DEVICE_CENTERM_PRINTER:
            case DEVICE_CENTERM_IMAGE_PRINTER:
            default:
                return TYPE_PRINTER;
        }
    }

    private static int getConnectionType(String name) {
        switch (name) {
            case DEVICE_CENTERM_PRINTER:
            case DEVICE_CENTERM_IMAGE_PRINTER:
            case DEVICE_CENTERM_SYSTEM:
                return TYPE_CENTERM;
            default:
                return TYPE_BT;
        }
    }

    private static class DeviceManagerHandler extends Handler {
        private final DeviceManager context;
        private final ISender sender;

        DeviceManagerHandler(DeviceManager context, Looper looper) {
            super(looper);
            this.context = context;
            this.sender = context;
        }

        @Override
        public void handleMessage(final Message msg) {
            //gmlwnd : Device Manager에서 메시지를 수신하는 부분
            // arg1은 클라이언트의 요청을 구분하는 토큰으로 사용되어 클라이언트에서 받은대로 응답으로 돌려줌
            final int token = msg.arg1;
            Bundle bundle = msg.getData();
            String name = bundle.getString(DEVICE_NAME);
            int portSpeed = bundle.getInt(PORT_SPEED);
            String address = bundle.getString(ADDRESS);
            int bright = bundle.getInt(PRINT_BRIGHT);
            int printSpeed = bundle.getInt(PRINT_SPEED);
            int paperSize = bundle.getInt(PRINT_PAPER_SIZE);
            int paperCut = bundle.getInt(PRINT_PAPER_CUT);
            boolean isLogging = bundle.getBoolean(PRINT_LOG);
            String language = bundle.getString(PRINT_LANGUAGE, "ko");
            String extra = bundle.getString(EXTRA);
            boolean onlyDataMatrix = bundle.getBoolean(ONLY_DATA_MATRIX);
            String message = bundle.getString(MESSAGE_DATA);
            boolean useFrontCamera = bundle.getBoolean(USE_FRONT_CAMERA);
            boolean useFlash = bundle.getBoolean(USE_FLASH);
            byte[] data, cmd;

            switch (msg.what) {
                case MSG_HELLO:
                    Log.d(TAG, "hello");
                    context.replyTo = msg.replyTo;
                    sender.sendMessage(MSG_HELLO, token, RSP_OK);
                    break;
                case MSG_PRINT:
                    Log.d(TAG, "[PRINT][DeviceManager] data received");

                    if (name == null) {
                        sender.sendMessage(MSG_PRINT, token, RSP_DEVICE_NULL);
                        return;
                    }

                    switch (name) {
                        case DeviceManager.DEVICE_CENTERM_IMAGE_PRINTER: {
                            byte[] printData = bundle.getByteArray(PRINT_DATA_BYTE);

                            if (printData == null) {
                                sender.sendMessage(MSG_PRINT, token, RSP_FAIL);
                                return;
                            }

                            float extraValue = -1;

                            if (extra != null) { // extra 가 있는 경우 출력 품질을 디버깅하기 위함
                                try {
                                    extraValue = Float.parseFloat(extra);
                                } catch (NumberFormatException e) {
                                    e.printStackTrace();
                                }
                            }

                            Bitmap bmp = BitmapFactory.decodeByteArray(printData, 0, printData.length);
                            Bitmap mono;

                            if (extraValue > 0) { // extra 가 정상적으로 파싱됨
                                Bitmap gray = BitmapUtil.toGray(bmp, extraValue);
                                mono = BitmapUtil.toMono(gray, 1);
                                saveBitmap(name, bmp);
                                saveBitmap(name + "_gray", gray);
                                saveBitmap(name + "_mono", mono);
                            } else {
                                mono = BitmapUtil.toMono(bmp);
                            }

                            ByteArrayOutputStream bs = new ByteArrayOutputStream();
                            mono.compress(Bitmap.CompressFormat.PNG, 100, bs);
                            data = bs.toByteArray();
                            break;
                        }
                        case DeviceManager.DEVICE_CENTERM_PRINTER:
                        default: {
                            String printData = bundle.getString(PRINT_DATA);

                            if (printData == null) {
                                sender.sendMessage(MSG_PRINT, token, RSP_FAIL);
                                return;
                            }

                            data = printData.getBytes();
                            break;
                        }
                    }

                    print(name, portSpeed, language, paperCut, address, data, result -> {
                        if (result < 0) {
                            Log.e(TAG, "print error: " + result);
                        }

                        sender.sendMessage(MSG_PRINT, token, result);
                    });
                    break;
                case MSG_CONNECT:
                    if (name == null) {
                        sender.sendMessage(MSG_CONNECT, token, RSP_DEVICE_NULL);
                        return;
                    }

                    connect(name, portSpeed, language, address, result -> {
                        if (result < 0) {
                            Log.e(TAG, "connect error: " + result);
                        }

                        sender.sendMessage(MSG_CONNECT, token, result);
                    });
                    break;
                case MSG_CLOSE:
                    if (name != null) {
                        close(name);
                    }
                    break;
                case MSG_STATUS:
                    if (name == null) {
                        sender.sendMessage(MSG_STATUS, token, RSP_DEVICE_NULL);
                        return;
                    }

                    getStatus(name, portSpeed, result -> sender.sendMessage(MSG_STATUS, token, result));
                    break;
                case MSG_SET_TIME:
                    if (name == null) {
                        sender.sendMessage(MSG_SET_TIME, token, RSP_DEVICE_NULL);
                        return;
                    }

                    sender.sendMessage(MSG_SET_TIME, token, setTime(name, extra) ? RSP_OK : RSP_FAIL);
                    break;
                case MSG_POWER_REBOOT:
                    if (name == null) {
                        sender.sendMessage(MSG_POWER_REBOOT, token, RSP_DEVICE_NULL);
                        return;
                    }

                    sender.sendMessage(MSG_POWER_REBOOT, token, powerReboot(name) ? RSP_OK : RSP_FAIL);
                    break;
                case MSG_BT_DEVICES:
                    if (name == null) {
                        sender.sendMessage(MSG_BT_DEVICES, token, RSP_DEVICE_NULL);
                        return;
                    }
                    context.btDeviceManager.getBondedDevices(MSG_BT_DEVICES, token);
                    break;

                case MSG_CAMERA_BARCODE:
                    if (name == null) {
                        sender.sendMessage(MSG_CAMERA_BARCODE, token, RSP_DEVICE_NULL, null);
                        return;
                    }

                    readBarcode(MSG_CAMERA_BARCODE, token, name, message, onlyDataMatrix, useFrontCamera, useFlash);
                    break;
            }
        }

        private void print(String name, int portSpeed, String language, int paperCut, String address, byte[] data,
                           IResult result) {
            Log.d(TAG, "[PRINT][DeviceManager] print");

            switch (getConnectionType(name)) {
                case TYPE_CENTERM:
                    if (context.centermDeviceManager != null) {
                        if (DEVICE_CENTERM_IMAGE_PRINTER.equals(name)) {
                            context.centermDeviceManager.printImage(data, result);
                        } else {
                            context.centermDeviceManager.printText(new String(data), result);
                        }
                    } else {
                        Log.d(TAG, "Device not found");
                        result.set(-1);
                    }
                    break;
                case TYPE_BT:
                default:
                    context.btDeviceManager.print(name, data, result);
                    break;
            }
        }

        private void connect(String name, int portSpeed, String language, String address, final IResult connectResult) {
            Log.d(TAG, "[" + name + "] connect");

            switch (getDeviceType(name)) {
                case TYPE_PRINTER:
                    print(name, portSpeed, language, 0, address, null, connectResult);
                    break;
            }
        }

        private void close(String name) {
            Log.d(TAG, "[" + name + "] close");

            switch (getConnectionType(name)) {
                case TYPE_CENTERM:
                    break;
                case TYPE_BT:
                default:
                    context.btDeviceManager.close(name);
                    break;
            }
        }

        private void getStatus(String name, int portSpeed, IResult result) {
            Log.d(TAG, "[" + name + "] status");

            switch (getConnectionType(name)) {
                case TYPE_CENTERM:
                    if (context.centermDeviceManager != null) {
                        context.centermDeviceManager.getStatus(name, result);
                    } else {
                        Log.d(TAG, "Device not found");
                        result.set(-1);
                    }
                    break;
                default:
                    result.set(DeviceManager.RSP_OK);
                    break;
            }
        }

        private void saveBitmap(String filename, Bitmap bmp) {
            String path = Environment.getExternalStorageDirectory() + "/YoshopPOS/" + filename + ".png";
            FileOutputStream fos = null;

            try {
                fos = new FileOutputStream(path);
                bmp.compress(Bitmap.CompressFormat.PNG, 100, fos);
                fos.close();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        private boolean setTime(String name, String data) {
            Log.d(TAG, "[" + name + "] set time");

            if (data == null) {
                Log.w(TAG, "No data");
                return false;
            }

            String[] tok = data.split(":");

            if (tok.length < 6) {
                Log.w(TAG, "Insufficient data: " + data);
                return false;
            }

            try {
                int year = Integer.parseInt(tok[0]);
                int month = Integer.parseInt(tok[1]);
                int day = Integer.parseInt(tok[2]);
                int hour = Integer.parseInt(tok[3]);
                int min = Integer.parseInt(tok[4]);
                int sec = Integer.parseInt(tok[5]);

                if (getConnectionType(name) == TYPE_CENTERM && context.centermDeviceManager != null) {
                    return context.centermDeviceManager.setTime(year, month, day, hour, min, sec);
                } else {
                    Log.w(TAG, "[setTime]not implemented");
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }

            return false;
        }

        private boolean powerReboot(String name) {
            Log.d(TAG, "[" + name + "]power reboot");

            if (getConnectionType(name) == TYPE_CENTERM && context.centermDeviceManager != null) {
                return context.centermDeviceManager.powerReboot();
            } else {
                Log.w(TAG, "[powerReboot]not implemented");
            }

            return false;
        }

        private void readBarcode(int what, int token, String name, String message, boolean onlyDataMatrix, boolean useFrontCamera, boolean useFlash) {
            Log.d(TAG, "[" + name + "] start readBarcode");

            if (getConnectionType(name) == TYPE_CENTERM) {
                if (context.centermDeviceManager != null) {
                    context.centermDeviceManager.startFastScan(what, token);
                } else {
                    sender.sendMessage(what, token, -2, "");
                }
            } else if (DEVICE_ML.equals(name)) {
                context.mlDeviceManager.readBarcode(what, token, message, onlyDataMatrix, useFrontCamera, useFlash);
            } else {
                Log.w(TAG, "[barcodeReader]not implemented");
            }
        }
    }
}
