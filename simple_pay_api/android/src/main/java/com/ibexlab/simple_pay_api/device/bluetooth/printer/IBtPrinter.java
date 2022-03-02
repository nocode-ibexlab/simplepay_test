package com.ibexlab.simple_pay_api.device.bluetooth.printer;

import com.ibexlab.simple_pay_api.device.util.IDeviceHandler;

public interface IBtPrinter extends IDeviceHandler {
    int print(byte[] data);
}

