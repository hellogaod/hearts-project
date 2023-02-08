package com.app.saas.hearts.api;

import com.app.saas.hearts.entity.CustUser;
import com.app.saas.hearts.entity.PageInfo;
import com.app.saas.hearts.entity.ResponseDate;
import com.app.saas.hearts.entity.UserInfo;

import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: HttpCustUserService
 * Author: 佛学徒
 * Date: 2023/1/4 17:25
 * Description:app用户api
 * History:
 */
public interface HttpCustUserService {

    //注册
    @POST("/saas-hearts-service/api/custUser/register")
    Observable<ResponseDate> register(@Body CustUser custUser);

    //登录
    @POST("/saas-hearts-service/api/custUser/doLogin")
    Observable<UserInfo> doLogin(@Body CustUser custUser);

    //获取详情
    @GET("/saas-hearts-service/api/custUser/getUserDetailById")
    Observable<CustUser> getUserDetailById(@Query("userId") String userId);

    //列表
    @GET("/saas-hearts-service/api/custUser/getList")
    Observable<PageInfo<CustUser>> getList(@Query("pageIndex") int pageIndex, @Query("pageSize") int pageSize, @Query("status") int status);
}
