package com.app.saas.hearts.api;

import com.app.saas.hearts.entity.CustComment;
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
 * FileName: HttpCustComment
 * Author: 佛学徒
 * Date: 2023/1/4 17:26
 * Description:app评论api
 * History:
 */
public interface HttpCustCommentService {

    //新增
    @POST("/saas-hearts-service/api/custComment/addComment")
    Observable<ResponseDate> addComment(@Header("app-UserToken") String token, @Body CustComment custComment);

    //列表
    @GET("/saas-hearts-service/api/custComment/getCommentList")
    Observable<PageInfo<CustComment>> getCommentList(
            @Query("pageIndex") int pageIndex,
            @Query("pageSize") int pageSize,
            @Query("talkId") String talkId,
            @Query("status") int status);

}
