package com.app.saas.hearts;

import android.app.Application;

import androidx.multidex.MultiDex;


public class MyApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();

        //加在这里
        MultiDex.install(this);
    }
}
