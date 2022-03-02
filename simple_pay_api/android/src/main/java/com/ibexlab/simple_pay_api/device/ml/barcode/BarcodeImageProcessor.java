package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.content.Context;
import android.util.Log;

import androidx.annotation.NonNull;

import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.barcode.BarcodeScanner;
import com.google.mlkit.vision.barcode.BarcodeScannerOptions;
import com.google.mlkit.vision.barcode.BarcodeScanning;
import com.google.mlkit.vision.barcode.common.Barcode;
import com.google.mlkit.vision.common.InputImage;

import java.util.List;

public class BarcodeImageProcessor extends BaseImageProcessor<List<Barcode>> {
    private static final String TAG = BarcodeImageProcessor.class.getSimpleName();

    private final BarcodeCallback callback;
    private final BarcodeScanner barcodeScanner;

    public BarcodeImageProcessor(Context context, boolean onlyDataMatrix, BarcodeCallback callback) {
        super(context);
        this.callback = callback;

        if (onlyDataMatrix) {
            barcodeScanner = BarcodeScanning.getClient(new BarcodeScannerOptions.Builder()
                    .setBarcodeFormats(Barcode.FORMAT_DATA_MATRIX)
                    .build());
        } else {
            barcodeScanner = BarcodeScanning.getClient();
        }
    }

    @Override
    public void stop() {
        super.stop();
        barcodeScanner.close();
    }

    @Override
    protected Task<List<Barcode>> detectInImage(InputImage image) {
        return barcodeScanner.process(image);
    }

    @Override
    protected void onSuccess(@NonNull List<Barcode> codes, @NonNull GraphicOverlay graphicOverlay) {
        for (Barcode code : codes) {
            if (code.getBoundingBox() == null) {
                continue;
            }

            Log.d(TAG, "Barcode found: " + code.getRawValue());
            graphicOverlay.add(new BarcodeGraphic(graphicOverlay, code));
            callback.onBarcodeFound(0, code.getRawValue());
            isDetected = true;
            return;
        }
    }

    @Override
    protected void onFailure(@NonNull Exception e) {
        Log.w(TAG, "Barcode detection failed " + e);
        callback.onBarcodeFound(-1, "");
    }
}
