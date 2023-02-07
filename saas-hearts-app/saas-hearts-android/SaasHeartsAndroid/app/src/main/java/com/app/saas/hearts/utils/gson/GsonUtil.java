package com.app.saas.hearts.utils.gson;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * Created by 佛学徒 on 2019/6/4.<br/>
 * 功能描述：gson解析
 */
public class GsonUtil {
    private static Gson gson = null;

    /**
     * 将object对象转成json字符串,list也可以
     *
     * @param object
     * @return
     */
    public static String GsonToString(Object object) {
        String gsonString = null;
        if (gson == null) {
            gson = getGson();
        }
        gsonString = gson.toJson(object);

        return gsonString;
    }


    /**
     * 将gsonString转成泛型bean
     *
     * @param gsonString
     * @param cls
     * @return
     */
    public static <T> T GsonToBean(String gsonString, Class<T> cls) {
        if (gsonString == null && gsonString.equals("")) {
            return null;
        }

        T t = null;
        if (gson == null) {
            gson = getGson();
        }
        t = gson.fromJson(gsonString, cls);

        return t;
    }


    /**
     * 转成list
     * 解决泛型问题
     *
     * @param json
     * @param cls
     * @param <T>
     * @return
     */
    public static <T> List<T> jsonToList(String json, Class<T> cls) {
        try {
            Gson gson = getGson();
            List<T> list = new ArrayList<T>();
            JsonArray array = new JsonParser().parse(json).getAsJsonArray();
            for (final JsonElement elem : array) {
                list.add(gson.fromJson(elem, cls));
            }
            return list;
        } catch (Exception e) {
            return null;
        }

    }


    /**
     * 转成list中有map的
     *
     * @param gsonString
     * @return
     */
    public static <Object> List<Map<String, Object>> GsonToListMaps(String gsonString) {
        List<Map<String, Object>> list = null;
        if (gson == null) {
            gson = getGson();
        }
        list = gson.fromJson(gsonString,
                new TypeToken<List<Map<String, Object>>>() {
                }.getType());

        return list;
    }


    /**
     * 转成map的
     *
     * @param gsonString
     * @return
     */
    public static <T> Map<String, T> GsonToMaps(String gsonString) {
        Map<String, T> map = null;
        if (gson == null) {
            gson = getGson();
        }
        map = gson.fromJson(gsonString, new TypeToken<Map<String, T>>() {
        }.getType());

        return map;
    }

    public static Gson getGson() {
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
        try {
            Field factories = Gson.class.getDeclaredField("factories");
            factories.setAccessible(true);
            Object o = factories.get(gson);
            Class<?>[] declaredClasses = Collections.class.getDeclaredClasses();
            for (Class c : declaredClasses) {
                if ("java.util.Collections$UnmodifiableList".equals(c.getName())) {
                    Field listField = c.getDeclaredField("list");
                    listField.setAccessible(true);
                    List<TypeAdapterFactory> list = (List<TypeAdapterFactory>) listField.get(o);
                    int i = list.indexOf(ObjectTypeAdapter.FACTORY);
                    list.set(i, MapTypeAdapter.FACTORY);
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return gson;
    }
}
