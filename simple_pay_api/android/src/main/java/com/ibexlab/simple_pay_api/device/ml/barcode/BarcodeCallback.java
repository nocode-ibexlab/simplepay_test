package com.ibexlab.simple_pay_api.device.ml.barcode;

public interface BarcodeCallback {
    void onBarcodeFound(int result, String code);
}
