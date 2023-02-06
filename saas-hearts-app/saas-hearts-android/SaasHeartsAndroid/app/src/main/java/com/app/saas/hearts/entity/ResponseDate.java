package com.app.saas.hearts.entity;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: ResponseDate
 * Author: 佛学徒
 * Date: 2023/2/6 17:32
 * Description:
 * History:
 */
public class ResponseDate<T> {
    private int code;
    private String msg;
    private T data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
