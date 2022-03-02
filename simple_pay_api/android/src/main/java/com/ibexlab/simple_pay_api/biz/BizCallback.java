package com.ibexlab.simple_pay_api.biz;

import java.util.Map;

/**
 * 이전 POS 앱에서 제공된 ext, dev 모듈과 통신하기 위해 사용하는 콜백 인터페이스
 */
public interface BizCallback {
    void call(Map<String, Object> data);
}
