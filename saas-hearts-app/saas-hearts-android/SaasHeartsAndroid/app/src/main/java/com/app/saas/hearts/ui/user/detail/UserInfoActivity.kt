package com.app.saas.hearts.ui.user.detail

import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.base.BaseActivity
import com.app.saas.hearts.databinding.ActivityUserInfoBinding

/**
 * 登录界面
 */
class UserInfoActivity : BaseActivity<ActivityUserInfoBinding, UserInfoViewModel>() {

    override fun initView() {

    }

    override fun initData() {

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): UserInfoViewModel? {
        return ViewModelProvider(this).get(UserInfoViewModel::class.java)
    }

    override fun getViewBinding(): ActivityUserInfoBinding {
        return ActivityUserInfoBinding.inflate(layoutInflater)
    }
}