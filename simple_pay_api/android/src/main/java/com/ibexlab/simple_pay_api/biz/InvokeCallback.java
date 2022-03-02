package com.ibexlab.simple_pay_api.biz;

import java.util.Map;

/**
 * Flutter 와 Java 간의 통신을 위해 사용되는 콜백 인터페이스
 */
public interface InvokeCallback {
    void call(int resCode, String message, Map<String, Object> result);
}
