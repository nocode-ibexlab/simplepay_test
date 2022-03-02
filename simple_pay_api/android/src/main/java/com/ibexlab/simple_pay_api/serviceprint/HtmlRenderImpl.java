package com.ibexlab.simple_pay_api.serviceprint;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.ibexlab.simple_pay_api.utils.ICallback2;

public class HtmlRenderImpl implements HtmlRenderer {
    private static final String TAG = HtmlRenderImpl.class.getSimpleName();

    private final Context context;
    private final Handler myHandler;

    public HtmlRenderImpl(Context context) {
        this.context = context;
        myHandler = new Handler(Looper.getMainLooper());

        // 앱 기동 후 최초 프린터 출력 중 html 렌더링 하면서 EGL_BAD_DISPLAY 발생
        // 최초 WebView 렌더링 시에만 발생하기에 실제 출력 전에 앱 초기화 할 때 한번 빈 화면을 렌더링 하도록 함
        WebView view = new WebView(context);
        view.loadData("", null, null);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            WebView.enableSlowWholeDocumentDraw();
        }
    }

    @Override
    public void setLoadHtml(final String printerName, String html, final int width, final ICallback2<String, Bitmap> callback) {
        Log.d(TAG, "[PRINT][HtmlRenderer] load html");
        WebView view = new WebView(context);
        view.setInitialScale(100); // 설정하지 않으면 dpi 가 320인 DKP809에서는 글자가 2배 크게 나옴

        view.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageFinished(final WebView view, String url) {
                Log.d(TAG, "[PRINT][HtmlRenderer] html loaded");

                myHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        Bitmap bitmap = screenshot(view, width);

                        if (bitmap == null) {
                            return;
                        }

                        Log.d(TAG, "[PRINT][HtmlRenderer] image captured");

                        try {
                            callback.call(printerName, bitmap);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }, 200);
            }
        });

        view.loadDataWithBaseURL("file:///", html, "text/html; charset=utf-8", "UTF-8", null);
    }

    private Bitmap screenshot(WebView view, int width) {
        view.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());

        if (view.getMeasuredHeight() == 0) {
            Log.w(TAG, "WebView measured height is 0");
            return null;
        }

        Bitmap bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        view.draw(canvas);
        return bitmap;
    }
}