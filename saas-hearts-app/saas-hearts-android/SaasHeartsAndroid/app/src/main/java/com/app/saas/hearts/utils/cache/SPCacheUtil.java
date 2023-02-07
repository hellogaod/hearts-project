package com.app.saas.hearts.utils.cache;

import android.content.Context;
import android.content.SharedPreferences;

import com.app.saas.hearts.utils.StringUtils;
import com.app.saas.hearts.utils.gson.GsonUtil;
import com.google.gson.internal.LinkedTreeMap;

import java.lang.ref.WeakReference;

/**
 * 注：1.如果不是永久有效存储一定会有个时间，最长不会超过一周
 * 2.该方法不允许外界直接使用，必须在CacheManager方法中使用
 */
 class SPCacheUtil {

    private static SPCacheUtil spCacheUtil;

     static SPCacheUtil getInstance() {

        if (spCacheUtil == null) {
            synchronized (SPCacheUtil.class) {
                if (spCacheUtil == null) {
                    spCacheUtil = new SPCacheUtil();
                }
            }
        }

        return spCacheUtil;
    }


    /**
     * sharedpreference工具类
     */
    private final String NAME = "fo-sheng-yu-lv";
    private SharedPreferences sp;

    //保存时间单位
     final int TIME_SECOND = 1;
     final int TIME_MINUTES = 60 * TIME_SECOND;
     final int TIME_HOUR = 60 * TIME_MINUTES;
     final int TIME_DAY = TIME_HOUR * 24;
     final int TIME_WEEK = TIME_DAY * 7;//除了永久有效外，最长时间单位就是1周，存储不会超过一周
     final int DURATION_UNIT = 1000;


     final int EDIT_TIME = TIME_MINUTES * 10;//编辑类，保存时间一律统一:10分钟

    /**
     * @param contextWeakReference
     * @param key
     * @param value
     * @param timeEffictive        是否设置有效时间
     * @param saveTime             只有timeEffictive = true，该字段才有效
     * @param <T>                  String,Boolean,object,int等等类型
     */
     <T> void putObject(WeakReference<Context> contextWeakReference, String key, T value, boolean timeEffictive, int saveTime) {
        if (contextWeakReference == null || contextWeakReference.get() == null) {
            return;
        }
        if (sp == null) {
            sp = contextWeakReference.get().getSharedPreferences(NAME, Context.MODE_PRIVATE);
        }

        SpSaveBean<T> spSaveModel = new SpSaveBean<>(saveTime, value, timeEffictive);
        String json = GsonUtil.GsonToString(spSaveModel);
        sp.edit().putString(key, json).commit();
    }

    /**
     * @param contextWeakReference
     * @param key
     * @param defValue             不能传递null，例如new UserPersonBean()
     * @param cls                  不是对象，则传递null即可
     * @param <T>
     * @return
     */
     <T> T getObject(WeakReference<Context> contextWeakReference, String key, T defValue, Class<T> cls) {
        if (contextWeakReference == null || contextWeakReference.get() == null) {
            return defValue;
        }

        if (sp == null) {
            sp = contextWeakReference.get().getSharedPreferences(NAME, Context.MODE_PRIVATE);
        }
        String json = sp.getString(key, "");
        if (!StringUtils.isEmpty(json)) {
            SpSaveBean<T> spSaveBean = GsonUtil.GsonToBean(json, SpSaveBean.class);
            if (spSaveBean.isTimeEffictive()) {//如果有效时间可用
                if (!isTimeOut(spSaveBean.getCurrentTime(), spSaveBean.getSaveTime())) {//没有超时
                    return unKnownToEntity(spSaveBean.getValue(), cls);

                } else {//超时清除
                    clear(contextWeakReference, key);
                }
            } else {
                return unKnownToEntity(spSaveBean.getValue(), cls);
            }
        }

        return defValue;
    }

    /**
     * 转换为实体
     *
     * @param value
     * @param cls
     * @param <T>
     * @return
     */
    private <T> T unKnownToEntity(T value, Class<T> cls) {
        if (cls != null) {//如果是bean，则会先转换成linkeTreeMap，所以需要转换成对象
            LinkedTreeMap<String, Object> linkedTreeMap = (LinkedTreeMap) value;
            String dataStr = GsonUtil.GsonToString(linkedTreeMap);
            return GsonUtil.GsonToBean(dataStr, cls);
        } else {
            return value;
        }
    }


    @SuppressWarnings("unchecked")
     void clear(WeakReference<Context> contextWeakReference, String key) {

        if (contextWeakReference == null || contextWeakReference.get() == null) {
            return;
        }

        if (sp == null) {
            sp = contextWeakReference.get().getSharedPreferences(NAME, Context.MODE_PRIVATE);
        }
        SharedPreferences.Editor editor = sp.edit();
        editor.remove(key);
        editor.commit();
    }

    private boolean isTimeOut(long saveCurrentTime, int saveTime) {
        return !((System.currentTimeMillis() - saveCurrentTime) / DURATION_UNIT < saveTime);
    }


}
