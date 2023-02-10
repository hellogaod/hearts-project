package com.app.saas.hearts.api;

import android.app.Application;

import com.app.saas.hearts.utils.cache.CacheConstant;
import com.app.saas.hearts.utils.cache.CacheManager;

import java.io.IOException;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: HttpManage
 * Author: 佛学徒
 * Date: 2023/1/4 9:25
 * Description:
 * History:
 */
public class HttpManage {
    private static HttpCustUserService httpCustUserService;
    private static HttpCustTalkService httpCustTalkService;
    private static HttpCustCommentService httpCustCommentService;
    private static HttpCommonService httpCommonService;

    private static String baseUrl = "http://192.168.102.19:9000";

    private static Application application;

    private static Retrofit retrofit;

    public static void setApplication(Application application) {
        HttpManage.application = application;
    }

    private static Retrofit getRetrofitInstall() {
        if (retrofit == null) {
            synchronized (HttpManage.class) {
                if (retrofit == null) {
                    String token = null;
                    if (application != null) {
                        token = CacheManager.getInstance()
                                .readCache(application.getApplicationContext(), CacheConstant.TOKEN, null, String.class);
                    }

                    // OkHttp3.0的使用方式
                    String finalToken = token;
                    OkHttpClient client = new OkHttpClient.Builder()
//                            .addInterceptor(signingInterceptor)
//                            .addInterceptor(loggingInterceptor)
                            .addInterceptor(new Interceptor() {
                                @Override
                                public Response intercept(Chain chain) throws IOException {
                                    Request originalRequest = chain.request();

                                    //加入header
                                    Request authorised = originalRequest.newBuilder()
                                            .header("app-UserToken", finalToken)
                                            .build();
                                    return chain.proceed(authorised);
                                }
                            })
                            .build();

                    retrofit = new Retrofit.Builder()                        //创建Retrofit的实例
                            .baseUrl(baseUrl)
                            .addConverterFactory(GsonConverterFactory.create())  //请求结果转换成实体类
                            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()) //适配Rxjava
                            .client(client)
                            .build();

                }
            }
        }
        return retrofit;
    }

    public static HttpCustUserService getHttpCustUserService() {
        getRetrofitInstall();
        if (httpCustUserService == null) {
            synchronized (HttpManage.class) {
                if (httpCustUserService == null) {

                    httpCustUserService = retrofit.create(HttpCustUserService.class);
                }
            }
        }
        return httpCustUserService;
    }

    public static HttpCustTalkService getHttpCustTalkService() {
        getRetrofitInstall();
        if (httpCustTalkService == null) {
            synchronized (HttpManage.class) {
                if (httpCustTalkService == null) {

                    httpCustTalkService = retrofit.create(HttpCustTalkService.class);
                }
            }
        }
        return httpCustTalkService;
    }

    public static HttpCustCommentService getHttpCustCommentService() {
        getRetrofitInstall();
        if (httpCustCommentService == null) {
            synchronized (HttpManage.class) {
                if (httpCustCommentService == null) {

                    httpCustCommentService = retrofit.create(HttpCustCommentService.class);
                }
            }
        }
        return httpCustCommentService;
    }

    public static HttpCommonService getHttpCommonService() {
        getRetrofitInstall();
        if (httpCommonService == null) {
            synchronized (HttpManage.class) {
                if (httpCommonService == null) {

                    httpCommonService = retrofit.create(HttpCommonService.class);
                }
            }
        }
        return httpCommonService;
    }
}
