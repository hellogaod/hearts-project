package com.app.saas.hearts.ui.user.forgetpwd

import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivityForgetpwdBinding

/**
 * 忘记密码
 */
class ForgetPasswordActivity :
    IncludeHeaderBaseActivity<ActivityForgetpwdBinding, ForgetPasswordViewModel>(),
    View.OnClickListener {

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

    override fun initIncludeView() {
        includeHeaderBinding?.ivBack?.setOnClickListener(this)
        includeHeaderBinding?.tvTitle?.setText("忘记密码")
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {

                R.id.iv_back -> {//销毁当前页面
                    finish()
                }
            }
        }
    }
}