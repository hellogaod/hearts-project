package com.app.saas.hearts.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/**
 * 项 目 名: basic基础 <br/>
 * 修 改 人: 高强<br/>
 * 修改时间:2019/11/21<br/>
 * 功能描述:时间工具类<br/>
 */
public class DateUtils {

    //时间转换成HH:MM:SS格式
    public static String dateTransToHHMMSS(Date currentServiceDate) {
        String strCurrentTime = "";

        if (currentServiceDate != null) {
            SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
            strCurrentTime = formatter.format(currentServiceDate);
        }

        return strCurrentTime;
    }


    /**
     * * 功能描述:显示时间规则:
     * * * 1分钟内，显示x秒前；
     * * * 2.1小时内，显示X分钟前
     * * * 3.24小时以内，显示X小时前；
     * * * 4.7天内，显示X天前；
     * * * 5.30天以内，显示X周前；
     * * * 6.12个月以内，显示X月前；
     * * * 7.12月以外显示X年前<br/>
     *
     * @param createTime         创建时间
     * @param currentServiceDate 服务器当前时间
     * @return
     */
    public static String dateTransSpecialFormat(Date createTime, Date currentServiceDate) {
        String dateStr = "";
        if (createTime != null && currentServiceDate != null) {
            //秒
            long nSecond = 1000;
            //分钟
            long nMinute = nSecond * 60;
            //小时
            long nHour = nMinute * 60;
            //天数
            long nDay = nHour * 24;
            //周
            long nWeek = nDay * 7;
            //月
            long nMonth = nDay * 30;
            //年
            long nYear = nMonth * 12;

            long diff = currentServiceDate.getTime() - createTime.getTime();

            if (diff / nYear > 0) {
                dateStr = diff / nYear + "年前";
            } else if (diff / nMonth > 0) {
                dateStr = diff / nMonth + "个月前";
            } else if (diff / nWeek > 0) {
                dateStr = diff / nWeek + "周前";
            } else if (diff / nDay > 0) {
                dateStr = diff / nDay + "天前";
            } else if (diff / nHour > 0) {
                dateStr = diff / nHour + "小时前";
            } else if (diff / nMinute > 0) {
                dateStr = diff / nMinute + "分钟前";
            } else if (diff / nSecond > 0) {
                dateStr = diff / nSecond + "秒前";
            } else {
                dateStr = "刚刚";
            }
        }
        return dateStr;
    }

    //是否同一天
    public static boolean isSameDate(Date date1, Date date2) {
        try {
            Calendar cal1 = Calendar.getInstance();
            cal1.setTime(date1);

            Calendar cal2 = Calendar.getInstance();
            cal2.setTime(date2);

            boolean isSameYear = cal1.get(Calendar.YEAR) == cal2
                    .get(Calendar.YEAR);
            boolean isSameMonth = isSameYear
                    && cal1.get(Calendar.MONTH) == cal2.get(Calendar.MONTH);
            boolean isSameDate = isSameMonth
                    && cal1.get(Calendar.DAY_OF_MONTH) == cal2
                    .get(Calendar.DAY_OF_MONTH);

            return isSameDate;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}
