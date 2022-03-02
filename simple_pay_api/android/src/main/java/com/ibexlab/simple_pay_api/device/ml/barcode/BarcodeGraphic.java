package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Log;

import com.google.mlkit.vision.barcode.common.Barcode;

/**
 * Graphic instance for rendering Barcode position in an overlay view.
 */
public class BarcodeGraphic extends GraphicOverlay.Graphic {
    private static final String TAG = BarcodeGraphic.class.getSimpleName();
    private static final int COLOR_STROKE = 0xFFFFFFFF;
    private static final float STROKE_WIDTH = 4.0f;

    private final Paint paintStroke;
    private final Barcode barcode;

    BarcodeGraphic(GraphicOverlay overlay, Barcode barcode) {
        super(overlay);
        this.barcode = barcode;

        paintStroke = new Paint();
        paintStroke.setColor(COLOR_STROKE);
        paintStroke.setStyle(Paint.Style.STROKE);
        paintStroke.setStrokeWidth(STROKE_WIDTH);
    }

    @Override
    public void draw(Canvas canvas) {
        if (barcode == null) {
            Log.w(TAG, "Attempting to draw a null barcode");
            return;
        }

        RectF rect = translate(barcode.getBoundingBox());
        canvas.drawRect(rect, paintStroke);
    }
}
