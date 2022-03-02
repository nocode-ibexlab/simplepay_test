package com.ibexlab.simple_pay_api.utils;

import java.util.Map;

/**
 * Flutter 와 Java 간의 통신을 위해 사용되는 이벤트 인터페이스
 */
public interface InvokeEvent {
    void occur(int resCode, String message, Map<String, Object> data);
}
