package com.ibexlab.simple_pay_api.serviceprint;

import android.graphics.Bitmap;

import com.ibexlab.simple_pay_api.utils.ICallback2;

public interface HtmlRenderer {
    void setLoadHtml(String printerType, String html, int width, ICallback2<String, Bitmap> callback);
}
