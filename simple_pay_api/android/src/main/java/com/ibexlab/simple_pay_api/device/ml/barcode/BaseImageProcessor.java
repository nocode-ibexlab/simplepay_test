package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.Log;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.mlkit.vision.common.InputImage;

import java.nio.ByteBuffer;

/**
 * Abstract base class for vision frame processors. Subclasses need to implement {@link
 * #onSuccess(Object, GraphicOverlay)} to define what they want to with the detection results and
 * {@link #detectInImage(InputImage)} to specify the detector object.
 *
 * @param <T> The type of the detected feature.
 */
public abstract class BaseImageProcessor<T> implements ImageProcessor {
    private static final String TAG = BaseImageProcessor.class.getSimpleName();

    private final ScopedExecutor executor;
    private final RsProcessor rsProcessor;
    private boolean isShutdown;
    protected boolean isDetected;
    private int width;
    private int height;

    // To keep the latest images and its metadata.
    @GuardedBy("this")
    private ByteBuffer latestImage;

    @GuardedBy("this")
    private FrameMetadata latestImageMetaData;

    // To keep the images and metadata in process.
    @GuardedBy("this")
    private ByteBuffer processingImage;

    @GuardedBy("this")
    private FrameMetadata processingMetaData;

    protected BaseImageProcessor(Context context) {
        executor = new ScopedExecutor(TaskExecutors.MAIN_THREAD);
        rsProcessor = new RsProcessor(context);
    }

    @Override
    public synchronized void process(ByteBuffer data, final FrameMetadata metadata, final GraphicOverlay graphicOverlay) {
        latestImage = data;
        latestImageMetaData = metadata;

        if (processingImage == null && processingMetaData == null) {
            processLatestImage(graphicOverlay);
        }
    }

    private synchronized void processLatestImage(final GraphicOverlay graphicOverlay) {
        processingImage = latestImage;
        processingMetaData = latestImageMetaData;
        latestImage = null;
        latestImageMetaData = null;

        if (processingImage != null && processingMetaData != null && !isShutdown) {
            processImage(processingImage, processingMetaData, graphicOverlay);
        }
    }

    private void processImage(ByteBuffer data, final FrameMetadata metadata, final GraphicOverlay graphicOverlay) {
        long t1 = SystemClock.elapsedRealtime();

        if (!rsProcessor.isInitialized()) {
            Rect rect = graphicOverlay.getFocusRectForImage(metadata.getRotation());
            rsProcessor.init(metadata.getWidth(), metadata.getHeight(), rect.left, rect.top, rect.width(), rect.height());
            this.width = rect.width();
            this.height = rect.height();
        }

        rsProcessor.setInput(data);
        ByteBuffer greyBuffer = rsProcessor.grey();
        InputImage greyImage = InputImage.fromByteBuffer(greyBuffer, width, height, metadata.getRotation(), ImageFormat.NV21);
        long t2 = SystemClock.elapsedRealtime();

        requestDetectInImage(greyImage, graphicOverlay)
                .addOnCompleteListener(task -> {
                    long t3 = SystemClock.elapsedRealtime();

                    if (!isDetected) {
                        ByteBuffer invertBuffer = rsProcessor.invert();
                        InputImage invertImage = InputImage.fromByteArray(invertBuffer.array(), width, height, metadata.getRotation(), InputImage.IMAGE_FORMAT_NV21);
                        long t4 = SystemClock.elapsedRealtime();

                        requestDetectInImage(invertImage, graphicOverlay)
                                .addOnSuccessListener(executor, results -> {
                                    long t5 = SystemClock.elapsedRealtime();

                                    if (!isDetected) {
                                        processLatestImage(graphicOverlay);
                                    } else {
                                        Log.d(TAG, String.format("Detected in inverted image: %dms (%d / %d / %d / %d)", (t5 - t1), (t2 - t1), (t3 - t2), (t4 - t3), (t5 - t4)));
                                    }
                                });
                    } else {
                        Log.d(TAG, String.format("Detected in normal image: %dms (%d / %d)", (t3 - t1), (t2 - t1), (t3 - t2)));
                    }
                });
    }

    private Task<T> requestDetectInImage(final InputImage image, final GraphicOverlay graphicOverlay) {
        return detectInImage(image)
                .addOnSuccessListener(
                        executor,
                        results -> {
                            graphicOverlay.clear();
                            onSuccess(results, graphicOverlay);
                            graphicOverlay.postInvalidate();
                        })
                .addOnFailureListener(
                        executor,
                        e -> {
                            graphicOverlay.clear();
                            graphicOverlay.postInvalidate();
                            onFailure(e);
                        });
    }

    @Override
    public void stop() {
        executor.shutdown();
        isShutdown = true;
    }

    protected abstract Task<T> detectInImage(InputImage image);

    protected abstract void onSuccess(@NonNull T results, @NonNull GraphicOverlay graphicOverlay);

    protected abstract void onFailure(@NonNull Exception e);
}
