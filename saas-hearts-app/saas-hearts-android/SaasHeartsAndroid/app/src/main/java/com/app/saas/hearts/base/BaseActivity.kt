package com.app.saas.hearts.base

import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.view.View
import android.view.WindowManager
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: BaseActivity
 * Author: 佛学徒
 * Date: 2023/1/4 16:14
 * Description:
 * History:
 */
 open class BaseActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //去掉左标题栏
        if (getSupportActionBar() != null){
            getSupportActionBar()?.hide()
        }
        //标题栏背景透明
        setStatusBar()
    }

    //是否使用特殊的标题栏背景颜色，android5.0以上可以设置状态栏背景色，如果不使用则使用透明色值
    protected var useThemestatusBarColor = false

    //是否使用状态栏文字和图标为暗色，如果状态栏采用了白色系，则需要使状态栏和图标为暗色，android6.0以上可以设置
    protected var useStatusBarColor = true
    protected fun setStatusBar() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) { //5.0及以上
            val decorView: View = window.decorView
            val option: Int = (View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_LAYOUT_STABLE)
            decorView.setSystemUiVisibility(option)
            //根据上面设置是否对状态栏单独设置颜色
            if (useThemestatusBarColor) {
                window.statusBarColor = resources.getColor(android.R.color.transparent) //设置状态栏背景色
            } else {
                window.statusBarColor = Color.TRANSPARENT //透明
            }
        } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) { //4.4到5.0
            val localLayoutParams = window.attributes
            localLayoutParams.flags =
                WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS or localLayoutParams.flags
        } else {
            Toast.makeText(this, "低于4.4的android系统版本不存在沉浸式状态栏", Toast.LENGTH_SHORT).show()
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && useStatusBarColor) { //android6.0以后可以对状态栏文字颜色和图标进行修改
            window.decorView.systemUiVisibility =
                View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
        }
    }
}