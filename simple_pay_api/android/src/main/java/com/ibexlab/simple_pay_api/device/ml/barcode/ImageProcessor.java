package com.ibexlab.simple_pay_api.device.ml.barcode;

import com.google.mlkit.common.MlKitException;

import java.nio.ByteBuffer;

/**
 * An interface to process the images with different vision detectors and custom image models.
 */
public interface ImageProcessor {
    /**
     * Processes image data, e.g. used for Camera1 live preview case.
     */
    void process(ByteBuffer data, FrameMetadata metadata, GraphicOverlay graphicOverlay) throws MlKitException;

    /**
     * Stops the underlying machine learning model and release resources.
     */
    void stop();
}
