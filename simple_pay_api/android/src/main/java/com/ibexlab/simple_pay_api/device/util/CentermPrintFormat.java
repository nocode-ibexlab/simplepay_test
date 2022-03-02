package com.ibexlab.simple_pay_api.device.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Environment;
import android.os.RemoteException;
import android.util.Log;

import com.centerm.smartpos.aidl.newprinter.AidlNewPrinter;
import com.centerm.smartpos.aidl.newprinter.PrinterParamTag;
import com.centerm.smartpos.aidl.newprinter.PrinterState;
import com.centerm.smartpos.aidl.newprinter.param.BitmapPrintItemParam;
import com.centerm.smartpos.aidl.newprinter.param.MultipleTextPrintItemParam;
import com.centerm.smartpos.aidl.newprinter.param.PrintItemAlign;
import com.centerm.smartpos.aidl.newprinter.param.QrPrintItemParam;
import com.centerm.smartpos.aidl.newprinter.param.TextPrintItemParam;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CentermPrintFormat extends PrintFormat {
    private static final String TAG = CentermPrintFormat.class.getSimpleName();
    private static final String FONT_DIR = Environment.getExternalStorageDirectory() + "/YoshopPOS/";
    private static final String FONT_FILE = "TGL_0-1451Eng.ttf";
    private static final int PAPER_SIZE = 42;
    private static final int SPLIT_PAPER = 3;
    private static final int PRINTER_GRAY = 0x20; // 0x10(고속, 연하게) ~ 0x40(저속, 진하게)
    private static final int LINE_SPACE = -4;
    private static final String DOT_LINE = "\u2501";

    public PrinterState print(AidlNewPrinter printer, String text) throws RemoteException {
        setPaperSize(PAPER_SIZE);
        Page page = createPage(text);
        printPage(printer, page);
        splitPaper(printer);

        printer.setPrinterGray(PRINTER_GRAY);
        Bundle bundle = new Bundle();
        bundle.putString(PrinterParamTag.TAG_PRINT_TYPEFACE_CN, FONT_DIR + FONT_FILE);
        bundle.putString(PrinterParamTag.TAG_PRINT_TYPEFACE_EN, FONT_DIR + FONT_FILE);
        return printer.printSync(bundle);
    }

    private void printPage(AidlNewPrinter printer, Page lines) throws RemoteException {
        Node currentAlign = NODE_ALIGN_LEFT;
        Node currentFont = NODE_FONT_C;

        nextLine:
        for (Line l : lines) {
            List<Line> columns = new ArrayList<>();
            Line column = null;
            boolean isCreateColumn = true;

            for (Node node : l) {
                switch (node.getType()) {
                    case TYPE_ALIGN:
                        currentAlign = node;
                        isCreateColumn = true;
                        break;
                    case TYPE_FONT:
                        currentFont = node;
                        isCreateColumn = true;
                        break;
                    case TYPE_GSV:
                    case TYPE_DOT_LINE:
                        column = new Line();

                        if (node.getType() == TYPE_GSV) {
                            column.add(node);
                            printer.addTextPrintItem(getPrintItemParam(column));
                        } else {
                            printer.addTextPrintItem(getDotLinePrintItemParam());
                        }

                        continue nextLine;
                    case TYPE_TEXT:
                        if (isCreateColumn && !node.getData().isEmpty()) {
                            isCreateColumn = false;
                            column = new Line();
                            column.add(currentAlign);
                            column.add(currentFont);
                            columns.add(column);
                        }

                        if (column != null) {
                            column.add(node);
                        }

                        break;
                    case TYPE_IMAGE:
                        BitmapPrintItemParam bitmapParam = getPrintItemParam(node, currentAlign);

                        if (bitmapParam != null) {
                            printer.addBitmapPrintItem(bitmapParam);
                            continue nextLine;
                        }
                        break;
                    case TYPE_QR:
                        QrPrintItemParam param = getQRPrintItemParam(node, currentAlign);
                        printer.addQrPrintItemParam(param);
                        continue nextLine;
                }
            }

            if (columns.size() == 1) {
                printer.addTextPrintItem(getPrintItemParam(columns.get(0)));
            } else if (columns.size() > 1) {
                printer.addMultipleTextPrintItem(getPrintItemParam(columns));
            }
        }
    }

    private TextPrintItemParam getPrintItemParam(Line line) {
        StringBuilder sb = new StringBuilder();
        int alignment = -1;
        int font = -1;

        for (Node node : line) {
            switch (node.getType()) {
                case TYPE_ALIGN:
                    if (alignment == -1) {
                        alignment = getAlignment(node);
                    }
                    break;
                case TYPE_FONT:
                    if (font == -1) {
                        font = getFont(node);
                    }
                    break;
                case TYPE_TEXT:
                    sb.append(node.getData());
                    break;
            }
        }

        TextPrintItemParam param = new TextPrintItemParam();
        param.setLineSpace(LINE_SPACE);
        param.setContent(sb.toString());

        switch (font) {
            case FONT_A:
                param.setScaleWidth(1.5f);
                param.setScaleHeight(1.5f);
                param.setBold(true);
                break;
            case FONT_B:
                param.setScaleWidth(1.5f);
                param.setBold(true);
                break;
            case FONT_D:
                param.setScaleWidth(1.5f);
                param.setScaleHeight(1.5f);
                break;
            case FONT_E:
                param.setBold(true);
                break;
        }

        switch (alignment) {
            case ALIGN_RIGHT:
                param.setItemAlign(PrintItemAlign.RIGHT);
                break;
            case ALIGN_CENTER:
                param.setItemAlign(PrintItemAlign.CENTER);
                break;
            case ALIGN_LEFT:
            default:
                param.setItemAlign(PrintItemAlign.LEFT);
                break;
        }

        return param;
    }

    private TextPrintItemParam getDotLinePrintItemParam() {
        TextPrintItemParam param = new TextPrintItemParam();
        String line = new String(new char[paperSize / SIZE_FONT_C]).replace("\0", DOT_LINE);
        param.setContent(line);
        param.setLineSpace(LINE_SPACE);
        // 아래 scale 값은 실제 출력하면서 조정하였음 (DOT_LINE 에 영향 받음)
        param.setScaleWidth(0.5f);
        param.setScaleHeight(0.3f);
        return param;
    }

    private MultipleTextPrintItemParam getPrintItemParam(List<Line> columns) {
        float[] width = getColumnWidth(columns);
        TextPrintItemParam[] params = new TextPrintItemParam[columns.size()];

        for (int i = 0; i < columns.size(); i++) {
            params[i] = getPrintItemParam(columns.get(i));
        }

        return new MultipleTextPrintItemParam(width, params);
    }

    private BitmapPrintItemParam getPrintItemParam(Node image, Node align) {
        BitmapPrintItemParam param = new BitmapPrintItemParam();
        File file = new File(image.getData());

        if (!file.isFile()) {
            Log.w(TAG, "image file not found: " + file);
            return null;
        }

        try {
            BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
            byte[] bitmap = new byte[(int) file.length()];
            //noinspection ResultOfMethodCallIgnored
            bis.read(bitmap, 0, bitmap.length);
            Bitmap bmp = BitmapFactory.decodeByteArray(bitmap, 0, bitmap.length);
            // 기존 출력물의 로고 이미지 크기와 맞추기 위해서 1.5로 나눔 (hdpi 이미지)
            param.setWidth((int) (bmp.getWidth() / 1.5));
            param.setHeight((int) (bmp.getHeight() / 1.5));
            param.setBitmap(bitmap);

            switch (getAlignment(align)) {
                case ALIGN_RIGHT:
                    param.setItemAlign(PrintItemAlign.RIGHT);
                    break;
                case ALIGN_CENTER:
                    param.setItemAlign(PrintItemAlign.CENTER);
                    break;
                case ALIGN_LEFT:
                default:
                    param.setItemAlign(PrintItemAlign.LEFT);
                    break;
            }

            return param;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    private QrPrintItemParam getQRPrintItemParam(Node qr, Node align) {
        int maxChar=  CentermPrintFormat.PAPER_SIZE/2;
        int width = maxChar * SIZE_FONT_C;

        QrPrintItemParam param = new QrPrintItemParam();
        param.setQRCode(qr.getData());
        param.setQrWidth(width);

        switch (getAlignment(align)) {
            case ALIGN_RIGHT:
                param.setItemAlign(PrintItemAlign.RIGHT);
                break;
            case ALIGN_CENTER:
                param.setItemAlign(PrintItemAlign.CENTER);
                break;
            case ALIGN_LEFT:
            default:
                param.setItemAlign(PrintItemAlign.LEFT);
                break;
        }

        return param;
    }

    private void splitPaper(AidlNewPrinter printer) throws RemoteException {
        for (int i = 0; i < SPLIT_PAPER; i++) {
            TextPrintItemParam param = new TextPrintItemParam();
            param.setContent("\r");
            printer.addTextPrintItem(param);
        }
    }
}
