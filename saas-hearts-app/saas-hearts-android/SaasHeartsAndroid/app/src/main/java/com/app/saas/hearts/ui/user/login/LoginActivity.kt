package com.app.saas.hearts.ui.user.login

import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.base.BaseActivity
import com.app.saas.hearts.databinding.ActivityLoginBinding

/**
 * 登录界面
 */
class LoginActivity : BaseActivity<ActivityLoginBinding, LoginViewModel>() {

    override fun initView() {

    }

    override fun initData() {

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): LoginViewModel? {
        return null
    }

    override fun getViewBinding(): ActivityLoginBinding {
        return ActivityLoginBinding.inflate(layoutInflater)
    }
}