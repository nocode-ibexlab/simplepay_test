package com.ibexlab.simple_pay_api.device.centerm;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.ibexlab.simple_pay_api.R;

public class PinPadActivity extends Activity implements View.OnClickListener {
    private static final String TAG = PinPadActivity.class.getSimpleName();

    private TextView passwordView;
    private String pin = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pin_pad);
        passwordView = findViewById(R.id.password);
        init();
    }

    private void init() {
        int[] ids = new int[]{
                R.id.num0, R.id.num1, R.id.num2, R.id.num3, R.id.num4, R.id.num5, R.id.num6, R.id.num7, R.id.num8, R.id.num9, R.id.ok, R.id.cancel, R.id.bs
        };

        for (int i : ids) {
            findViewById(i).setOnClickListener(this);
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        sendPin(false);
    }

    @Override
    public void onClick(View v) {
        String tag = (String) v.getTag();

        switch (tag) {
            case "0":
            case "1":
            case "2":
            case "3":
            case "4":
            case "5":
            case "6":
            case "7":
            case "8":
            case "9":
                pin += tag;
                showPassword(pin);
                break;
            case "bs":
                if (pin.length() > 0) {
                    pin = pin.substring(0, pin.length() - 1);
                    showPassword(pin);
                }
                break;
            case "cancel":
                sendPin(false);
                break;
            case "ok":
                sendPin(true);
                break;
        }
    }

    private void sendPin(boolean ok) {
        Intent intent = new Intent();
        intent.setAction("ACTION_OFFLINE_PIN");

        if (ok) {
            intent.putExtra("pin", pin);
        }

        sendBroadcast(intent);
        finish();
    }

    private void showPassword(String password) {
        //noinspection ReplaceAllDot
        String p = password.replaceAll(".", "\\*");
        Log.d(TAG, "PIN entered=" + p);
        passwordView.setText(p);
    }
}
