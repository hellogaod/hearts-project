package com.app.saas.hearts.api;

import com.app.saas.hearts.entity.ValidateCode;

import io.reactivex.Observable;
import retrofit2.http.GET;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: HttpCustUserService
 * Author: 佛学徒
 * Date: 2023/1/4 17:25
 * Description: 常用service
 * History:
 */
public interface HttpCommonService {

    //图形验证码
    @GET("/saas-common-service/api/validate/code/get")
    Observable<ValidateCode> imgCode();
}
