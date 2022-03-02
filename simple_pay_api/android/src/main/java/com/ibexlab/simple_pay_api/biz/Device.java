package com.ibexlab.simple_pay_api.biz;

import android.app.Activity;
import android.content.Context;
import android.os.Environment;

import com.ibexlab.simple_pay_api.serviceprint.HtmlRenderImpl;
import com.ibexlab.simple_pay_api.serviceprint.PrintService;
import com.ibexlab.simple_pay_api.utils.DeviceManagerService;
import com.ibexlab.simple_pay_api.utils.InvokeEvent;
import com.ibexlab.simple_pay_api.utils.JsonUtil;

import org.json.JSONException;
import org.json.JSONObject;

import java.net.NetworkInterface;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Device extends BizBase {
    private final InvokeEvent events;
    private PrintService printer;

    public Device(InvokeEvent events) {
        this.events = events;
    }

    @Override
    public void setContext(Context context) {
        super.setContext(context);
        DeviceManagerService deviceService = DeviceManagerService.getInstance();
        deviceService.init((Activity) context);
        deviceService.bind();
        printer = PrintService.getInstance();
        printer.init(deviceService, new HtmlRenderImpl(context), events);
    }

    /**
     * 장치 ID를 구함
     *
     * @param data     사용하지 않음
     * @param callback {deviceId}
     */
    @BizApi
    public void getDeviceId(String data, InvokeCallback callback) {
        String interfaceName = "wlan0";

        try {
            List<NetworkInterface> interfaces = Collections.list(NetworkInterface.getNetworkInterfaces());

            for (NetworkInterface i : interfaces) {
                if (!i.getName().equalsIgnoreCase(interfaceName)) {
                    continue;
                }

                byte[] mac = i.getHardwareAddress();

                if (mac == null) {
                    callback.call(-1, "No MAC", null);
                    return;
                }

                StringBuilder buf = new StringBuilder();

                for (byte b : mac) {
                    buf.append(String.format("%02x:", b));
                }

                if (buf.length() > 0) {
                    buf.deleteCharAt(buf.length() - 1);
                }

                Map<String, Object> result = new HashMap<>();
                result.put("deviceId", buf.toString().replace(":", ""));
                callback.call(0, "success", result);
                return;
            }
        } catch (Exception ignored) {
        }

        callback.call(-1, "WIFI not enabled", null);
    }

    /**
     * 디렉토리 구함
     *
     * @param data     사용하지 않음
     * @param callback {external, codePath}
     */
    @BizApi
    public void getPath(String data, InvokeCallback callback) {
        Map<String, Object> result = new HashMap<>();
        result.put("external", Environment.getExternalStorageDirectory().getAbsolutePath() + "/YoshopPOS");
        result.put("codePath", context.getPackageCodePath());
        callback.call(0, "success", result);
    }

    /**
     * 프린터 정보 전달
     *
     * @param data     {language, ...}
     * @param callback 항상 성공
     */
    @BizApi
    public void initPrinter(String data, InvokeCallback callback) throws JSONException {
        JSONObject json = JsonUtil.json(data);
        String language = JsonUtil.value(json, "language", "KOR");
        DeviceManagerService.getInstance().setLanguage(language);

        String model = JsonUtil.value(json, "receiptPrinterModel", PrintService.MODEL_NONE);
        String type = JsonUtil.value(json, "receiptPrinterType", PrintService.PRINTER_TYPE_CENTERM);
        int maxChar = JsonUtil.value(json, "receiptPrinterMaxChar", 32);
        String btAddress = JsonUtil.value(json, "receiptPrinterBtAddress", "");
        PrintService.getInstance().setReceiptPrinterModel(model, type, maxChar, btAddress);

        model = JsonUtil.value(json, "kitchenPrinterMode;", PrintService.MODEL_NONE);
        type = JsonUtil.value(json, "kitchenPrinterType", PrintService.PRINTER_TYPE_CENTERM);
        maxChar = JsonUtil.value(json, "kitchenPrinterMaxChar", 32);
        btAddress = JsonUtil.value(json, "kitchenPrinterBtAddress", "");
        PrintService.getInstance().setKitchenPrinterModel(model, type, maxChar, btAddress);

        callback.call(0, "success", null);
    }

    /**
     * 프린트 하기
     *
     * @param data     {printerName, data, cutMode, immediate}
     * @param callback 없음
     */
    @BizApi
    public void print(String data, InvokeCallback callback) throws JSONException {
        JSONObject json = JsonUtil.json(data);
        String printerName = JsonUtil.value(json, "printerName", "receipt");
        String printData = JsonUtil.value(json, "data", null);
        int cutMode = JsonUtil.value(json, "cutMode", DeviceManagerService.FULL_CUT);
        boolean immediate = JsonUtil.value(json, "immediate", false);

        switch (printerName) {
            case "receipt":
                if (immediate) {
                    printer.printImmediately(0, printData, cutMode, r -> {
                        int resCode = (int) r;
                        callback.call(resCode, resCode >= 0 ? "success" : "fail", null);
                    });
                    return;
                } else {
                    printer.receiptPrint(printData, cutMode);
                    callback.call(0, "success", null);
                }
                break;
            case "kitchen":
                if (immediate) {
                    printer.printImmediately(1, printData, cutMode, r -> {
                        int resCode = (int) r;
                        callback.call(resCode, resCode >= 0 ? "success" : "fail", null);
                    });
                    return;
                } else {
                    printer.kitchenPrint(printData, cutMode);
                    callback.call(0, "success", null);
                }
                break;
            default:
                callback.call(-1, "Unknown printer name: " + printerName, null);
                break;
        }
    }

    /**
     * 다음 프린트 출력
     *
     * @param data     {next}
     * @param callback {total, remain, cancel}
     */
    @BizApi
    public void nextPrint(String data, InvokeCallback callback) throws JSONException {
        JSONObject json = JsonUtil.json(data);
        boolean next = JsonUtil.value(json, "next", true);

        if (next) {
            printer.nextPrint(r -> {
                int resCode = (int) r;
                Map<String, Object> result = new HashMap<>();
                result.put("total", printer.totalJobCount());
                result.put("remain", printer.remainJobCount());
                result.put("cancel", false);

                if (printer.remainJobCount() == 0) {
                    printer.jobClear();
                }

                callback.call(resCode, resCode >= 0 ? "success" : "fail", result);
            });
        } else {
            printer.jobClear();

            Map<String, Object> result = new HashMap<>();
            result.put("total", printer.totalJobCount());
            result.put("remain", printer.remainJobCount());
            result.put("cancel", true);
            callback.call(0, "success", result);
        }
    }

    /**
     * 프린터 상태 체크
     *
     * @param data     없음
     * @param callback 프린터 상태
     */
    @BizApi
    public void printerStatus(String data, InvokeCallback callback) {
        printer.checkPrinterStatus(r -> callback.call(r, "success", null));
    }

    /**
     * 프린트 Job 상태 체크
     *
     * @param data     없음
     * @param callback {total, remain}
     */
    @BizApi
    public void printerJobStatus(String data, InvokeCallback callback) {
        Map<String, Object> result = new HashMap<>();
        result.put("total", printer.totalJobCount());
        result.put("remain", printer.remainJobCount());
        callback.call(0, "success", result);
    }

    /**
     * 금전함 열기
     *
     * @param data     없음
     * @param callback 없음
     */
    @BizApi
    public void openDrawer(String data, InvokeCallback callback) {
        printer.openDrawer();
        callback.call(0, "success", null);
    }
}
