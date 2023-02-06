package com.app.saas.hearts.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodManager;

import java.lang.ref.WeakReference;

import androidx.annotation.NonNull;

/**
 * 项 目 名: basic基础 <br/>
 * 修 改 人: 高强<br/>
 * 修改时间:2019/9/12<br/>
 * 功能描述:软键盘工具类<br/>
 */
public class SoftKeyboardUtils {

    /**
     * 隐藏或显示软键盘
     * 如果现在是显示调用后则隐藏 反之则显示
     *
     * @param activity
     */
    public static void showORhideSoftKeyboard(@NonNull Activity activity) {
        WeakReference<Activity> activityWeakReference = new WeakReference<>(activity);
        if (activityWeakReference != null && activityWeakReference.get() != null) {
            InputMethodManager imm = (InputMethodManager) activityWeakReference.get().getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.toggleSoftInput(0, InputMethodManager.HIDE_NOT_ALWAYS);
        }

    }

    /**
     * 强制显示软键盘
     *
     * @param activity
     */
    public static void showSoftKeyboard(@NonNull Activity activity) {
        WeakReference<Activity> activityWeakReference = new WeakReference<>(activity);
        if (activityWeakReference != null && activityWeakReference.get() != null) {
            InputMethodManager imm = (InputMethodManager) activityWeakReference.get().getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.showSoftInput(activityWeakReference.get().getWindow().getDecorView(), InputMethodManager.SHOW_FORCED);
        }

    }

    /**
     * 强制隐藏软键盘
     *
     * @param activity
     */
    public static void hideSoftKeyboard(@NonNull Activity activity) {
        WeakReference<Activity> activityWeakReference = new WeakReference<>(activity);
        if (activityWeakReference != null && activityWeakReference.get() != null) {
            InputMethodManager imm = (InputMethodManager) activityWeakReference.get().getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(activityWeakReference.get().getCurrentFocus().getWindowToken(), 0); //强制隐藏键盘
        }

    }

    /**
     * 调用系统方法 强制隐藏软键盘
     *
     * @param activity
     */
    public static void hideSystemSoftKeyboard(@NonNull Activity activity) {
        WeakReference<Activity> activityWeakReference = new WeakReference<>(activity);
        if (activityWeakReference != null && activityWeakReference.get() != null) {
            ((InputMethodManager) activityWeakReference.get().getSystemService(Context.INPUT_METHOD_SERVICE)).
                    hideSoftInputFromWindow(activityWeakReference.get().getCurrentFocus().getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);

        }
    }

    /**
     * 判断软键盘是否显示方法
     *
     * @param activity
     * @return
     */

    public static boolean isSoftShowing(@NonNull Activity activity) {
        WeakReference<Activity> activityWeakReference = new WeakReference<>(activity);
        if (activityWeakReference != null && activityWeakReference.get() != null) {
            //获取当屏幕内容的高度
            int screenHeight = activityWeakReference.get().getWindow().getDecorView().getHeight();
            //获取View可见区域的bottom
            Rect rect = new Rect();
            //DecorView即为activity的顶级view
            activityWeakReference.get().getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            //考虑到虚拟导航栏的情况（虚拟导航栏情况下：screenHeight = rect.bottom + 虚拟导航栏高度）
            //选取screenHeight*2/3进行判断
            return screenHeight * 2 / 3 > rect.bottom + getSoftButtonsBarHeight(activityWeakReference);
        }

        return false;
    }

    /**
     * 底部虚拟按键栏的高度
     *
     * @return
     */
    @TargetApi(Build.VERSION_CODES.JELLY_BEAN_MR1)
    private static int getSoftButtonsBarHeight(@NonNull WeakReference<Activity> activityWeakReference) {
        DisplayMetrics metrics = new DisplayMetrics();
        //这个方法获取可能不是真实屏幕的高度
        activityWeakReference.get().getWindowManager().getDefaultDisplay().getMetrics(metrics);
        int usableHeight = metrics.heightPixels;
        //获取当前屏幕的真实高度
        activityWeakReference.get().getWindowManager().getDefaultDisplay().getRealMetrics(metrics);
        int realHeight = metrics.heightPixels;
        if (realHeight > usableHeight) {
            return realHeight - usableHeight;
        } else {
            return 0;
        }
    }
}