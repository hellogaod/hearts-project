package com.app.saas.hearts.ui.user.register

import android.text.Editable
import android.text.TextWatcher
import android.util.Base64
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.databinding.ActivityRegisterBinding

import android.view.View
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.utils.GlideUtils
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.ToastUtil


/**
 * 注册用户
 */
class RegisterActivity : IncludeHeaderBaseActivity<ActivityRegisterBinding, RegisterViewModel>(),
    View.OnClickListener, TextWatcher {

    override fun initView() {

        binding?.etPhone?.addTextChangedListener(this)
        binding?.etUniqueFlag?.addTextChangedListener(this)
        binding?.etImgCode?.addTextChangedListener(this)
        binding?.etPassword?.addTextChangedListener(this)
        binding?.etPasswordAgain?.addTextChangedListener(this)


        binding?.ivImgCode?.setOnClickListener(this)

        binding?.tvRegister?.setOnClickListener(this)
    }

    override fun initIncludeView() {
        includeHeaderBinding?.ivBack?.setOnClickListener(this)
        includeHeaderBinding?.tvTitle?.setText("注册")
    }

    override fun initData() {

        viewModel?.getImgCode()

        viewModel?.validateCode?.observe(this) {

            var base64Str = it.code.replace("data:image/png;base64,", "")
            val decodedString: ByteArray = Base64.decode(base64Str, Base64.DEFAULT)
            GlideUtils.load(binding?.ivImgCode,decodedString)

        }

        viewModel?.registFalg?.observe(this) {
            if (it) {
                ToastUtil.show(this.application, "注册成功")
                finish()
            } else {
                ToastUtil.show(this.application, "注册失败")
            }
        }
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): RegisterViewModel? {
        return ViewModelProvider(this).get(RegisterViewModel::class.java)
    }

    override fun getViewBinding(): ActivityRegisterBinding {
        val registerBinding = ActivityRegisterBinding.inflate(layoutInflater)

        return registerBinding
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {
                R.id.iv_img_code -> {//获取图片
                    viewModel?.getImgCode()
                }
                R.id.iv_back -> {//销毁当前页面
                    finish()
                }
                R.id.tv_register -> {//注册
                    viewModel?.register(
                        binding?.etPhone?.text.toString(),
                        binding?.etUniqueFlag?.text.toString(),
                        binding?.etPassword?.text.toString()
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

        allowSubimit()
    }

    private fun allowSubimit() {
        var flag = false

        val phoneStr = binding?.etPhone?.text.toString()
        val uniqueFlagStr = binding?.etUniqueFlag?.text.toString()
        val imgCodeStr = binding?.etImgCode?.text.toString()
        val passwordStr = binding?.etPassword?.text.toString()
        val passwordAgainStr = binding?.etPasswordAgain?.text.toString()

        if ((StringUtils.isNotEmpty(phoneStr) && phoneStr.length == 11)
            && StringUtils.isNotEmpty(uniqueFlagStr)
            && StringUtils.isNotEmpty(imgCodeStr)
            && StringUtils.isNotEmpty(passwordStr)
            && (StringUtils.isNotEmpty(passwordAgainStr) && passwordAgainStr.equals(passwordStr))
        ) {
            flag = true
        }

        binding?.tvRegister?.isClickable = flag

        var color: Int? = null
        if (flag) {
            color = R.color.selected_color
        } else {
            color = R.color.gray_color
        }
        binding?.tvRegister?.setBackgroundColor(getResources().getColor(color))
    }

}