package com.ibexlab.simple_pay_api.device.ml.barcode;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageFormat;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicYuvToRGB;
import android.renderscript.Type;

import java.nio.ByteBuffer;

/**
 * 바코드 스캐너용 Renderscript
 */
public class RsProcessor {
    private final RenderScript rs;
    private final ScriptIntrinsicYuvToRGB yuvToRgbIntrinsic;
    private final ScriptC_barcode barcodeScript;
    private Allocation aIn;
    private Allocation aGrey;
    private Allocation aInvert;

    public RsProcessor(Context context) {
        rs = RenderScript.create(context);
        yuvToRgbIntrinsic = ScriptIntrinsicYuvToRGB.create(rs, Element.U8_4(rs));
        barcodeScript = new ScriptC_barcode(rs);
    }

    public boolean isInitialized() {
        return aIn != null && aGrey != null && aInvert != null;
    }

    // Allocation 생성하는데 시간이 걸리기 때문에 미리 생성해 놓도록 해서 성능 개선함
    public void init(int fullWidth, int fullHeight, int cropLeft, int cropTop, int cropWidth, int cropHeight) {
        Type.Builder inType = new Type.Builder(rs, Element.U8(rs))
                .setX(fullWidth)
                .setY(fullHeight)
                .setYuvFormat(ImageFormat.NV21);
        aIn = Allocation.createTyped(rs, inType.create(), Allocation.USAGE_SCRIPT);

        Type.Builder outType = new Type.Builder(rs, Element.U8(rs))
                .setX(cropWidth)
                .setY(cropHeight)
                .setYuvFormat(ImageFormat.NV21);
        aGrey = Allocation.createTyped(rs, outType.create(), Allocation.USAGE_SCRIPT);
        aInvert = Allocation.createTyped(rs, outType.create(), Allocation.USAGE_SCRIPT);

        barcodeScript.set_in(aIn);
        barcodeScript.set_left(cropLeft);
        barcodeScript.set_top(cropTop);
    }

    public void setInput(ByteBuffer buffer) {
        aIn.copyFrom(buffer.array());
    }

    public ByteBuffer grey() {
        barcodeScript.forEach_crop(aGrey);
        byte[] buffer = new byte[aGrey.getBytesSize()];
        aGrey.copyTo(buffer);
        return ByteBuffer.wrap(buffer);
    }

    public ByteBuffer invert() {
        barcodeScript.forEach_invert(aInvert);
        byte[] buffer = new byte[aIn.getBytesSize()];
        aInvert.copyTo(buffer);
        return ByteBuffer.wrap(buffer);
    }

    // 디버깅용
    public Bitmap toBitmap(ByteBuffer data, int width, int height) {
        Type.Builder inType = new Type.Builder(rs, Element.U8(rs))
                .setX(width)
                .setY(height)
                .setYuvFormat(ImageFormat.NV21);
        Allocation in = Allocation.createTyped(rs, inType.create(), Allocation.USAGE_SCRIPT);

        Type.Builder outType = new Type.Builder(rs, Element.RGBA_8888(rs))
                .setX(width)
                .setY(height);
        Allocation out = Allocation.createTyped(rs, outType.create(), Allocation.USAGE_SCRIPT);

        in.copyFrom(data.array());
        yuvToRgbIntrinsic.setInput(in);
        yuvToRgbIntrinsic.forEach(out);
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        out.copyTo(bitmap);
        return bitmap;
    }
}
