package com.app.saas.hearts;

import android.app.Application;

import com.app.saas.hearts.api.HttpManage;

import androidx.multidex.MultiDex;


public class MyApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();

        //加在这里
        MultiDex.install(this);


        HttpManage.setApplication(this);
    }
}
