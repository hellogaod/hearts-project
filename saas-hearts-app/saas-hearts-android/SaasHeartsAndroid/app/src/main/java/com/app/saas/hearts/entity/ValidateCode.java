package com.app.saas.hearts.entity;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: ValidateCode
 * Author: 佛学徒
 * Date: 2023/2/6 14:16
 * Description: 图形验证码
 * History:
 */
public class ValidateCode {

    private String key;//key

    private String code;//base64图片

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
