package com.ibexlab.simple_pay_api.utils;

public interface ICallback2<T1, T2> {
    void call(T1 result1, T2 result2) throws Exception;
}
