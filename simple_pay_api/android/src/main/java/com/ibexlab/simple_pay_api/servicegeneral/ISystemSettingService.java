package com.ibexlab.simple_pay_api.servicegeneral;

public interface ISystemSettingService {
    void powerReboot(Callback callback);

    void setTime(int year, int month, int day, int hour, int min, int sec, Callback callback);

    interface Callback {
        void call(int result);
    }
}
