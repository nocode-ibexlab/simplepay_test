package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import com.ibexlab.simple_pay_api.R;
import com.ibexlab.simple_pay_api.device.DeviceManager;

public class BarcodeActivity extends Activity implements BarcodeCallback {
    private static final String TAG = BarcodeActivity.class.getSimpleName();
    public static final String BARCODE_PREFS_FILENAME = "BarcodePrefs";
    private static final String PREF_FLASH = "flash";

    private CameraSource cameraSource;
    private CameraSourcePreview preview;
    private GraphicOverlay overlay;
    private SharedPreferences prefs;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_barcode);
        CheckBox flashView = findViewById(R.id.flash);
        TextView messageView = findViewById(R.id.message);
        preview = findViewById(R.id.preview);
        overlay = findViewById(R.id.overlay);

        String message = getIntent().getStringExtra("message");
        boolean onlyDataMatrix = getIntent().getBooleanExtra("onlyDataMatrix", false);
        int previewHeight = getIntent().getIntExtra("previewHeight", 0);
        String focusMode = getIntent().getStringExtra("focusMode");
        boolean useFrontCamera = getIntent().getBooleanExtra("useFrontCamera", false);
        boolean useFlash = getIntent().getBooleanExtra("useFlash", true);
        prefs = getSharedPreferences(BARCODE_PREFS_FILENAME, Context.MODE_PRIVATE);
        boolean flash = prefs.getBoolean(PREF_FLASH, false) && useFlash;
        Log.d(TAG, "[onCreate]message=" + message + " onlyDataMatrix=" + onlyDataMatrix + " flash=" + flash);

        if (message != null) {
            messageView.setText(message);
        }

        flashView.setChecked(flash);
        flashView.setVisibility(useFlash ? View.VISIBLE : View.GONE);
        overlay.setFocusBox(findViewById(R.id.focusBox));
        preview.setCallback(this);
        cameraSource = new CameraSource(this, overlay, flash, previewHeight, focusMode);
        cameraSource.useFrontCamera(useFrontCamera);
        cameraSource.useFlash(useFlash);
        cameraSource.setMachineLearningFrameProcessor(new BarcodeImageProcessor(this, onlyDataMatrix, this));

        findViewById(R.id.cancel).setOnClickListener(v -> sendResult(0, ""));

        flashView.setOnClickListener(v -> {
            if (!useFlash) {
                return;
            }

            boolean value = ((CheckBox) v).isChecked();
            prefs.edit().putBoolean(PREF_FLASH, value).apply();
            cameraSource.setFlash(value);
        });
    }

    @Override
    protected void onResume() {
        super.onResume();

        if (cameraSource != null) {
            preview.start(cameraSource, overlay);
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        preview.stop();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        preview.release();
    }

    @Override
    public void onBackPressed() {
        // do nothing
    }

    @Override
    public void onBarcodeFound(int result, String code) {
        Log.i(TAG, "onBarcodeFound result=" + result + " code=" + code);
        sendResult(result, code);
    }

    private void sendResult(int result, String code) {
        Intent intent = new Intent();
        intent.setAction(DeviceManager.ACTION_BARCODE);
        intent.putExtra("what", getIntent().getIntExtra("what", 0));
        intent.putExtra("token", getIntent().getIntExtra("token", 0));
        intent.putExtra("result", result);
        intent.putExtra("code", code);
        sendBroadcast(intent);
        finish();
    }
}
