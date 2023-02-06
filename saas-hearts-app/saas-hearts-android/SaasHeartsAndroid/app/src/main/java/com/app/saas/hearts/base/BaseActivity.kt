package com.app.saas.hearts.base

import android.os.Bundle
import android.view.MotionEvent
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.viewbinding.ViewBinding
import com.app.saas.hearts.utils.SoftKeyboardUtils

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: BaseActivity
 * Author: 佛学徒
 * Date: 2023/1/4 16:14
 * Description:
 * History:
 */
abstract class BaseActivity<V : ViewBinding?, M : ViewModel?> : AppCompatActivity() {

    protected var binding: V? = null
    protected var viewModel: M? = null

    // ------------------ 初始化共工作 start ---------------
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        //去掉左标题栏
        if (getSupportActionBar() != null) {
            getSupportActionBar()?.hide()
        }

        if (binding == null) {
            binding = getViewBinding()
            setContentView(binding?.root)
        }

        if (viewModel == null) {
            val viewModelProvider = ViewModelProvider(this)
            viewModel = getViewModel(viewModelProvider)
            initData()
            initView()
        }
    }

    /**
     * View初始化
     */
    abstract fun initView()

    /**
     * 初始化数据
     */
    abstract fun initData()

    abstract fun getViewModel(viewModelProvider: ViewModelProvider?): M?

    /**
     * 初始化viewbinding
     *
     * @return
     */
    abstract fun getViewBinding(): V

    open fun clearView() {}
    open fun clearData() {}

    override fun onDestroy() {
        clearView()
        clearData()

        binding = null
        viewModel = null
        super.onDestroy()
    }

    // ------------------ 初始化共工作 end ---------------

    //------------ 防止段时间内快速点击 start ----------------------
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
    //------------ 防止段时间内快速点击 end ----------------------

    //------------ 判断软键盘如果开启，关闭软键盘 start -----------------
    override fun onPause() {
        super.onPause()
        hideSoftKeyBoard()
    }

    open fun hideSoftKeyBoard() {
        //如果软键盘开启，关闭软键盘
        if (SoftKeyboardUtils.isSoftShowing(this)) {
            SoftKeyboardUtils.hideSoftKeyboard(this)
        }
    }
    //------------ 判断软键盘如果开启，关闭软键盘 end  -----------------
}