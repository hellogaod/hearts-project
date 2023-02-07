package com.app.saas.hearts.utils.cache;

import android.content.Context;

import com.app.saas.hearts.utils.gson.GsonUtil;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/**
 * 项 目 名: basic基础 <br/>
 * 修 改 人: 高强<br/>
 * 修改时间:2019/10/12<br/>
 * 功能描述:存储统一管理：三步骤：1.存（一般退出界面时存储）；2.取（直接塞入viewmodel中）；3.清理（一般在数据已经上传到服务器时，则清理）<br/>
 */
public class CacheManager {

    private static CacheManager cacheManager;

    public static CacheManager getInstance() {
        if (cacheManager == null) {
            synchronized (CacheManager.class) {
                if (cacheManager == null) {
                    cacheManager = new CacheManager();
                }
            }
        }

        return cacheManager;
    }

//    private boolean clearCache;//是否清除缓存：这里有个判断，如果true，则清除缓存，并且在同一个流程中不可以再次存储


    /**
     * 存储缓存
     *
     * @param context
     * @param key
     * @param value         值
     * @param timeEffictive 是否设置有效时间，如果true，则 time设置有效，否则表示存储永久有效
     * @param cachType      timeEffictive为true，设置存储有效时间类型：0：表示编辑类，统一10分钟；1：统一一周时间，比如登录界面身份证号
     * @param <T>
     */
    public <T> void storageCache(Context context, String key, T value, boolean timeEffictive, int cachType) {

        int time = SPCacheUtil.getInstance().TIME_WEEK;//默认一周
        if (cachType == 0) {//编辑类统一10分钟
            time = SPCacheUtil.getInstance().EDIT_TIME;//10分钟
        }

        SPCacheUtil.getInstance().putObject(new WeakReference<>(context), key, value, timeEffictive, time);
    }

    /**
     * 保存list集合数据
     *
     * @param context
     * @param key
     * @param value
     * @param timeEffictive
     * @param cachType
     * @param <T>
     */
    public <T> void storageListCache(Context context, String key, T value, Class<T> cls, boolean timeEffictive, int cachType) {
        int time = SPCacheUtil.getInstance().TIME_WEEK;//默认一周
        if (cachType == 0) {//编辑类统一10分钟
            time = SPCacheUtil.getInstance().EDIT_TIME;//10分钟
        }

        //1.获取list数据
        List list = readListCache(context, key, cls);

        if (list == null) {
            list = new ArrayList();
        }

        //2.塞入到数据集合中
        if (value != null) {
            list.add(0, value);
        }

        //3.转换成str类型
        String saveStr = GsonUtil.GsonToString(list);

        //4.存入sp
        SPCacheUtil.getInstance().putObject(new WeakReference<>(context), key, saveStr, timeEffictive, time);
    }

    /**
     * 获取缓存
     *
     * @param context
     * @param key
     * @param defValue
     * @param cls
     * @param <T>
     * @return
     */
    public <T> T readCache(Context context, String key, T defValue, Class<T> cls) {
        return SPCacheUtil.getInstance().getObject(new WeakReference<>(context), key, defValue, cls);
    }

    /**
     * 获取list缓存
     *
     * @param context
     * @param key
     * @param cls
     * @param <T>
     * @return
     */
    public <T> List<T> readListCache(Context context, String key, Class<T> cls) {
        String listStr = SPCacheUtil.getInstance().getObject(new WeakReference<>(context), key, null, null);

        List<T> list = null;
        if (listStr != null && !listStr.equals("")) {
            list = GsonUtil.jsonToList(listStr, cls);
        }

        return list;
    }


    /**
     * 清除缓存
     *
     * @param context
     * @param key
     */
    public void clearCache(Context context, String key) {
        SPCacheUtil.getInstance().clear(new WeakReference<>(context), key);
//        clearCache = true;
    }

}
