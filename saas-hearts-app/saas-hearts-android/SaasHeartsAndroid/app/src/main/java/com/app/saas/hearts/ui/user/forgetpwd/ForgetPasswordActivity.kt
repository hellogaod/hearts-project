package com.app.saas.hearts.ui.user.forgetpwd

import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.base.BaseActivity
import com.app.saas.hearts.databinding.ActivityForgetpwdBinding

/**
 * 登录界面
 */
class ForgetPasswordActivity : BaseActivity<ActivityForgetpwdBinding, ForgetPasswordViewModel>() {

    override fun initView() {

    }

    override fun initData() {

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): ForgetPasswordViewModel? {
        return ViewModelProvider(this).get(ForgetPasswordViewModel::class.java)
    }

    override fun getViewBinding(): ActivityForgetpwdBinding {
        return ActivityForgetpwdBinding.inflate(layoutInflater)
    }
}