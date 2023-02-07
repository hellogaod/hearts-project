package com.app.saas.hearts.base

import android.os.Bundle
import androidx.lifecycle.ViewModel
import androidx.viewbinding.ViewBinding
import com.app.saas.hearts.databinding.IncludeHeaderBinding

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: IncludeHeaderBaseActivity
 * Author: 佛学徒
 * Date: 2023/2/7 9:33
 * Description:
 * History: 在base基础上新增了一个头部布局
 */
public abstract class IncludeHeaderBaseActivity<V : ViewBinding?, M : ViewModel?> :
    BaseActivity<V?, M?>() {

    lateinit var includeHeaderBinding: IncludeHeaderBinding

    fun initIncludeBinding() {
        binding?.let {
            includeHeaderBinding = IncludeHeaderBinding.bind(it.root)
        }
    }

    abstract fun initIncludeView()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        initIncludeBinding()

        includeHeaderBinding?.let {
            initIncludeView()
        }

    }

}
