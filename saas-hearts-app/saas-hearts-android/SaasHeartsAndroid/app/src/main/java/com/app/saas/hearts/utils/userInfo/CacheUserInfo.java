package com.app.saas.hearts.utils.userInfo;

import android.content.Context;

import com.app.saas.hearts.entity.UserInfo;
import com.app.saas.hearts.utils.StringUtils;
import com.app.saas.hearts.utils.cache.CacheConstant;
import com.app.saas.hearts.utils.cache.CacheManager;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: CacheUserInfo
 * Author: 佛学徒
 * Date: 2023/2/10 9:36
 * Description: 缓存userinfo/token信息
 * History:
 */
public class CacheUserInfo {

    public static void setUserInfo(Context context,UserInfo userInfo){
        if (userInfo != null){
            CacheManager.getInstance().storageCache(context,CacheConstant.USER_INFO,userInfo,true,1);
        }
    }

    public static UserInfo getUserInfo(Context context){
        return  CacheManager.getInstance()
                .readCache(context, CacheConstant.USER_INFO, null, UserInfo.class);
    }


    public static String getUserId(Context context){
        UserInfo userInfo = getUserInfo(context);
        if (userInfo != null){
            return userInfo.getUserId();
        }
        return null;
    }

    public static void setToken(Context context,String token){
        if (token != null){
            CacheManager.getInstance().storageCache(context,CacheConstant.TOKEN,token,true,1);
        }
    }
    public static String getToken(Context context){
        return  CacheManager.getInstance()
                .readCache(context, CacheConstant.TOKEN, "", String.class);
    }

  public static boolean hasToken(Context context){
        return StringUtils.isNotEmpty(getToken(context));
  }

  public static void clearUserInfoAndToken(Context context){
      CacheManager.getInstance().clearCache(context, CacheConstant.USER_INFO);
      CacheManager.getInstance().clearCache(context, CacheConstant.TOKEN);
  }
}
