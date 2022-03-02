package com.ibexlab.simple_pay_api.device.ml;

import android.content.Context;
import android.content.Intent;

import com.ibexlab.simple_pay_api.device.ml.barcode.BarcodeActivity;
import com.ibexlab.simple_pay_api.device.util.ISender;

/**
 * Machine Learning 관련 장치 관리자
 */
public class MlDeviceManager {
    private final ISender sender;

    public MlDeviceManager(Context context) {
        sender = (ISender) context;
    }

    public void readBarcode(int what, int token, String message, boolean onlyDataMatrix, boolean useFrontCamera, boolean useFlash) {
        Context context = (Context) sender;
        Intent intent = new Intent(context, BarcodeActivity.class);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.putExtra("what", what);
        intent.putExtra("token", token);
        intent.putExtra("onlyDataMatrix", onlyDataMatrix);
        intent.putExtra("useFrontCamera", useFrontCamera);
        intent.putExtra("useFlash", useFlash);

        if (message != null) {
            intent.putExtra("message", message);
        }

        context.startActivity(intent);
    }

    public void onBarcodeRead(Intent intent) {
        int what = intent.getIntExtra("what", 0);
        int token = intent.getIntExtra("token", 0);
        int result = intent.getIntExtra("result", 0);
        String code = intent.getStringExtra("code");
        sender.sendMessage(what, token, result, code);
    }
}
