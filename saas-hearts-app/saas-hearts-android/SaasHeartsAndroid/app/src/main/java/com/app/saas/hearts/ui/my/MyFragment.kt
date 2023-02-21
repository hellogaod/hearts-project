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
import com.app.saas.hearts.ui.set.SetActivity
import com.app.saas.hearts.ui.user.detail.UserInfoActivity
import com.app.saas.hearts.ui.user.edit.UserEditActivity
import com.app.saas.hearts.ui.user.login.LoginActivity
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.userInfo.CacheUserInfo

class MyFragment : BaseFragment<FragmentMyBinding, MyViewModel>(), View.OnClickListener {

    override fun initView() {

        binding.tvLogin.setOnClickListener(this)

        binding.llUserInfo.setOnClickListener(this)

        binding.llUserBase.setOnClickListener(this)

        binding.llSet.setOnClickListener(this)
    }

    override fun onResume() {
        super.onResume()

        viewModel?.setToken(
            CacheUserInfo.getToken(activity)
        )
    }

    override fun initData() {

        viewModel?.token?.observe(viewLifecycleOwner) {

            if (StringUtils.isNotEmpty(it)) {
                binding.llUserBase.visibility = View.VISIBLE
                binding.tvLogin.visibility = View.GONE
                viewModel?.setUserInfo(
                    CacheUserInfo.getUserInfo(activity)
                )
            } else {
                binding.tvLogin.visibility = View.VISIBLE
                binding.llUserBase.visibility = View.GONE
            }

        }

        viewModel.userInfo?.observe(viewLifecycleOwner) {
            binding.tvNickname.setText(it?.account)
        }
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

        if (!isLogin()) {//如果没有登录，先跳转到登录页面
            val intent = Intent(activity, LoginActivity::class.java)
            startActivity(intent)
            return
        }

        when (v?.id) {
            R.id.tv_login -> {//登录

            }

            R.id.ll_set -> {//设置
                val intent = Intent(activity, SetActivity::class.java)
                startActivity(intent)
            }

            R.id.ll_user_info -> {//进入主页

                viewModel?.userInfo?.value?.userId?.let {
                    activity?.let { it1 ->
                        UserInfoActivity.jumpUserInfo(
                            it1,
                            it
                        )
                    }
                }

            }

            R.id.ll_user_base -> {//进入编辑页
                val intent = Intent(activity, UserEditActivity::class.java)
                startActivity(intent)
            }
        }

    }

    fun isLogin(): Boolean {//是否登录
        return StringUtils.isNotEmpty(viewModel?.token?.value)
    }
}