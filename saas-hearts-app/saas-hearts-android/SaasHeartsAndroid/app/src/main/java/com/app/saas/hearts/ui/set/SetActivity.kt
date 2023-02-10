package com.app.saas.hearts.ui.set

import android.text.Editable
import android.text.TextWatcher
import android.util.Base64
import androidx.lifecycle.ViewModelProvider

import android.view.View
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivitySetBinding
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.ToastUtil
import com.app.saas.hearts.utils.cache.CacheConstant
import com.app.saas.hearts.utils.cache.CacheManager
import com.bumptech.glide.Glide


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
                CacheManager.getInstance().clearCache(this, CacheConstant.USER_INFO)
                CacheManager.getInstance().clearCache(this, CacheConstant.TOKEN)
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