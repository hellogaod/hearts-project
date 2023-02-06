package com.app.saas.hearts.utils;

import android.content.Context;
import android.widget.Toast;

import java.lang.ref.WeakReference;

/**
 * 吐丝工具类
 */
public class ToastUtil {

    public static void show(Context context, String msg) {
        if (context != null) {
            Toast.makeText(context, msg, Toast.LENGTH_SHORT).show();
        }

    }

    public static void show(WeakReference<Context> mContext, String msg) {
        if (mContext != null && mContext.get() != null) {
            Toast.makeText(mContext.get(), msg, Toast.LENGTH_SHORT).show();
        }
    }

    public static void show(Context context, int stringId) {
        if (context != null) {
            WeakReference<Context> mContext = new WeakReference<>(context);
            if (mContext != null && mContext.get() != null) {
                Toast.makeText(mContext.get(), stringId, Toast.LENGTH_SHORT).show();
            }
        }
    }

    public static void show(WeakReference<Context> mContext, int stringId) {

        if (mContext != null && mContext.get() != null) {
            Toast.makeText(mContext.get(), stringId, Toast.LENGTH_SHORT).show();
        }
    }
}
