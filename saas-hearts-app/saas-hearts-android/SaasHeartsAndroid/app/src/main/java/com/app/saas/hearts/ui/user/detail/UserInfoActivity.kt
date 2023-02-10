package com.app.saas.hearts.ui.user.detail

import android.content.Context
import android.content.Intent
import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivityUserInfoBinding
import com.app.saas.hearts.ui.talk.TalkFragment
import com.app.saas.hearts.utils.StringUtils

/**
 * 我的主页界面
 */
class UserInfoActivity : IncludeHeaderBaseActivity<ActivityUserInfoBinding, UserInfoViewModel>(),
    View.OnClickListener {

    companion object {

        val userIdKey = "userId"

        fun jumpUserInfo(context: Context, userId: String) {
            val intent = Intent(context, UserInfoActivity::class.java)
            intent.putExtra(userIdKey, userId)
            context.startActivity(intent)
        }
    }

    override fun initView() {

        viewModel?.userInfo?.observe(this) {
            binding?.tvNickname?.setText("昵称：" + StringUtils.removeNull(it.nickname))
            binding?.tvPhone?.setText("手机号：" + StringUtils.removeNull(it.phone))
            binding?.tvLocation?.setText("城市：" + StringUtils.removeNull(it.address))
            binding?.tvSign?.setText("签名：" + StringUtils.removeNull(it.sign))
        }

        val transaction = supportFragmentManager?.beginTransaction()
        val talkFragment = TalkFragment.newInstance(null)
        transaction?.add(R.id.fg_transaction, talkFragment!!)
        transaction!!.commit()
    }

    override fun initData() {
        intent.getStringExtra(userIdKey)?.let {
            viewModel?.detail(it)
        }

    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): UserInfoViewModel? {
        return ViewModelProvider(this).get(UserInfoViewModel::class.java)
    }

    override fun getViewBinding(): ActivityUserInfoBinding {
        return ActivityUserInfoBinding.inflate(layoutInflater)
    }

    override fun initIncludeView() {
        includeHeaderBinding?.tvTitle?.setText("个人主页")
        includeHeaderBinding?.ivBack?.setOnClickListener(this)
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {
                R.id.iv_back -> {
                    finish()
                }
            }
        }
    }
}