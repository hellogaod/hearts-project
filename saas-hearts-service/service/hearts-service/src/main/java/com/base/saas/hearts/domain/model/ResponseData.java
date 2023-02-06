package com.base.saas.hearts.domain.model;

import lombok.Data;

/**
 * @className: ResponseData
 * @author: 佛学徒
 * @date: 2023/2/6
 * @Description：
 **/
@Data
public class ResponseData<T> {
    private int code;
    private String msg;
    private T data;


}
