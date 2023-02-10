package com.app.saas.hearts.ui.talk

import android.content.Context
import android.content.Intent
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.base.IncludeHeaderBaseActivity
import com.app.saas.hearts.databinding.ActivityTalkDetailsBinding
import com.app.saas.hearts.ui.talk.comment.CommentFragment
import com.app.saas.hearts.utils.DateUtils
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.ToastUtil
import com.app.saas.hearts.utils.userInfo.CacheUserInfo
import java.util.*

/**
 * 话题详情界面
 */
class TalkDetailsActivity :
    IncludeHeaderBaseActivity<ActivityTalkDetailsBinding, TalkDetailsViewModel>(),
    View.OnClickListener, TextWatcher {

    var commentFragment: CommentFragment? = null

    companion object {

        val talkIdKey = "talkId"

        fun jumpUserInfo(context: Context, talkId: String) {
            val intent = Intent(context, TalkDetailsActivity::class.java)
            intent.putExtra(talkIdKey, talkId)
            context.startActivity(intent)
        }
    }

    override fun initView() {
        binding?.tvSubmit?.setOnClickListener(this)
        binding?.etContent?.addTextChangedListener(this)

        val transaction = supportFragmentManager?.beginTransaction()
         commentFragment = CommentFragment.newInstance(viewModel?.talkId)
        transaction?.add(R.id.fg_transaction, commentFragment!!)
        transaction!!.commit()
    }

    fun getDetail(){
        viewModel?.talkId?.let {
            viewModel?.getTalkDetails(it)
        }
    }

    override fun initData() {

        viewModel?.talkId =  intent.getStringExtra(talkIdKey)

        getDetail()

        viewModel?.createFlag?.observe(this) {
            if (it == true) {
                getDetail()
                commentFragment?.refreshData()
                ToastUtil.show(this.application, "评论成功")
            }
        }

        viewModel?.custTalk?.observe(this){
            binding?.tvTalkTitle?.setText(it?.title)
            binding?.tvContent?.setText(it?.content)
            binding?.tvComment?.setText(it?.commentCount?.toString() + "")
            binding?.tvHeader?.setText(it?.createUserName)
            binding?.tvDate?.setText(DateUtils.dateTransSpecialFormat(it?.createTime, Date()))
        }
    }

    override fun initIncludeView() {
        includeHeaderBinding?.ivBack?.setOnClickListener(this)

        includeHeaderBinding?.tvTitle?.setText("话题详情")
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): TalkDetailsViewModel? {
        return ViewModelProvider(this).get(TalkDetailsViewModel::class.java)
    }

    override fun getViewBinding(): ActivityTalkDetailsBinding {
        return ActivityTalkDetailsBinding.inflate(layoutInflater)
    }

    override fun onClick(v: View?) {
        v?.let {
            when (it.id) {

                R.id.iv_back -> {//返回
                    finish()
                }

                R.id.tv_submit -> {//发布
                    viewModel?.createComment(
                        CacheUserInfo.getToken(this),
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

        val content = binding?.etContent?.text.toString()

        var flag = false

        if (StringUtils.isNotEmpty(content)) {
            flag = true
        }

        binding?.tvSubmit?.isClickable = flag

        var color: Int?
        if (flag) {
            color = R.color.selected_color
        } else {
            color = R.color.gray_color
        }
        binding?.tvSubmit?.setTextColor(getResources().getColor(color))
    }

}