package com.ibexlab.simple_pay_api.biz;

import android.content.Context;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class BizBase {
    protected Context context;

    public void setContext(Context context) {
        this.context = context;
    }

    /**
     * API 호출
     * <p>
     * callback 을 사용하지 않고 sync 함수로 구현이 가능하나 작업해 보니 코드가 복잡해짐
     * 기존 POS 함수들이 ext 모듈 등과 통신하기 위해 Handler 를 이용한 async 함수로 구현되어 있음
     * sync 함수로 구현하기 위해서는 lock 을 사용해야 하고, Handler 로 통신할 수 있도록 Looper 를 포함하는 Thread 를 사용해야 함
     * <p>
     * flutter 와 java 간에는 sync/async 를 동시에 지원: FlutterMethodCallHandler.onMethodCall() 참조
     *
     * @param name     API 명
     * @param data     API 데이터
     * @param callback 응답 callback
     */
    public void invoke(String name, String data, InvokeCallback callback) throws BizException {
        try {
            Method m = getClass().getMethod(name, String.class, InvokeCallback.class);

            if (m.getAnnotation(BizApi.class) == null) {
                throw new BizException("Not BizApi method");
            }

            m.invoke(this, data, callback);
        } catch (NoSuchMethodException | IllegalAccessException e) {
            throw new BizException("Internal Error: " + e.getClass().getSimpleName());
        } catch (InvocationTargetException e) {
            if (e.getTargetException() != null) {
                e.getTargetException().printStackTrace();
                throw new BizException("Internal Error: " + e.getTargetException().getClass().getSimpleName());
            }

            throw new BizException("Internal Error: " + e.getClass().getSimpleName());
        } catch (Exception e) {
            e.printStackTrace();
            throw new BizException("Internal Error: " + e.getClass().getSimpleName());
        }
    }
}
