package com.ibexlab.simple_pay_api.serviceprint;

import android.graphics.Bitmap;

import java.util.ArrayList;

public interface IPrintManager {
    void setPrintBright(int bright);

    void setPrintSpeed(int speed);

    void setPaperSize(int paperSize);

    void setPortSpeed(int portSpeed);

    void setPaperCut(int paperCut);

    void setExtra(String extra);

    void print(String name, String text, Callback callback);

    void print(String name, Bitmap data, Callback callback);

    void connect(String name, Callback callback);

    void close(String name);

    void getStatus(String name, Callback callback);

    void getBondedDevices(BluetoothCallback callback);

    void setAddress(String address);

    interface Callback {
        void call(int result);
    }

    interface BluetoothCallback {
        void call(ArrayList<String> address, ArrayList<String> names);
    }
}