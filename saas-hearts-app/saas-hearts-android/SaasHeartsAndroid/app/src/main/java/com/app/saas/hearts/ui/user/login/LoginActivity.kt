package com.app.saas.hearts.ui.user.login

import android.content.Intent
import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.BaseActivity
import com.app.saas.hearts.databinding.ActivityLoginBinding
import com.app.saas.hearts.ui.user.forgetpwd.ForgetPasswordActivity
import com.app.saas.hearts.ui.user.register.RegisterActivity

/**
 * 登录界面
 */
class LoginActivity : BaseActivity<ActivityLoginBinding, LoginViewModel>(),View.OnClickListener {

    override fun initView() {

        binding?.tvForgetPassword?.setOnClickListener(this)
        binding?.tvRegister?.setOnClickListener(this)
    }

    override fun initData() {

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): LoginViewModel? {
        return ViewModelProvider(this).get(LoginViewModel::class.java)
    }

    override fun getViewBinding(): ActivityLoginBinding {
        return ActivityLoginBinding.inflate(layoutInflater)
    }

    override fun onClick(v: View?) {
        v?.let {
            when(it.id){
                R.id.tv_register ->{//注册
                    val intent = Intent(this,RegisterActivity::class.java)
                    startActivity(intent)
                }
                R.id.tv_forget_password -> {//忘记密码
                    val intent = Intent(this,ForgetPasswordActivity::class.java)
                    startActivity(intent)
                }
            }
        }

    }
}