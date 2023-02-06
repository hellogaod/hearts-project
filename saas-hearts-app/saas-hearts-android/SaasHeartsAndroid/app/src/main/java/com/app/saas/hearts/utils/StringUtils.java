package com.app.saas.hearts.utils;

/**
 * 项 目 名: basic基础 <br/>
 * 修 改 人: 高强<br/>
 * 修改时间:2019/9/9<br/>
 * 功能描述:字符串工具类<br/>
 */
public class StringUtils {

    //判断是否为空
    public static boolean isEmpty(String s) {
        if (s == null || s.equals("")) {
            return true;
        }
        return false;
    }

    //判断不为空
    public static boolean isNotEmpty(String s) {
        if (s != null && !s.equals("")) {
            return true;
        }
        return false;
    }

    /**
     * 判断对象是否为空，如果为空，返回“”； 如果不为空，返回对象的toString()
     *
     * @param o 被判断的对象
     * @return
     */
    public static String removeNull(Object o) {
        if (o == null) {
            return "";
        }
        return o.toString().trim();
    }
}
