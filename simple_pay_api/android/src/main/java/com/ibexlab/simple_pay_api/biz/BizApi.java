package com.ibexlab.simple_pay_api.biz;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * API 로 사용하고자 하는 함수에는 @BizApi 를 선언해야 함
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface BizApi {
}
