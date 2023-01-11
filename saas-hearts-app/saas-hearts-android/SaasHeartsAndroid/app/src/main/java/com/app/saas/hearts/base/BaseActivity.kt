package com.app.saas.hearts.base

import android.os.Bundle
import android.view.MotionEvent
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
    }

    override fun dispatchTouchEvent(ev: MotionEvent): Boolean { // 防止段时间内快速点击
        if (ev.action == MotionEvent.ACTION_DOWN) {
            if (isFastDoubleClick()) {
                return true
            }
        }
        return super.dispatchTouchEvent(ev)
    }

    private var lastClickTime: Long = 0

    open fun isFastDoubleClick(): Boolean {
        val time = System.currentTimeMillis()
        val timeD = time - lastClickTime
        return if (timeD >= 0 && timeD <= 500) { //最有效的应该是500毫秒，如果是200毫秒，因为手机反应过快，则照样会进入2次
            true
        } else {
            lastClickTime = time
            false
        }
    }
}