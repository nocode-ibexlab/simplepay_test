package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import java.util.ArrayList;
import java.util.List;

import static java.lang.Math.max;
import static java.lang.Math.min;

/**
 * A view which renders a series of custom graphics to be overlayed on top of an associated preview
 * (i.e., the camera preview). The creator can add graphics objects, update the objects, and remove
 * them, triggering the appropriate drawing and invalidation within the view.
 *
 * <p>Supports scaling and mirroring of the graphics relative the camera's preview properties. The
 * idea is that detection items are expressed in terms of an image size, but need to be scaled up
 * to the full view size, and also mirrored in the case of the front-facing camera.
 *
 * <p>Associated {@link Graphic} items should use the following methods to convert to view
 * coordinates for the graphics that are drawn:
 *
 * <ol>
 *   <li>{@link Graphic#scale(float)} adjusts the size of the supplied value from the image scale
 *       to the view scale.
 *   <li>{@link Graphic#translateX(float)} and {@link Graphic#translateY(float)} adjust the
 *       coordinate from the image's coordinate system to the view coordinate system.
 * </ol>
 */
public class GraphicOverlay extends View {
    private static final String TAG = GraphicOverlay.class.getSimpleName();

    private final Object lock = new Object();
    private final List<Graphic> graphics = new ArrayList<>();
    private int imageWidth;
    private int imageHeight;
    // The factor of overlay View size to image size. Anything in the image coordinates need to be
    // scaled by this amount to fit with the area of overlay View.
    private float scaleFactor = 1.0f;
    // The number of horizontal pixels needed to be cropped on each side to fit the image with the
    // area of overlay View after scaling.
    private float postScaleWidthOffset;
    // The number of vertical pixels needed to be cropped on each side to fit the image with the
    // area of overlay View after scaling.
    private float postScaleHeightOffset;
    private boolean isImageFlipped;
    private boolean needUpdateTransformation = true;
    private View focusBox;

    /**
     * Base class for a custom graphics object to be rendered within the graphic overlay. Subclass
     * this and implement the {@link Graphic#draw(Canvas)} method to define the graphics element. Add
     * instances to the overlay using {@link GraphicOverlay#add(Graphic)}.
     */
    public abstract static class Graphic {
        private final GraphicOverlay overlay;

        public Graphic(GraphicOverlay overlay) {
            this.overlay = overlay;
        }

        /**
         * Draw the graphic on the supplied canvas. Drawing should use the following methods to convert
         * to view coordinates for the graphics that are drawn:
         *
         * <ol>
         *   <li>{@link Graphic#scale(float)} adjusts the size of the supplied value from the image
         *       scale to the view scale.
         *   <li>{@link Graphic#translateX(float)} and {@link Graphic#translateY(float)} adjust the
         *       coordinate from the image's coordinate system to the view coordinate system.
         * </ol>
         *
         * @param canvas drawing canvas
         */
        public abstract void draw(Canvas canvas);

        public RectF translate(Rect rect) {
            RectF translated = overlay.translate(rect);

            if (overlay.focusBox != null) {
                translated.offset(overlay.focusBox.getLeft(), overlay.focusBox.getTop());
            }

            return translated;
        }
    }

    public GraphicOverlay(Context context, AttributeSet attrs) {
        super(context, attrs);
        addOnLayoutChangeListener((view, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom) -> needUpdateTransformation = true);
    }

    /**
     * Removes all graphics from the overlay.
     */
    public void clear() {
        synchronized (lock) {
            graphics.clear();
        }

        postInvalidate();
    }

    /**
     * Adds a graphic to the overlay.
     */
    public void add(Graphic graphic) {
        synchronized (lock) {
            graphics.add(graphic);
        }
    }

    /**
     * Removes a graphic from the overlay.
     */
    public void remove(Graphic graphic) {
        synchronized (lock) {
            graphics.remove(graphic);
        }

        postInvalidate();
    }

    /**
     * Sets the source information of the image being processed by detectors, including size and
     * whether it is flipped, which informs how to transform image coordinates later.
     *
     * @param imageWidth  the width of the image sent to ML Kit detectors
     * @param imageHeight the height of the image sent to ML Kit detectors
     * @param isFlipped   whether the image is flipped. Should set it to true when the image is from the
     *                    front camera.
     */
    public void setImageSourceInfo(int imageWidth, int imageHeight, boolean isFlipped) {
        if (imageWidth <= 0 || imageHeight <= 0) {
            Log.w(TAG, "Image width or image height must be positive");
            return;
        }

        synchronized (lock) {
            this.imageWidth = imageWidth;
            this.imageHeight = imageHeight;
            this.isImageFlipped = isFlipped;
            needUpdateTransformation = true;
        }

        postInvalidate();
    }

    public void setFocusBox(View focusBox) {
        this.focusBox = focusBox;
    }

    private void updateTransformationIfNeeded() {
        if (!needUpdateTransformation || imageWidth <= 0 || imageHeight <= 0) {
            return;
        }

        float viewAspectRatio = (float) getWidth() / getHeight();
        float imageAspectRatio = (float) imageWidth / imageHeight;
        postScaleWidthOffset = 0;
        postScaleHeightOffset = 0;

        if (viewAspectRatio > imageAspectRatio) {
            // The image needs to be vertically cropped to be displayed in this view.
            scaleFactor = (float) getWidth() / imageWidth;
            postScaleHeightOffset = ((float) getWidth() / imageAspectRatio - getHeight()) / 2;
        } else {
            // The image needs to be horizontally cropped to be displayed in this view.
            scaleFactor = (float) getHeight() / imageHeight;
            postScaleWidthOffset = ((float) getHeight() * imageAspectRatio - getWidth()) / 2;
        }

        needUpdateTransformation = false;
    }

    /**
     * Draws the overlay with its associated graphic objects.
     */
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        synchronized (lock) {
            updateTransformationIfNeeded();

            for (Graphic graphic : graphics) {
                graphic.draw(canvas);
            }
        }
    }

    /**
     * Adjusts the supplied value from the image scale to the view scale.
     */
    private float scale(float imagePixel) {
        return imagePixel * scaleFactor;
    }

    /**
     * Adjusts the x coordinate from the image's coordinate system to the view coordinate system.
     */
    private float translateX(float x) {
        if (isImageFlipped) {
            return getWidth() - (scale(x) - postScaleWidthOffset);
        } else {
            return scale(x) - postScaleWidthOffset;
        }
    }

    /**
     * Adjusts the y coordinate from the image's coordinate system to the view coordinate system.
     */
    private float translateY(float y) {
        return scale(y) - postScaleHeightOffset;
    }

    /**
     * image scale 영역을 view scale 영역으로 변환
     *
     * @param imageRect image 영역
     * @return view 영역 (pixel 단위)
     */
    public RectF translate(Rect imageRect) {
        RectF viewRect = new RectF();
        // If the image is flipped, the left will be translated to right, and the right to left.
        float x0 = translateX(imageRect.left);
        float x1 = translateX(imageRect.right);
        viewRect.left = min(x0, x1);
        viewRect.right = max(x0, x1);
        viewRect.top = translateY(imageRect.top);
        viewRect.bottom = translateY(imageRect.bottom);
        return viewRect;
    }

    /**
     * 바코드 인식 영역을 image scale 좌표로 돌려줌
     *
     * @param degree 카메라 회전
     * @return 인식 영역
     */
    public Rect getFocusRectForImage(int degree) {
        if (focusBox == null) {
            return null;
        }

        Rect rect = new Rect(focusBox.getLeft(), focusBox.getTop(), focusBox.getRight(), focusBox.getBottom());
        // 현재 preview 화면과 graphic overlay 화면 크기가 동일하게 설정되어 있음
        rect = rotate(rect, 360 - degree, getWidth(), getHeight());
        return translateToImage(rect);
    }

    private Rect rotate(Rect rect, int degree, int width, int height) {
        int[] p1 = rotate(rect.left, rect.top, degree, width, height);
        int[] p2 = rotate(rect.right, rect.bottom, degree, width, height);
        return new Rect(Math.min(p1[0], p2[0]), Math.min(p1[1], p2[1]), Math.max(p1[0], p2[0]), Math.max(p1[1], p2[1]));
    }

    private int[] rotate(int x, int y, int degree, int width, int height) {
        switch (degree) {
            case 90:
                return new int[]{height - y, x};
            case 180:
                return new int[]{width - x, height - y};
            case 270:
                return new int[]{y, width - x};
            case 0:
            default:
                return new int[]{x, y};
        }
    }

    /**
     * view scale 영역을 image scale 영역으로 변환
     *
     * @param viewRect view 영역
     * @return image 영역
     */
    private Rect translateToImage(Rect viewRect) {
        Rect imageRect = new Rect();
        imageRect.left = (int) ((viewRect.left + postScaleWidthOffset) / scaleFactor);
        imageRect.right = (int) ((viewRect.right + postScaleWidthOffset) / scaleFactor);
        imageRect.top = (int) ((viewRect.top + postScaleHeightOffset) / scaleFactor);
        imageRect.bottom = (int) ((viewRect.bottom + postScaleHeightOffset) / scaleFactor);
        return imageRect;
    }
}
