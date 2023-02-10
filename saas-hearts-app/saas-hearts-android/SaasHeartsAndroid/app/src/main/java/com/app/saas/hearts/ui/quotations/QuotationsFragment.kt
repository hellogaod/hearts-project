package com.app.saas.hearts.ui.quotations

import android.R
import android.content.Intent
import android.content.res.ColorStateList
import android.graphics.Typeface
import android.os.Bundle
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import androidx.viewpager2.adapter.FragmentStateAdapter
import androidx.viewpager2.widget.ViewPager2
import com.app.saas.hearts.base.BaseFragment
import com.app.saas.hearts.databinding.FragmentQuotationsBinding
import com.app.saas.hearts.ui.talk.CreateTalkActivity
import com.app.saas.hearts.ui.talk.TalkFragment
import com.app.saas.hearts.ui.user.login.LoginActivity
import com.app.saas.hearts.utils.StringUtils
import com.app.saas.hearts.utils.userInfo.CacheUserInfo
import com.google.android.material.tabs.TabLayout
import com.google.android.material.tabs.TabLayoutMediator

/**
 * tab切换fragment参考地址：https://juejin.cn/post/6844904128347389960
 */
class QuotationsFragment : BaseFragment<FragmentQuotationsBinding, QuotationsViewModel>() {

    private lateinit var mediator: TabLayoutMediator

    private val changeCallback = object : ViewPager2.OnPageChangeCallback() {
        override fun onPageSelected(position: Int) {
            //可以来设置选中时tab的大小
            val tabCount = binding.tabLayout.tabCount

            for (i in 0 until tabCount) {
                val tab: TabLayout.Tab? = binding.tabLayout.getTabAt(i)
                val tabView: TextView = tab?.customView as TextView

                if (tab.getPosition() == position) {

                    tabView.textSize = viewModel.activeSize
                    tabView.setTypeface(Typeface.DEFAULT_BOLD);
                } else {

                    tabView.textSize = viewModel.normalSize
                    tabView.setTypeface(Typeface.DEFAULT);
                }

            }

        }
    }

    override fun getViewBinding(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): FragmentQuotationsBinding {
        return FragmentQuotationsBinding.inflate(inflater, container, false)
    }

    override fun getViewModel(viewModelProvider: ViewModelProvider?): QuotationsViewModel? {
        return viewModelProvider?.let {
            it.get(QuotationsViewModel::class.java)
        }
    }

    override fun initView() {


        //如果未登录跳转登录页面；否则，跳转到创建话题界面
        binding?.btnCreateTalk?.setOnClickListener(View.OnClickListener {
            val token = CacheUserInfo.getToken(activity)

            if (StringUtils.isEmpty(token)) {
                val intent = Intent(activity, LoginActivity::class.java)
                startActivity(intent)

            } else {
                val intent = Intent(activity, CreateTalkActivity::class.java)
                startActivity(intent)

            }

        })

        //禁用预加载
        binding.viewPager.offscreenPageLimit = ViewPager2.OFFSCREEN_PAGE_LIMIT_DEFAULT

        //Adapter
        binding.viewPager.adapter = object : FragmentStateAdapter(childFragmentManager, lifecycle) {
            override fun getItemCount(): Int {
                return viewModel.tabs.size
            }

            override fun createFragment(position: Int): Fragment {
                //FragmentStateAdapter内部自己会管理已实例化的fragment对象。
                // 所以不需要考虑复用的问题
                return TalkFragment.newInstance(null)
            }
        }

        //viewPager 页面切换监听
        binding.viewPager.registerOnPageChangeCallback(changeCallback)

        mediator = TabLayoutMediator(
            binding.tabLayout,
            binding.viewPager,
            object : TabLayoutMediator.TabConfigurationStrategy {
                override fun onConfigureTab(tab: TabLayout.Tab, position: Int) {

                    val tabView = TextView(context)
                    tabView.gravity = Gravity.CENTER

                    val states = arrayOfNulls<IntArray>(2)
                    states[0] = intArrayOf(R.attr.state_selected)
                    states[1] = intArrayOf()

                    val colors = intArrayOf(viewModel.activeColor, viewModel.normalColor)
                    val colorStateList = ColorStateList(states, colors)
                    tabView.setText(viewModel.tabs.get(position))
                    tabView.textSize = viewModel.normalSize
                    tabView.setTextColor(colorStateList)

                    tab.customView = tabView
                }

            })
        //要执行这一句才是真正将两者绑定起来
        mediator.attach();
    }

    override fun initData() {

    }

    override fun clearView() {
        mediator?.detach()
        binding.viewPager.unregisterOnPageChangeCallback(changeCallback)
        super.clearView()
    }

}