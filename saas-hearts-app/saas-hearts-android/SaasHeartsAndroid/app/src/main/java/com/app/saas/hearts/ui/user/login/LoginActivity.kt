package com.app.saas.hearts.ui.user.login

import android.content.Intent
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivityLoginBinding
import com.app.saas.hearts.ui.user.forgetpwd.ForgetPasswordActivity
import com.app.saas.hearts.ui.user.register.RegisterActivity
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.ToastUtil
import com.app.saas.hearts.utils.cache.CacheConstant
import com.app.saas.hearts.utils.cache.CacheManager

/**
 * 登录界面
 */
class LoginActivity : IncludeHeaderBaseActivity<ActivityLoginBinding, LoginViewModel>(),
    View.OnClickListener, TextWatcher {

    override fun initView() {

        binding?.tvForgetPassword?.setOnClickListener(this)
        binding?.tvRegister?.setOnClickListener(this)
        binding?.tvLogin?.setOnClickListener(this)

        binding?.etPhone?.addTextChangedListener(this)
        binding?.etPassword?.addTextChangedListener(this)
    }

    override fun initData() {

        viewModel?.userInfo?.observe(this){
            CacheManager.getInstance().storageCache(this,CacheConstant.USER_INFO,it,true,0)
            CacheManager.getInstance().storageCache(this,CacheConstant.TOKEN,it.token,true,0)
            ToastUtil.show(this.application,"登录成功")
            finish()
        }
    }


    override fun initIncludeView() {
        includeHeaderBinding.ivBack.setOnClickListener(this)
        includeHeaderBinding.tvTitle.setText("登录")
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): LoginViewModel? {
        return ViewModelProvider(this).get(LoginViewModel::class.java)
    }

    override fun getViewBinding(): ActivityLoginBinding {
        return ActivityLoginBinding.inflate(layoutInflater)
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {
                R.id.tv_register -> {//注册
                    val intent = Intent(this, RegisterActivity::class.java)
                    startActivity(intent)
                }
                R.id.tv_forget_password -> {//忘记密码
                    val intent = Intent(this, ForgetPasswordActivity::class.java)
                    startActivity(intent)
                }
                R.id.iv_back -> {//返回
                    finish()
                }
                R.id.tv_login ->{//登录
                    viewModel?.login(binding?.etPhone?.text.toString(),binding?.etPassword?.text.toString())
                }
                else -> {}
            }
        }

    }

    override fun beforeTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {

    }

    override fun onTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {

    }

    override fun afterTextChanged(p0: Editable?) {
        val phoneStr = binding?.etPhone?.text.toString()
        val passwordStr = binding?.etPassword?.text.toString()

        var flag = false

        if ((StringUtils.isNotEmpty(phoneStr) && phoneStr.length == 11)
            && StringUtils.isNotEmpty(passwordStr)
        ) {
            flag = true
        }

        binding?.tvLogin?.isClickable = flag

        var color: Int?
        if (flag) {
            color = R.color.selected_color
        } else {
            color = R.color.gray_color
        }
        binding?.tvLogin?.setBackgroundColor(getResources().getColor(color))
    }

}