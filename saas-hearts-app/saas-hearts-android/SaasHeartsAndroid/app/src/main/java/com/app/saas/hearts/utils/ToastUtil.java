package com.app.saas.hearts.utils;

import android.app.Application;
import android.content.Context;
import android.widget.Toast;

import java.lang.ref.WeakReference;

/**
 * 吐丝工具类
 */
public class ToastUtil {

    public static void show(Application application, String msg) {
        if (application != null && msg != null) {
            Toast.makeText(application.getApplicationContext(), msg, Toast.LENGTH_SHORT).show();
        }

    }

}
