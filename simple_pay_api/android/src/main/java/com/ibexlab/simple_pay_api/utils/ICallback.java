package com.ibexlab.simple_pay_api.utils;

public interface ICallback<T> {
    void call(T result);
}
