package com.ibexlab.simple_pay_api.serviceprint;

import android.graphics.Bitmap;
import android.os.Environment;
import android.util.Log;

import com.ibexlab.simple_pay_api.Feature;
import com.ibexlab.simple_pay_api.utils.DeviceManagerService;
import com.ibexlab.simple_pay_api.utils.ICallback;
import com.ibexlab.simple_pay_api.utils.InvokeEvent;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PrintService {
    private static final String TAG = PrintService.class.getSimpleName();

    //설정 변경 단계를 위한 임의 정의..  나중에는 DB에서 읽어서 프린트 명을 설정할 수 있어야 함(프린트 여려대 등록)
    private static final String[] PRINTER_NAME = {"RECEIPT", "KITCHEN"};
    private static final int PRINTER_RECEIPT = 0;
    private static final int PRINTER_KITCHEN = 1;

    public static final String MODEL_NONE = "000";

    public static final String PRINTER_TYPE_BLUETOOTH = "05";
    public static final String PRINTER_TYPE_CENTERM = "07";
    public static final String PRINTER_TYPE_CENTERM_IMAGE = "10";

    private static final int EVT_START = 3000;
    private static final int EVT_END = 3001;

    private IPrintManager manager;
    private HtmlRenderer htmlRenderer;
    private InvokeEvent event;
    private String printExtra;
    private final List<PrintJob> jobList = new ArrayList<>();

    private String receiptPrinterModel;
    private String receiptPrinterType;
    private int receiptPrinterMaxChar;
    private String receiptPrinterBtAddress;
    private String kitchenPrinterModel;
    private String kitchenPrinterType;
    private int kitchenPrinterMaxChar;
    private String kitchenPrinterBtAddress;

    private static class LazyHolder {
        private static final PrintService INSTANCE = new PrintService();
    }

    public static PrintService getInstance() {
        return PrintService.LazyHolder.INSTANCE;
    }

    private PrintService() {
    }

    public void setReceiptPrinterModel(String model, String type, int maxChar, String btAddress) {
        receiptPrinterModel = model;
        receiptPrinterType = type;
        receiptPrinterMaxChar = maxChar;
        receiptPrinterBtAddress = btAddress;
    }

    public void setKitchenPrinterModel(String model, String type, int maxChar, String btAddress) {
        kitchenPrinterModel = model;
        kitchenPrinterType = type;
        kitchenPrinterMaxChar = maxChar;
        kitchenPrinterBtAddress = btAddress;
    }

    public void init(IPrintManager manager, HtmlRenderer renderer, InvokeEvent event) {
        this.manager = manager;
        this.htmlRenderer = renderer;
        this.event = event;
    }

    public void setPrintExtra(String extra) {
        this.printExtra = extra;
    }

    public String getPrinterName(int dst) {
        String model = getPrinterModel(dst);

        if (MODEL_NONE.equals(model)) {
            return null;
        }

        manager.setPaperSize(getPrinterMaxChar(dst));
        String type = getPrinterType(dst);

        switch (type) {
            case PRINTER_TYPE_BLUETOOTH:
                return getBtAddress(dst);
            case PRINTER_TYPE_CENTERM:
                return DeviceManagerService.DEVICE_CENTERM_PRINTER;
            case PRINTER_TYPE_CENTERM_IMAGE:
                return DeviceManagerService.DEVICE_CENTERM_IMAGE_PRINTER;
        }

        return null;
    }

    private String getPrinterModel(int dst) {
        return dst == PRINTER_RECEIPT ? receiptPrinterModel : kitchenPrinterModel;
    }

    private String getPrinterType(int dst) {
        return dst == PRINTER_RECEIPT ? receiptPrinterType : kitchenPrinterType;
    }

    private int getPrinterMaxChar(int dst) {
        return dst == PRINTER_RECEIPT ? receiptPrinterMaxChar : kitchenPrinterMaxChar;
    }

    private String getBtAddress(int dst) {
        return dst == PRINTER_RECEIPT ? receiptPrinterBtAddress : kitchenPrinterBtAddress;
    }

    public void openDrawer() {
        String name = getPrinterName(PRINTER_RECEIPT);

        if (name == null) {
            return;
        }

        Log.d("GMLWND", "OPEN Drawer Type[" + receiptPrinterType + "]");

        if (PRINTER_TYPE_BLUETOOTH.equals(receiptPrinterType)) {
            manager.print(name, "<@OPENDRAWER>", result -> Log.d("GMLWND", "OpenResult[" + result + "]"));
        }
    }

    public void checkPrinterStatus(final ICallback<Integer> callback) {
        final String name = getPrinterName(PRINTER_RECEIPT);

        manager.getStatus(name, result -> {
            if (callback != null) {
                try {
                    callback.call(result);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private static int getPrinterIdx(String findName) {
        for (int i = 0; i < PRINTER_NAME.length; i++) {
            if (findName.equals(PRINTER_NAME[i])) return i;
        }

        return -1;
    }

    public void kitchenPrint(String data, int cutMode) {
        addJob(PRINTER_NAME[1], data, cutMode);
    }

    public void receiptPrint(String data, int cutMode) {
        addJob(PRINTER_NAME[0], data, cutMode);
    }

    public void printImmediately(int index, String data, int cutMode, ICallback<Integer> callback) {
        if (PRINTER_NAME.length <= index) {
            Log.w(TAG, "[PRINT IMMEDIATELY]Unknown printer index: " + index);
            return;
        }

        String printerName = PRINTER_NAME[index];
        Log.d(TAG, "[PRINT IMMEDIATELY][PrintService][" + printerName + "]start");

        if (data == null) {
            Log.w(TAG, "print data null");
            callback.call(-1);
            return;
        }

        String model = getPrinterModel(getPrinterIdx(printerName));
        Map<String, Object> eventData = new HashMap<>();
        eventData.put("time", System.currentTimeMillis());
        event.occur(EVT_START, "print start", eventData);

        if (MODEL_NONE.equals(model)) {
            Log.w(TAG, "Printer is not setup");
            eventData.put("errCode", 0);
            event.occur(EVT_END, "Printer is not setup", eventData);
            callback.call(-2);
            return;
        }

        doPrint(data, cutMode, printerName, eventData, callback);
    }

    private void addJob(String printName, String data, int cutMode) {
        Log.d(TAG, "[PRINT][PrintService][" + printName + "] addJob");

        if (data == null) {
            Log.w(TAG, "print data null");
            return;
        }

        jobList.add(new PrintJob(printName, data, cutMode, PrintJob.WAITING));
    }

    public int totalJobCount() {
        return jobList.size();
    }

    public void jobClear() {
        jobList.clear();
    }

    public int remainJobCount() {
        int count = 0;

        for (PrintJob job : jobList) {
            if (job.process == PrintJob.WAITING) {
                count++;
            }
        }

        return count;
    }

    public void nextPrint(ICallback<Integer> callback) {
        int errCode = 0;

        for (PrintJob job : jobList) {
            if (job.process == PrintJob.WAITING) {
                String printName = job.getPrintName();
                String data = job.getData();
                int cutMode = job.getCutMode();
                String model = getPrinterModel(getPrinterIdx(printName));

                if (MODEL_NONE.equals(model)) {
                    Log.w(TAG, "Printer (" + printName + ") is not setup so ignore this job and get next job");
                    job.setProcess(PrintJob.INIT);
                    continue;
                }

                Map<String, Object> eventData = new HashMap<>();
                eventData.put("time", System.currentTimeMillis());
                event.occur(EVT_START, "print start", eventData);
                doPrint(data, cutMode, printName, eventData, callback);
                job.setProcess(PrintJob.INIT);
                return;
            }
        }

        Map<String, Object> eventData = new HashMap<>();
        eventData.put("errCode", errCode);
        eventData.put("total", totalJobCount());
        eventData.put("remain", remainJobCount());
        event.occur(EVT_END, "print end", eventData);
        callback.call(errCode);
    }

    private void doPrint(String data, int cutMode, String printerName, Map<String, Object> eventData, ICallback<Integer> callback) {
        String type = getPrinterType(getPrinterIdx(printerName));
        String port = "";

        if (PRINTER_TYPE_CENTERM_IMAGE.equals(type)) {
            makePrtHtml(printerName, data, cutMode, eventData, callback);
        } else {
            switch (getPrinterIdx(printerName)) {
                case PRINTER_RECEIPT:
                    receiptPrint(data, cutMode, port, eventData, callback);
                    break;
                case PRINTER_KITCHEN:
                    kitchenPrint(data, cutMode, port, eventData, callback);
                    break;
            }
        }
    }


    private void makePrtHtml(String printName, String html, final Integer paperCut, final Map<String, Object> eventData, ICallback<Integer> callback) {
        Log.d(TAG, "[PRINT][PrintService][" + printName + "] make html");

        if (Feature.PRINT_TO_HTML_FILE) {
            writeToFile(html, printName);
        }

        htmlRenderer.setLoadHtml(printName, html, getPrinterMaxChar(getPrinterIdx(printName)) * 12,
                (printName1, result) -> printBitmap(getPrinterIdx(printName1), result, paperCut, eventData, callback));
    }

    private void printBitmap(final int type, Bitmap data, Integer paperCut, final Map<String, Object> eventData, ICallback<Integer> callback) {
        Log.d(TAG, "[PRINT][PrintService] print bitmap: " + data.getWidth() + "px/" + data.getHeight() + "px");
        String name = getPrinterName(type);

        if (name == null) {
            return;
        }

        if (paperCut != null) {
            manager.setPaperCut(paperCut);
        }

        if (printExtra != null) {
            manager.setExtra(printExtra);
        }

        manager.print(name, data, errCode -> {
            Log.d(TAG, "Printer error: dst=" + type + ", error code=" + errCode);
            eventData.put("errCode", errCode);
            eventData.put("total", totalJobCount());
            eventData.put("remain", remainJobCount());
            event.occur(EVT_END, "print end", eventData);

            if (callback != null) {
                callback.call(errCode);
            }
        });
    }

    private void receiptPrint(String text, Integer paperCut, String address, Map<String, Object> eventData, ICallback<Integer> callback) {
        if (text == null) {
            return;
        }

        Log.d(TAG, "Receipt Print Device Call[" + text + "]");
        printText(PRINTER_RECEIPT, text, paperCut, address, eventData, callback);
    }

    private void kitchenPrint(String text, Integer paperCut, String address, Map<String, Object> eventData, ICallback<Integer> callback) {
        if (text == null) {
            return;
        }

        Log.d(TAG, "Kitchen Print Device Call[" + text + "]");
        printText(PRINTER_KITCHEN, text, paperCut, address, eventData, callback);
    }

    private void printText(final int type, String text, Integer paperCut, String address,
                           final Map<String, Object> eventData, ICallback<Integer> callback) {
        String name = getPrinterName(type);

        if (name == null) {
            return;
        }

        if (paperCut != null) {
            manager.setPaperCut(paperCut);
        }

        manager.setAddress(address);
        manager.print(name, text, errCode -> {
            Log.d(TAG, "Printer error: dst=" + type + ", error code=" + errCode);
            eventData.put("errCode", errCode);
            eventData.put("total", totalJobCount());
            eventData.put("remain", remainJobCount());
            event.occur(EVT_END, "print end", eventData);

            if (callback != null) {
                callback.call(errCode);
            }
        });
    }

    public void connect(int dst, final ICallback<Boolean> callback) {
        String name = getPrinterName(dst);

        if (name == null) {
            try {
                callback.call(false);
            } catch (Exception e) {
                e.printStackTrace();
            }

            return;
        }

        manager.connect(name, result -> {
            try {
                callback.call(result >= 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    public void close(String name) {
        manager.close(name);
    }

    private void writeToFile(String html, String filename) {
        File dir = new File(Environment.getExternalStorageDirectory(), "YoshopPOS");

        if (!dir.exists()) {
            //noinspection ResultOfMethodCallIgnored
            dir.mkdirs();
        }

        try {
            String path = dir + "/" + filename + ".html";
            FileOutputStream fOut = new FileOutputStream(path);
            OutputStreamWriter myOutWriter = new OutputStreamWriter(fOut);
            myOutWriter.append(html);
            myOutWriter.close();
            fOut.flush();
            fOut.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
