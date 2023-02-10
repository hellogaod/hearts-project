package com.app.saas.hearts.ui.talk

import android.text.Editable
import android.text.TextWatcher
import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivityCreateTalkBinding
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.ToastUtil
import com.app.saas.hearts.utils.userInfo.CacheUserInfo

/**
 * 创建话题界面
 */
class CreateTalkActivity :
    IncludeHeaderBaseActivity<ActivityCreateTalkBinding, CreateTalkViewModel>(),
    View.OnClickListener, TextWatcher {

    override fun initView() {
        binding?.etContent?.addTextChangedListener(this)
        binding?.etTitle?.addTextChangedListener(this)
    }

    override fun initData() {
        viewModel?.createFlag?.observe(this) {
            if (it == true) {
                ToastUtil.show(this.application, "创建成功")
                finish()
            }
        }
    }

    override fun initIncludeView() {
        includeHeaderBinding?.ivBack?.setOnClickListener(this)
        includeHeaderBinding?.tvRight?.setOnClickListener(this)

        includeHeaderBinding?.tvTitle?.setText("创建话题")
        includeHeaderBinding?.tvRight?.setText("发布")
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): CreateTalkViewModel? {
        return ViewModelProvider(this).get(CreateTalkViewModel::class.java)
    }

    override fun getViewBinding(): ActivityCreateTalkBinding {
        return ActivityCreateTalkBinding.inflate(layoutInflater)
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {

                R.id.iv_back -> {//返回
                    finish()
                }

                R.id.tv_right -> {//创建话题
                    viewModel?.createTalk(
                        CacheUserInfo.getToken(this),
                        binding?.etTitle?.text.toString(),
                        binding?.etContent?.text.toString()

                    )
                }

                else -> {
                }
            }
        }

    }

    override fun beforeTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {

    }

    override fun onTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {

    }

    override fun afterTextChanged(e: Editable?) {

        val title = binding?.etTitle?.text.toString()
        val content = binding?.etContent?.text.toString()

        var flag = false

        if (StringUtils.isNotEmpty(title) && StringUtils.isNotEmpty(content)) {
            flag = true
        }

        includeHeaderBinding?.tvRight?.isClickable = flag

        var color: Int? = null
        if (flag) {
            color = R.color.selected_color
        } else {
            color = R.color.gray_color
        }
        includeHeaderBinding?.tvRight?.setTextColor(getResources().getColor(color))
    }

}