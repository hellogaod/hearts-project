package com.app.saas.hearts.ui.talk.comment

import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import androidx.recyclerview.widget.LinearLayoutManager
import com.app.saas.hearts.base.BaseFragment
import com.app.saas.hearts.databinding.FragmentCommentBinding
import com.app.saas.hearts.ui.talk.adapter.CommentAdapter

class CommentFragment: BaseFragment<FragmentCommentBinding,CommentViewModel>() {

    companion object{

        val talkIdKey = "talkId"

        fun newInstance(talkId:String?):  CommentFragment{
            val args = Bundle()
            args?.putString(talkIdKey,talkId)
            val fragment = CommentFragment()
            fragment.arguments = args
            return fragment
        }
    }


    private var commentAdapter: CommentAdapter? = null

    override fun getViewBinding(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): FragmentCommentBinding {
        return FragmentCommentBinding.inflate(inflater, container, false)
    }

    //刷新数据
    fun refreshData(){
        commentAdapter?.clearList()

        viewModel.getData(true)
    }

    override fun initView() {

        commentAdapter = CommentAdapter()
        binding.rlComment.adapter = commentAdapter

        binding.sfComment.setOnRefreshListener {

            binding.sfComment.isRefreshing = false

            refreshData()
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            binding.rlComment.setOnScrollChangeListener(View.OnScrollChangeListener() { view: View, i: Int, i1: Int, i2: Int, i3: Int ->

                val lm: LinearLayoutManager = binding.rlComment.layoutManager as LinearLayoutManager
                val lastVisibleItemPosition = lm.findLastVisibleItemPosition()
                val totalCount: Int = lm.itemCount

                if (totalCount > 10
                    && lastVisibleItemPosition == totalCount - 1
                    && !viewModel.isLastPage()
                ) {

                    viewModel.getData(false)
                }

            })
        }
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): CommentViewModel {

        return ViewModelProvider(this).get(CommentViewModel::class.java)
    }

    override fun onResume() {
        super.onResume()
        viewModel.getData(true)
    }

    override fun initData() {

        arguments?.getString(talkIdKey)?.let { viewModel?.setTalkId(it) }

        viewModel.commentPageInfo.observe(viewLifecycleOwner, Observer {

            commentAdapter?.setList(it.list)
            showTalkListUI()
        })

    }


    fun showTalkListUI() {
        if (commentAdapter?.listSize == 0) {

            binding.tvEmpty.visibility = View.VISIBLE
            binding.rlComment.visibility = View.GONE
        } else {

            binding.tvEmpty.visibility = View.GONE
            binding.rlComment.visibility = View.VISIBLE

        }
    }


    override fun clearView() {
        commentAdapter = null
    }
}

