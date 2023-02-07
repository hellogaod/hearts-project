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
import com.app.saas.hearts.entity.UserInfo
import com.app.saas.hearts.ui.user.login.LoginActivity
import com.app.saas.hearts.utils.cache.CacheConstant
import com.app.saas.hearts.utils.cache.CacheManager

class MyFragment : BaseFragment<FragmentMyBinding, MyViewModel>(), View.OnClickListener {

    override fun initView() {

        binding.tvLogin.setOnClickListener(this)
    }

    override fun initData() {

        viewModel?.setToken(CacheManager.getInstance().readCache(activity,CacheConstant.TOKEN,null,String::class.java))

        viewModel?.token?.observe(viewLifecycleOwner){

            if (it != null){
                binding.llUserBase.visibility = View.GONE
                binding.tvLogin.visibility = View.VISIBLE
                viewModel?.setUserInfo(CacheManager.getInstance().readCache(activity,CacheConstant.USER_INFO,null,UserInfo::class.java))
            }else{
                binding.tvLogin.visibility = View.GONE
                binding.llUserBase.visibility = View.VISIBLE
            }

        }

        viewModel.userInfo.observe(viewLifecycleOwner){
            binding.tvNickname.setText(it.account)
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
        when (v?.id) {
            R.id.tv_login -> {//登录
                val intent = Intent(activity,LoginActivity::class.java)
                startActivity(intent)
            }
        }

    }
}