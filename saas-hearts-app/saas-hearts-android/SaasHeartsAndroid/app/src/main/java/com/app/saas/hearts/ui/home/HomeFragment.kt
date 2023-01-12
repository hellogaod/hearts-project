package com.app.saas.hearts.ui.home

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.R
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.databinding.FragmentHomeBinding
import com.app.saas.hearts.ui.talk.TalkFragment
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class HomeFragment : Fragment() {

    private lateinit var homeViewModel: HomeViewModel
    private var _binding: FragmentHomeBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!

    private var recommentFragment: TalkFragment? = null
    private var talkFragment: TalkFragment? = null

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        homeViewModel =
            ViewModelProvider(this).get(HomeViewModel::class.java)

        _binding = FragmentHomeBinding.inflate(inflater, container, false)
        val root: View = binding.root

        switchTab(0)
        lisenter()

        return root
    }

    fun lisenter() {
        binding.tvTalk.setOnClickListener({ switchTab(1) })
        binding.tvRecommend.setOnClickListener { switchTab(0) }
    }

    fun switchTab(index: Int) {
        switchTalkTextColor(index)
        swiftTalkTabContent(index)
    }

    fun switchTalkTextColor(index: Int) {
        //切换fragment：0表示推荐，1表示话题
        if (index == 0) {
            binding.tvRecommend.setTextColor(getResources().getColor(R.color.selected_color))
            binding.tvTalk.setTextColor(getResources().getColor(R.color.unselected_color))
        } else {
            binding.tvRecommend.setTextColor(getResources().getColor(R.color.unselected_color))
            binding.tvTalk.setTextColor(getResources().getColor(R.color.selected_color))
        }
    }

    fun swiftTalkTabContent(index: Int) {
        //切换fragment：0表示推荐，1表示话题
        //不要使用activity?.getSupportFragmentManager()：会出现内存泄漏问题
        //val transaction =activity?.getSupportFragmentManager()?.beginTransaction()

        val transaction = childFragmentManager?.beginTransaction()

        if (recommentFragment == null) {
            recommentFragment = TalkFragment()
            transaction?.add(R.id.fg_transaction, recommentFragment!!)
        }
        if (talkFragment == null) {
            talkFragment = TalkFragment()
            transaction?.add(R.id.fg_transaction, talkFragment!!)
        }

        if (index == 0) {
            transaction!!.hide(talkFragment!!)
            transaction.show(recommentFragment!!)
        } else {
            transaction!!.hide(recommentFragment!!)
            transaction.show(talkFragment!!)
        }

        transaction!!.commit()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }


}