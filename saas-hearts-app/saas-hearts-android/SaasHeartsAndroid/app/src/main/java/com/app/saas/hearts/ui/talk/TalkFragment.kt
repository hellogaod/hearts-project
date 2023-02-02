package com.app.saas.hearts.ui.talk

import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import androidx.recyclerview.widget.LinearLayoutManager
import com.app.saas.hearts.base.BaseFragment
import com.app.saas.hearts.databinding.FragmentTalkBinding
import com.app.saas.hearts.ui.talk.adapter.TalkAdapter

class TalkFragment: BaseFragment<FragmentTalkBinding,TalkViewModel>() {

    private var talkAdapter: TalkAdapter? = null

    override fun getViewBinding(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): FragmentTalkBinding {
        return FragmentTalkBinding.inflate(inflater, container, false)
    }

    companion object{
        fun newInstance():  TalkFragment{
            val args = Bundle()

            val fragment = TalkFragment()
            fragment.arguments = args
            return fragment
        }
    }

    override fun initView() {

        talkAdapter = TalkAdapter()
        binding.rlTalk.adapter = talkAdapter


        binding.sfTalk.setOnRefreshListener {

            binding.sfTalk.isRefreshing = false

            talkAdapter?.clearList()

            viewModel.getData(true)
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            binding.rlTalk.setOnScrollChangeListener(View.OnScrollChangeListener() { view: View, i: Int, i1: Int, i2: Int, i3: Int ->

                val lm: LinearLayoutManager = binding.rlTalk.layoutManager as LinearLayoutManager
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

    override fun getViewModel(viewModelProvider: ViewModelProvider?): TalkViewModel {

        return ViewModelProvider(this).get(TalkViewModel::class.java)
    }

    override fun initData() {

        viewModel.talkPageInfo.observe(viewLifecycleOwner, Observer {


            talkAdapter?.setList(it.list)
            showTalkListUI()
        })

        viewModel.getData(true)
    }


    fun showTalkListUI() {
        if (talkAdapter?.listSize == 0) {

            binding.tvEmpty.visibility = View.VISIBLE
            binding.rlTalk.visibility = View.GONE
        } else {

            binding.tvEmpty.visibility = View.GONE
            binding.rlTalk.visibility = View.VISIBLE

        }
    }


    override fun clearView() {
        talkAdapter = null
    }
}

