package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.Manifest;
import android.content.Context;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.WindowManager;

import androidx.annotation.RequiresPermission;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.IdentityHashMap;
import java.util.List;

/**
 * Manages the camera and allows UI updates on top of it (e.g. overlaying extra Graphics or
 * displaying extra information). This receives preview frames from the camera at a specified rate,
 * sending those frames to child classes' detectors / classifiers as fast as it is able to process.
 */
public class CameraSource {
    private static final String TAG = CameraSource.class.getSimpleName();
    private static final int IMAGE_FORMAT = ImageFormat.NV21;
    private static final float REQUESTED_FPS = 15.0f;
    private static final String FOCUS_MODE_SCHEDULED = "scheduled";
    private static final String FOCUS_MODE_VIDEO = "video";
    private static final String FOCUS_MODE_PICTURE = "picture";
    /**
     * If the absolute difference between a preview size aspect ratio and a picture size aspect ratio
     * is less than this tolerance, they are considered to be the same aspect ratio.
     */
    private static final float ASPECT_RATIO_TOLERANCE = 0.01f;

    private final WindowManager windowManager;
    private final GraphicOverlay graphicOverlay;
    private final boolean flash;
    private final int targetHeight;
    private final String focusMode;
    private Camera camera;
    private Size previewSize;
    private int rotationDegrees;
    private Thread processingThread;
    private final FrameProcessingRunnable processingRunnable;
    private ImageProcessor frameProcessor;
    private final Object processorLock = new Object();
    private final Handler autoFocusHandler = new Handler();
    private boolean useFrontCamera;
    private boolean useFlash;

    /**
     * Map to convert between a byte array, received from the camera, and its associated byte buffer.
     * We use byte buffers internally because this is a more efficient way to call into native code
     * later (avoids a potential copy).
     *
     * <p><b>Note:</b> uses IdentityHashMap here instead of HashMap because the behavior of an array's
     * equals, hashCode and toString methods is both useless and unexpected. IdentityHashMap enforces
     * identity ('==') check on the keys.
     */
    private final IdentityHashMap<byte[], ByteBuffer> bytesToBuffer = new IdentityHashMap<>();

    public CameraSource(Context context, GraphicOverlay graphicOverlay, boolean flash, int targetHeight, String focusMode) {
        this.graphicOverlay = graphicOverlay;
        this.graphicOverlay.clear();
        this.flash = flash;
        this.targetHeight = targetHeight;
        this.focusMode = focusMode != null ? focusMode : FOCUS_MODE_SCHEDULED;
        windowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        processingRunnable = new FrameProcessingRunnable();
    }

    public void useFrontCamera(boolean useFrontCamera) {
        this.useFrontCamera = useFrontCamera;
    }

    public void useFlash(boolean useFlash) {
        this.useFlash = useFlash;
    }

    public void setFlash(boolean value) {
        if (camera == null || !useFlash) {
            return;
        }

        Camera.Parameters params = camera.getParameters();
        params.setFlashMode(value ? Camera.Parameters.FLASH_MODE_TORCH : Camera.Parameters.FLASH_MODE_OFF);
        camera.setParameters(params);
    }

    /**
     * Stops the camera and releases the resources of the camera and underlying detector.
     */
    public void release() {
        synchronized (processorLock) {
            stop();
            cleanScreen();

            if (frameProcessor != null) {
                frameProcessor.stop();
            }
        }
    }

    /**
     * Opens the camera and starts sending preview frames to the underlying detector. The supplied
     * surface holder is used for the preview so frames can be displayed to the user.
     *
     * @param surfaceHolder the surface holder to use for the preview frames
     * @throws IOException if the supplied surface holder could not be used as the preview display
     */
    @RequiresPermission(Manifest.permission.CAMERA)
    public synchronized CameraSource start(SurfaceHolder surfaceHolder) throws IOException {
        if (camera != null) {
            return this;
        }

        camera = createCamera();
        camera.setPreviewDisplay(surfaceHolder);
        camera.startPreview();

        if (focusMode != null && focusMode.startsWith(FOCUS_MODE_SCHEDULED)) {
            camera.autoFocus((success, camera) -> scheduleAutoFocus());
        }

        processingThread = new Thread(processingRunnable);
        processingRunnable.setActive(true);
        processingThread.start();
        return this;
    }

    private void scheduleAutoFocus() {
        String tail = focusMode.substring(FOCUS_MODE_SCHEDULED.length());
        int delayMillis = tail.length() > 0 ? Integer.parseInt(tail) : 800;

        autoFocusHandler.postDelayed(() -> {
            if (camera != null && processingThread != null) {
                camera.autoFocus((success, camera) -> scheduleAutoFocus());
            }
        }, delayMillis);
    }

    /**
     * Closes the camera and stops sending frames to the underlying frame detector.
     *
     * <p>This camera source may be restarted again by calling {@link #start(SurfaceHolder)}.
     *
     * <p>Call {@link #release()} instead to completely shut down this camera source and release the
     * resources of the underlying detector.
     */
    public synchronized void stop() {
        processingRunnable.setActive(false);

        if (processingThread != null) {
            try {
                // Wait for the thread to complete to ensure that we can't have multiple threads
                // executing at the same time (i.e., which would happen if we called start too
                // quickly after stop).
                processingThread.join();
            } catch (InterruptedException e) {
                Log.d(TAG, "Frame processing thread interrupted on release.");
            }

            processingThread = null;
        }

        if (camera != null) {
            camera.stopPreview();
            camera.setPreviewCallbackWithBuffer(null);

            try {
                camera.setPreviewDisplay(null);
            } catch (Exception e) {
                Log.e(TAG, "Failed to clear camera preview: " + e);
            }

            camera.release();
            camera = null;
        }

        // Release the reference to any image buffers, since these will no longer be in use.
        bytesToBuffer.clear();
    }

    /**
     * Returns the preview size that is currently in use by the underlying camera.
     */
    public Size getPreviewSize() {
        return previewSize;
    }

    public boolean isCameraFacing() {
        return useFrontCamera;
    }

    /**
     * Opens the camera
     *
     * @throws IOException if camera cannot be found or preview cannot be processed
     */
    private Camera createCamera() throws IOException {
        int cameraId = getIdForRequestedCamera();

        if (cameraId == -1) {
            throw new IOException("Could not find requested camera.");
        }

        Camera camera = Camera.open(cameraId);
        previewSize = selectPreviewSize(camera);

        if (previewSize == null) {
            throw new IOException("Could not find suitable preview size.");
        }

        Log.d(TAG, "Camera preview size: " + previewSize);
        int[] fps = selectPreviewFpsRange(camera);

        if (fps == null) {
            throw new IOException("Could not find suitable preview frames per second range.");
        }

        Camera.Parameters parameters = camera.getParameters();
        parameters.setPreviewSize(previewSize.getWidth(), previewSize.getHeight());
        parameters.setPreviewFpsRange(fps[Camera.Parameters.PREVIEW_FPS_MIN_INDEX], fps[Camera.Parameters.PREVIEW_FPS_MAX_INDEX]);
        parameters.setPreviewFormat(IMAGE_FORMAT);
        parameters.setFlashMode(flash && useFlash ? Camera.Parameters.FLASH_MODE_TORCH : Camera.Parameters.FLASH_MODE_OFF);
        setRotation(camera, parameters, cameraId);

        if (FOCUS_MODE_VIDEO.equals(focusMode) || FOCUS_MODE_PICTURE.equals(focusMode)) {
            String mode = FOCUS_MODE_VIDEO.equals(focusMode) ? Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO : Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE;

            if (parameters.getSupportedFocusModes().contains(mode)) {
                parameters.setFocusMode(mode);
            } else {
                Log.i(TAG, "Camera auto focus is not supported on this device.");
            }
        }

        camera.setParameters(parameters);

        // Four frame buffers are needed for working with the camera:
        //
        //   one for the frame that is currently being executed upon in doing detection
        //   one for the next pending frame to process immediately upon completing detection
        //   two for the frames that the camera uses to populate future preview images
        //
        // Through trial and error it appears that two free buffers, in addition to the two buffers
        // used in this code, are needed for the camera to work properly.  Perhaps the camera has
        // one thread for acquiring images, and another thread for calling into user code.  If only
        // three buffers are used, then the camera will spew thousands of warning messages when
        // detection takes a non-trivial amount of time.
        camera.setPreviewCallbackWithBuffer(new CameraPreviewCallback());
        camera.addCallbackBuffer(createPreviewBuffer(previewSize));
        camera.addCallbackBuffer(createPreviewBuffer(previewSize));
        camera.addCallbackBuffer(createPreviewBuffer(previewSize));
        camera.addCallbackBuffer(createPreviewBuffer(previewSize));

        return camera;
    }

    /**
     * Gets the id for the camera specified by the direction it is facing. Returns -1 if no such
     * camera was found.
     */
    private int getIdForRequestedCamera() {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();

        for (int i = 0; i < Camera.getNumberOfCameras(); ++i) {
            Camera.getCameraInfo(i, cameraInfo);

            if (cameraInfo.facing == (useFrontCamera ? Camera.CameraInfo.CAMERA_FACING_FRONT : Camera.CameraInfo.CAMERA_FACING_BACK)) {
                return i;
            }
        }

        if (Camera.getNumberOfCameras() > 0) {
            Log.d(TAG, "Cannot find a suitable camera, so use the first camera");
            return 0;
        }

        Log.w(TAG, "Camera not supported");
        return -1;
    }

    private Size selectPreviewSize(Camera camera) {
        List<Camera.Size> sizes = camera.getParameters().getSupportedPreviewSizes();
        Display display = windowManager.getDefaultDisplay();
        DisplayMetrics metrics = new DisplayMetrics();
        display.getMetrics(metrics);
        int w = metrics.widthPixels;
        int h = metrics.heightPixels;

        if (w < h) {
            int tmp = h;
            h = w;
            w = tmp;
        }

        double targetRatio = (double) w / h;
        int targetHeight = this.targetHeight > 0 ? this.targetHeight : h;
        Size optimalSize = null;
        double minDiff = Double.MAX_VALUE;

        // Try to find an size match aspect ratio and size
        for (Camera.Size size : sizes) {
            double ratio = (double) size.width / size.height;

            if (Math.abs(ratio - targetRatio) > ASPECT_RATIO_TOLERANCE) {
                continue;
            }

            if (Math.abs(size.height - targetHeight) < minDiff) {
                optimalSize = new Size(size.width, size.height);
                minDiff = Math.abs(size.height - targetHeight);
            }
        }

        // Cannot find the one match the aspect ratio, ignore the requirement
        if (optimalSize == null) {
            minDiff = Double.MAX_VALUE;

            for (Camera.Size size : sizes) {
                if (Math.abs(size.height - targetHeight) < minDiff) {
                    optimalSize = new Size(size.width, size.height);
                    minDiff = Math.abs(size.height - targetHeight);
                }
            }
        }

        return optimalSize;
    }

    /**
     * Selects the most suitable preview frames per second range, given the desired frames per second.
     *
     * @param camera the camera to select a frames per second range from
     * @return the selected preview frames per second range
     */
    private int[] selectPreviewFpsRange(Camera camera) {
        // Selects a range with whose upper bound is as close as possible to the desired fps while its
        // lower bound is as small as possible to properly expose frames in low light conditions. Note
        // that this may select a range that the desired value is outside of. For example, if the
        // desired frame rate is 30.5, the range (30, 30) is probably more desirable than (30, 40).
        int[] selected = null;
        int minUpperBoundDiff = Integer.MAX_VALUE;
        int minLowerBound = Integer.MAX_VALUE;
        List<int[]> ranges = camera.getParameters().getSupportedPreviewFpsRange();

        for (int[] range : ranges) {
            int upperBoundDiff = Math.abs((int) (CameraSource.REQUESTED_FPS * 1000) - range[Camera.Parameters.PREVIEW_FPS_MAX_INDEX]);
            int lowerBound = range[Camera.Parameters.PREVIEW_FPS_MIN_INDEX];

            if (upperBoundDiff <= minUpperBoundDiff && lowerBound <= minLowerBound) {
                selected = range;
                minUpperBoundDiff = upperBoundDiff;
                minLowerBound = lowerBound;
            }
        }

        return selected;
    }

    /**
     * Calculates the correct rotation for the given camera id and sets the rotation in the
     * parameters. It also sets the camera's display orientation and rotation.
     *
     * @param parameters the camera parameters for which to set the rotation
     * @param cameraId   the camera id to set rotation based on
     */
    private void setRotation(Camera camera, Camera.Parameters parameters, int cameraId) {
        int degrees = 0;
        int rotation = windowManager.getDefaultDisplay().getRotation();

        switch (rotation) {
            case Surface.ROTATION_0:
                degrees = 0;
                break;
            case Surface.ROTATION_90:
                degrees = 90;
                break;
            case Surface.ROTATION_180:
                degrees = 180;
                break;
            case Surface.ROTATION_270:
                degrees = 270;
                break;
            default:
                Log.e(TAG, "Bad rotation value: " + rotation);
                break;
        }

        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(cameraId, cameraInfo);
        int displayAngle;

        if (cameraInfo.facing == Camera.CameraInfo.CAMERA_FACING_FRONT) {
            rotationDegrees = (cameraInfo.orientation + degrees) % 360;
            displayAngle = (360 - rotationDegrees) % 360; // compensate for it being mirrored
        } else { // back-facing
            rotationDegrees = (cameraInfo.orientation - degrees + 360) % 360;
            displayAngle = rotationDegrees;
        }

        Log.d(TAG, "Display rotation is: " + rotation);
        Log.d(TAG, "Camera face is: " + cameraInfo.facing);
        Log.d(TAG, "Camera rotation is: " + cameraInfo.orientation);
        // This value should be one of the degrees that ImageMetadata accepts: 0, 90, 180 or 270.
        Log.d(TAG, "RotationDegrees is: " + rotationDegrees);

        camera.setDisplayOrientation(displayAngle);
        parameters.setRotation(rotationDegrees);
    }

    /**
     * Creates one buffer for the camera preview callback. The size of the buffer is based off of the
     * camera preview size and the format of the camera image.
     *
     * @return a new preview buffer of the appropriate size for the current camera settings
     */
    private byte[] createPreviewBuffer(Size size) {
        int bitsPerPixel = ImageFormat.getBitsPerPixel(IMAGE_FORMAT);
        long sizeInBits = (long) size.getHeight() * size.getWidth() * bitsPerPixel;
        int bufferSize = (int) Math.ceil(sizeInBits / 8.0d) + 1;

        // Creating the byte array this way and wrapping it, as opposed to using .allocate(),
        // should guarantee that there will be an array to work with.
        byte[] bytes = new byte[bufferSize];
        ByteBuffer buffer = ByteBuffer.wrap(bytes);

        if (!buffer.hasArray() || (buffer.array() != bytes)) {
            // I don't think that this will ever happen.  But if it does, then we wouldn't be
            // passing the preview content to the underlying detector later.
            throw new IllegalStateException("Failed to create valid buffer for camera source.");
        }

        bytesToBuffer.put(bytes, buffer);
        return bytes;
    }

    /**
     * Called when the camera has a new preview frame.
     */
    private class CameraPreviewCallback implements Camera.PreviewCallback {
        @Override
        public void onPreviewFrame(byte[] data, Camera camera) {
            processingRunnable.setNextFrame(data, camera);
        }
    }

    public void setMachineLearningFrameProcessor(ImageProcessor processor) {
        synchronized (processorLock) {
            cleanScreen();

            if (frameProcessor != null) {
                frameProcessor.stop();
            }

            frameProcessor = processor;
        }
    }

    /**
     * This runnable controls access to the underlying receiver, calling it to process frames when
     * available from the camera. This is designed to run detection on frames as fast as possible
     * (i.e., without unnecessary context switching or waiting on the next frame).
     *
     * <p>While detection is running on a frame, new frames may be received from the camera. As these
     * frames come in, the most recent frame is held onto as pending. As soon as detection and its
     * associated processing is done for the previous frame, detection on the mostly recently received
     * frame will immediately start on the same thread.
     */
    private class FrameProcessingRunnable implements Runnable {
        private final Object lock = new Object();
        private boolean active = true;
        // These pending variables hold the state associated with the new frame awaiting processing.
        private ByteBuffer pendingFrameData;

        /**
         * Marks the runnable as active/not active. Signals any blocked threads to continue.
         */
        void setActive(boolean active) {
            synchronized (lock) {
                this.active = active;
                lock.notifyAll();
            }
        }

        /**
         * Sets the frame data received from the camera. This adds the previous unused frame buffer (if
         * present) back to the camera, and keeps a pending reference to the frame data for future use.
         */
        void setNextFrame(byte[] data, Camera camera) {
            synchronized (lock) {
                if (pendingFrameData != null) {
                    camera.addCallbackBuffer(pendingFrameData.array());
                    pendingFrameData = null;
                }

                if (!bytesToBuffer.containsKey(data)) {
                    Log.d(TAG, "Skipping frame. Could not find ByteBuffer associated with the image data from the camera.");
                    return;
                }

                pendingFrameData = bytesToBuffer.get(data);
                // Notify the processor thread if it is waiting on the next frame (see below).
                lock.notifyAll();
            }
        }

        /**
         * As long as the processing thread is active, this executes detection on frames continuously.
         * The next pending frame is either immediately available or hasn't been received yet. Once it
         * is available, we transfer the frame info to local variables and run detection on that frame.
         * It immediately loops back for the next frame without pausing.
         *
         * <p>If detection takes longer than the time in between new frames from the camera, this will
         * mean that this loop will run without ever waiting on a frame, avoiding any context switching
         * or frame acquisition time latency.
         *
         * <p>If you find that this is using more CPU than you'd like, you should probably decrease the
         * FPS setting above to allow for some idle time in between frames.
         */
        @Override
        public void run() {
            ByteBuffer data;

            while (true) {
                synchronized (lock) {
                    while (active && (pendingFrameData == null)) {
                        try {
                            // Wait for the next frame to be received from the camera, since we
                            // don't have it yet.
                            lock.wait();
                        } catch (InterruptedException e) {
                            Log.d(TAG, "Frame processing loop terminated.", e);
                            return;
                        }
                    }

                    if (!active) {
                        // Exit the loop once this camera source is stopped or released.  We check
                        // this here, immediately after the wait() above, to handle the case where
                        // setActive(false) had been called, triggering the termination of this
                        // loop.
                        return;
                    }

                    // Hold onto the frame data locally, so that we can use this for detection
                    // below.  We need to clear pendingFrameData to ensure that this buffer isn't
                    // recycled back to the camera before we are done using that data.
                    data = pendingFrameData;
                    pendingFrameData = null;
                }

                // The code below needs to run outside of synchronization, because this will allow
                // the camera to add pending frame(s) while we are running detection on the current
                // frame.

                try {
                    synchronized (processorLock) {
                        frameProcessor.process(
                                data,
                                new FrameMetadata.Builder()
                                        .setWidth(previewSize.getWidth())
                                        .setHeight(previewSize.getHeight())
                                        .setRotation(rotationDegrees)
                                        .build(),
                                graphicOverlay);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "Exception thrown from receiver.", e);
                } finally {
                    camera.addCallbackBuffer(data.array());
                }
            }
        }
    }

    /**
     * Cleans up graphicOverlay and child classes can do their cleanups as well .
     */
    private void cleanScreen() {
        graphicOverlay.clear();
    }
}
