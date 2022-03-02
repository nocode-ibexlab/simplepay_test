package com.ibexlab.simple_pay_api.servicegeneral;

public interface ICameraService {
    public void readBarcode(String device, String message, boolean onlyDataMatrix, boolean useFrontCamera, boolean useFlash, BarcodeCallback callback);

    interface BarcodeCallback {
        void onBarcodeRead(int result, String code);
    }
}