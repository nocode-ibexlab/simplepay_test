package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;

import java.io.IOException;

/**
 * Preview the camera image in the screen.
 */
public class CameraSourcePreview extends ViewGroup {
    private static final String TAG = CameraSourcePreview.class.getSimpleName();

    private final Context context;
    private final SurfaceView surfaceView;
    private boolean startRequested;
    private boolean surfaceAvailable;
    private CameraSource cameraSource;
    private GraphicOverlay overlay;
    private BarcodeCallback callback;

    public CameraSourcePreview(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.context = context;
        startRequested = false;
        surfaceAvailable = false;

        surfaceView = new SurfaceView(context);
        surfaceView.getHolder().addCallback(new SurfaceCallback());
        addView(surfaceView);
    }

    public void setCallback(BarcodeCallback callback) {
        this.callback = callback;
    }

    private void start(CameraSource cameraSource) {
        this.cameraSource = cameraSource;

        if (this.cameraSource != null) {
            startRequested = true;
            startIfReady();
        }
    }

    public void start(CameraSource cameraSource, GraphicOverlay overlay) {
        this.overlay = overlay;
        start(cameraSource);
    }

    public void stop() {
        if (cameraSource != null) {
            cameraSource.stop();
        }
    }

    public void release() {
        if (cameraSource != null) {
            cameraSource.release();
            cameraSource = null;
        }

        surfaceView.getHolder().getSurface().release();
    }

    private void startIfReady() {
        if (startRequested && surfaceAvailable) {
            startRequested = false;

            try {
                cameraSource.start(surfaceView.getHolder());
            } catch (IOException | SecurityException e) {
                Log.w(TAG, "Could not start camera source.", e);
                cameraSource.release();
                callback.onBarcodeFound(-2, "");
                return;
            }

            requestLayout();

            if (overlay != null) {
                Size size = cameraSource.getPreviewSize();
                int min = Math.min(size.getWidth(), size.getHeight());
                int max = Math.max(size.getWidth(), size.getHeight());
                boolean isImageFlipped = cameraSource.isCameraFacing();

                if (isPortraitMode()) {
                    // Swap width and height sizes when in portrait, since it will be rotated by 90 degrees.
                    // The camera preview and the image being processed have the same size.
                    overlay.setImageSourceInfo(min, max, isImageFlipped);
                } else {
                    overlay.setImageSourceInfo(max, min, isImageFlipped);
                }

                overlay.clear();
            }
        }
    }

    private class SurfaceCallback implements SurfaceHolder.Callback {
        @Override
        public void surfaceCreated(SurfaceHolder surface) {
            surfaceAvailable = true;
            startIfReady();
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surface) {
            surfaceAvailable = false;
        }

        @Override
        public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        }
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int w = 320;
        int h = 240;

        if (cameraSource != null) {
            Size size = cameraSource.getPreviewSize();

            if (size != null) {
                w = size.getWidth();
                h = size.getHeight();
            }
        }

        if (isPortraitMode()) {
            int tmp = w;
            w = h;
            h = tmp;
        }

        float previewAspectRatio = (float) w / h;
        int layoutWidth = right - left;
        int layoutHeight = bottom - top;
        float layoutAspectRatio = (float) layoutWidth / layoutHeight;

        if (previewAspectRatio > layoutAspectRatio) {
            // The preview input is wider than the layout area. Fit the layout height and crop
            // the preview input horizontally while keep the center.
            int horizontalOffset = (int) (previewAspectRatio * layoutHeight - layoutWidth) / 2;
            surfaceView.layout(-horizontalOffset, 0, layoutWidth + horizontalOffset, layoutHeight);
        } else {
            // The preview input is taller than the layout area. Fit the layout width and crop the preview
            // input vertically while keep the center.
            int verticalOffset = (int) (layoutWidth / previewAspectRatio - layoutHeight) / 2;
            surfaceView.layout(0, -verticalOffset, layoutWidth, layoutHeight + verticalOffset);
        }

        startIfReady();
    }

    private boolean isPortraitMode() {
        int orientation = context.getResources().getConfiguration().orientation;

        if (orientation == Configuration.ORIENTATION_LANDSCAPE) {
            return false;
        }

        if (orientation == Configuration.ORIENTATION_PORTRAIT) {
            return true;
        }

        Log.d(TAG, "isPortraitMode returning false by default");
        return false;
    }
}
