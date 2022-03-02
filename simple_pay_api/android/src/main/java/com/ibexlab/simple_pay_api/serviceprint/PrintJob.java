package com.ibexlab.simple_pay_api.serviceprint;

public class PrintJob {
    public static final int INIT = 0;
    public static final int WAITING = 1;

    private final String printName; // "RECEIPT" , "KITCHEN"
    private final String data;
    private final int cutMode; // DeviceManagerService.FULL_CUT
    int process; // init:0, wait:1

    public PrintJob(String printName, String data, int cutMode, int process) {
        this.printName = printName;
        this.data = data;
        this.cutMode = cutMode;
        this.process = process;
    }

    public String getPrintName() {
        return printName;
    }

    public String getData() {
        return data;
    }

    public int getCutMode() {
        return cutMode;
    }

    public int getProcess() {
        return process;
    }

    public void setProcess(int process) {
        this.process = process;
    }
}