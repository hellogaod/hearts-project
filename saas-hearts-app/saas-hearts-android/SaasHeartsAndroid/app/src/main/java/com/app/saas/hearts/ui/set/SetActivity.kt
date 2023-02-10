package com.app.saas.hearts.ui.set

import androidx.lifecycle.ViewModelProvider

import android.view.View
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivitySetBinding
import com.app.saas.hearts.utils.ToastUtil
import com.app.saas.hearts.utils.userInfo.CacheUserInfo


/**
 * 设置界面
 */
class SetActivity : IncludeHeaderBaseActivity<ActivitySetBinding, SetViewModel>(),
    View.OnClickListener{

    override fun initView() {
        binding?.tvLogout?.setOnClickListener(this)
    }

    override fun initIncludeView() {
        includeHeaderBinding?.ivBack?.setOnClickListener(this)
        includeHeaderBinding?.tvTitle?.setText("设置")
    }

    override fun initData() {

        viewModel?.logoutFalg?.observe(this){
            if (it == true){
                CacheUserInfo.clearUserInfoAndToken(this)
                ToastUtil.show(this.application,"退出登录成功")
                finish()
            }
        }

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): SetViewModel? {
        return ViewModelProvider(this).get(SetViewModel::class.java)
    }

    override fun getViewBinding(): ActivitySetBinding {
        val registerBinding = ActivitySetBinding.inflate(layoutInflater)

        return registerBinding
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {

                R.id.iv_back -> {//销毁当前页面
                    finish()
                }

                R.id.tv_logout -> {//退出登录
                    viewModel?.logout()
                }


                else -> {}
            }
        }
    }

}