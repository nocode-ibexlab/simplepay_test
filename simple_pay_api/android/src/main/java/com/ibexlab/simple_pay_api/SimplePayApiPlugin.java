package com.ibexlab.simple_pay_api;

import android.os.Handler;
import android.os.Looper;

import androidx.annotation.NonNull;

import com.ibexlab.simple_pay_api.biz.Device;
import com.ibexlab.simple_pay_api.utils.InvokeEvent;
import com.ibexlab.simple_pay_api.utils.JsonUtil;

import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

public class SimplePayApiPlugin implements FlutterPlugin, MethodCallHandler, EventChannel.StreamHandler, InvokeEvent, ActivityAware {
    private static final String UNKNOWN = "__UNKNOWN__";

    private MethodChannel channel;
    private EventChannel.EventSink events;
    private Handler handler;
    private Device device;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "simple_pay_api");
        channel.setMethodCallHandler(this);
        EventChannel eventChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), "simple_pay_events");
        eventChannel.setStreamHandler(this);
        handler = new Handler(Looper.getMainLooper());
        device = new Device(this);
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        String domain = getDomain(call.method);
        String method = getMethod(call.method);

        try {
            switch (domain) {
                case "device":
                    device.invoke(method, (String) call.arguments, (resCode, message, content) ->
                            respond(result, resCode, message, content));
                    break;
                default:
                    result.notImplemented();
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            respond(result, e);
        }
    }

    private String getDomain(String command) {
        String[] parsed = command.split("\\.", 2);
        return parsed.length == 2 ? parsed[0] : UNKNOWN;
    }

    private String getMethod(String command) {
        String[] parsed = command.split("\\.", 2);
        return parsed.length == 2 ? parsed[1] : UNKNOWN;
    }

    private void respond(Result result, int resCode, String message, Map<String, Object> content) {
        handler.post(() -> {
            try {
                String rsp = JsonUtil.toJson(resCode, message, content);
                result.success(rsp);
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        });
    }

    private void respond(Result result, Exception e) {
        handler.post(() -> {
            try {
                String rsp = JsonUtil.toJson(-1, e.getMessage());
                result.success(rsp);
            } catch (IllegalStateException ex) {
                ex.printStackTrace();
            }
        });
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    @Override
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
        onAttachedToActivity(binding);
    }

    @Override
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override
    public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
        device.setContext(binding.getActivity());
    }

    @Override
    public void onDetachedFromActivity() {
        device.setContext(null);
    }

    @Override
    public void onListen(Object arguments, EventChannel.EventSink events) {
        this.events = events;
    }

    @Override
    public void onCancel(Object arguments) {
        events = null;
    }

    @Override
    public void occur(int resCode, String message, Map<String, Object> data) {
        handler.post(() -> {
            try {
                String event = JsonUtil.toJson(resCode, message, data);

                if (events != null) {
                    events.success(event);
                }
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        });
    }
}
