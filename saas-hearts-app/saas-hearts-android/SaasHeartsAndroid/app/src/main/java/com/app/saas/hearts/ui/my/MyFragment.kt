package com.app.saas.hearts.ui.my

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.BaseFragment
import com.app.saas.hearts.databinding.FragmentMyBinding
import com.app.saas.hearts.ui.user.login.LoginActivity

class MyFragment : BaseFragment<FragmentMyBinding, MyViewModel>(), View.OnClickListener {

    override fun initView() {

        binding.tvLogin.setOnClickListener(this)
    }

    override fun initData() {
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): MyViewModel? {
        return viewModelProvider?.let {
            it.get(MyViewModel::class.java)
        }
    }

    override fun getViewBinding(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): FragmentMyBinding {
        return FragmentMyBinding.inflate(inflater, container, false)
    }

    override fun onClick(v: View?) {
        when (v?.id) {
            R.id.tv_login -> {//登录
                val intent = Intent(activity,LoginActivity::class.java)
                startActivity(intent)
            }
        }

    }
}