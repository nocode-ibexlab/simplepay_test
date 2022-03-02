package com.ibexlab.simple_pay_api.device.util;

import java.util.ArrayList;

public interface ISender {
    void sendMessage(int what, int token, int result);

    void sendMessage(int what, int token, int result, String msg);

    void sendMessage(String deviceName, byte[] data);

    void sendMessage(int what, int token, String deviceName, ArrayList<String> address, ArrayList<String> names);
}
