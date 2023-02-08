package com.app.saas.hearts.ui.user.edit

import android.text.Editable
import android.text.TextWatcher
import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivityUserEditBinding
import com.app.saas.hearts.entity.UserInfo
import com.app.saas.hearts.utils.cache.CacheConstant
import com.app.saas.hearts.utils.cache.CacheManager

/**
 * 用户编辑界面
 */
class UserEditActivity : IncludeHeaderBaseActivity<ActivityUserEditBinding, UserEditViewModel>(),
    View.OnClickListener, TextWatcher {

    override fun initView() {

        binding?.etUsername?.addTextChangedListener(this)

        viewModel?.userInfo?.value.let {
            binding?.etUsername?.setText(it?.account)
        }


    }

    override fun initData() {
        viewModel?.setUserInfo(
            CacheManager.getInstance()
                .readCache(this, CacheConstant.USER_INFO, null, UserInfo::class.java)
        )
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): UserEditViewModel? {
        return ViewModelProvider(this).get(UserEditViewModel::class.java)
    }

    override fun getViewBinding(): ActivityUserEditBinding {
        return ActivityUserEditBinding.inflate(layoutInflater)
    }

    override fun initIncludeView() {
        includeHeaderBinding.tvTitle.setText("编辑")
        includeHeaderBinding.tvRight.setText("提交")
        includeHeaderBinding.tvRight.setOnClickListener(this)
        includeHeaderBinding.ivBack.setOnClickListener(this)
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {
                R.id.iv_back -> {//返回按钮
                    finish()
                }

                R.id.tv_right -> {//提交,编辑接口没实现，哈哈哈~

                }
            }
        }
    }

    override fun beforeTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {
    }

    override fun onTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {
    }

    override fun afterTextChanged(p0: Editable?) {

    }
}