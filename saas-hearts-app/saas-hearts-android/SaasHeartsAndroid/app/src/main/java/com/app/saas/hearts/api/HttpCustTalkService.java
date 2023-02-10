package com.app.saas.hearts.api;

import com.app.saas.hearts.entity.CustTalk;
import com.app.saas.hearts.entity.PageInfo;
import com.app.saas.hearts.entity.ResponseDate;

import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Query;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: HttpCustTalkService
 * Author: 佛学徒
 * Date: 2023/1/4 17:26
 * Description: app话题api
 * History:
 */
public interface HttpCustTalkService {

    //新增
    @POST("/saas-hearts-service/api/custTalk/addTalk")
    Observable<ResponseDate> addTalk(@Header("app-UserToken") String token,@Body CustTalk custTalk);

    //列表
    @GET("/saas-hearts-service/api/custTalk/getTalkList")
    Observable<PageInfo<CustTalk>> getTalkList(@Query("pageIndex") int pageIndex, @Query("pageSize") int pageSize,@Query("createrUserId") String createrUserId, @Query("status") int status);

    //详情
    @GET("/saas-hearts-service/api/custTalk/getTalkDetail")
    Observable<CustTalk> getTalkDetail(@Query("talkId") int talkId);

}
