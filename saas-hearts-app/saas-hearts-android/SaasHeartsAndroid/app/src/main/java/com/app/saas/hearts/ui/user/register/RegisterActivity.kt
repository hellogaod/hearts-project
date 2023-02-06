package com.app.saas.hearts.ui.user.register

import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.base.BaseActivity
import com.app.saas.hearts.databinding.ActivityRegisterBinding

/**
 * 登录界面
 */
class RegisterActivity : BaseActivity<ActivityRegisterBinding, RegisterViewModel>() {

    override fun initView() {

    }

    override fun initData() {

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): RegisterViewModel? {
        return ViewModelProvider(this).get(RegisterViewModel::class.java)
    }

    override fun getViewBinding(): ActivityRegisterBinding {
        return ActivityRegisterBinding.inflate(layoutInflater)
    }
}