package com.ibexlab.simple_pay_api.device.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.Log;

public class BitmapUtil {
    private static final String TAG = BitmapUtil.class.getSimpleName();

    public static Bitmap POS_getBinaryBMP_Bitmap(Bitmap bitmap) {
        return format_K_threshold(bitmap);
    }

    public static Bitmap format_K_threshold(Bitmap mBitmap) {
        int grayTotal = 0;
        int grayAverage;
        int grayCnt = 1;
        int gray;
        int ySize = mBitmap.getHeight();
        int xSize = mBitmap.getWidth();
        int i, j;

        for (i = 0; i < ySize; ++i) {
            for (j = 0; j < xSize; ++j) {
                gray = mBitmap.getPixel(j, i) & 0xFF;
                grayTotal += gray;
                ++grayCnt;
            }
        }

        grayAverage = grayTotal / grayCnt;

        for (i = 0; i < ySize; i++) {
            for (j = 0; j < xSize; j++) {
                gray = mBitmap.getPixel(j, i) & 0xFF;

                if (gray > grayAverage) {
                    mBitmap.setPixel(j, i, Color.WHITE);
                } else {
                    mBitmap.setPixel(j, i, Color.BLACK);
                }
            }
        }

        return mBitmap;
    }

    public static Bitmap POS_getBinaryBMP_monoBitmap(Bitmap bitmap, int width) {
        width = (width + 7) / 8 * 8;
        int var4 = (bitmap.getHeight() * width / bitmap.getWidth() + 7) / 8 * 8;
        Bitmap var5 = bitmap;

        if (bitmap.getWidth() != width) {
            var5 = resizeImage(bitmap, width, var4);
        }

        bitmap = toGrayscale(var5);
        return bitmap;
    }

    public static Bitmap resizeImage(Bitmap paramBitmap, int paramInt1, int paramInt2) {
        int i = paramBitmap.getWidth();
        int j = paramBitmap.getHeight();
        float f1 = (float) paramInt1 / i;
        float f2 = (float) paramInt2 / j;
        Matrix localMatrix = new Matrix();
        localMatrix.postScale(f1, f2);
        return Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
    }

    public static Bitmap toGrayscale(Bitmap paramBitmap) {
        int i = paramBitmap.getHeight();
        Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), i, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        Paint localPaint = new Paint();
        ColorMatrix localColorMatrix = new ColorMatrix();
        localColorMatrix.setSaturation(0.0F);
        localPaint.setColorFilter(new ColorMatrixColorFilter(localColorMatrix));
        localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
        return localBitmap;
    }

    // 아래 toGray(), toMono() 로 최적의 품질을 내는 value 값을 구해서 적용
    public static Bitmap toMono(Bitmap src) {
        Bitmap bitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(grayMatrix(0.7f)));
        canvas.drawBitmap(src, 0, 0, paint);
        paint.setColorFilter(new ColorMatrixColorFilter(thresholdMatrix(1)));
        canvas.drawBitmap(bitmap, 0, 0, paint);
        return bitmap;
    }

    public static Bitmap toGray(Bitmap src, float value) {
        Log.d(TAG, "toGray: " + value);
        Bitmap bitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(grayMatrix(value)));
        canvas.drawBitmap(src, 0, 0, paint);
        return bitmap;
    }

    public static Bitmap toMono(Bitmap src, float value) {
        Log.d(TAG, "toMono: " + value);
        Bitmap bitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(thresholdMatrix(value)));
        canvas.drawBitmap(src, 0, 0, paint);
        return bitmap;
    }

    // matrix that changes picture into gray scale
    // 0.5 (어두워짐) < value < 50 (밝아짐), 0.6 ~ 2 사이가 적당하며, 출력해 보니 0.7 정도가 좋음
    private static ColorMatrix grayMatrix(float value) {
        final float R = 0.2989f, G = 0.5870f, B = 0.1140f;

        return new ColorMatrix(new float[]{
                R * value, G * value, B * value, 0, 0,
                R * value, G * value, B * value, 0, 0,
                R * value, G * value, B * value, 0, 0,
                0, 0, 0, 1, 0
        });
    }

    // matrix that changes gray scale picture into black and white at given threshold.
    // It works this way:
    // The matrix after multiplying returns negative values for colors darker than threshold
    // and values bigger than 255 for the ones higher.
    // Because the final result is always trimmed to bounds (0..255) it will result in bitmap made of black and white pixels only
    // https://stackoverflow.com/questions/22731653/android-real-time-black-white-threshold-image?answertab=oldest#tab-top
    // 0 (밝아짐) < value <= 1 (어두워짐), 1로 고정
    private static ColorMatrix thresholdMatrix(float value) {
        return new ColorMatrix(new float[]{
                85, 85, 85, 0, -255 * 128 * value,
                85, 85, 85, 0, -255 * 128 * value,
                85, 85, 85, 0, -255 * 128 * value,
                0, 0, 0, 1, 0
        });
    }
}

