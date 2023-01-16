package com.app.saas.hearts.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: BaseFragment
 * Author: 佛学徒
 * Date: 2023/1/11 17:28
 * Description: 防止fragment中的布局被创建多次
 * <p>
 * 借鉴:写法参考地址：https://blog.csdn.net/u010368726/article/details/125319682
 */
public abstract class BaseFragment<V extends ViewBinding, M extends ViewModel> extends Fragment {

    protected V binding;
    protected M viewModel;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        if (binding == null) {
            binding = getViewBinding(inflater, container, savedInstanceState);
        }

        return binding.getRoot();
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        if (viewModel == null){
            ViewModelProvider viewModelProvider = new ViewModelProvider(this);
            viewModel = getViewModel(viewModelProvider);

            initData();

            initView();
        }

    }

    /**
     * View初始化
     */
    public abstract void initView();

    /**
     * 初始化数据
     */
    public abstract void initData();

    public abstract M getViewModel(ViewModelProvider viewModelProvider);

    /**
     * 设置根view
     *
     * @param inflater           1
     * @param container          2
     * @param savedInstanceState 3
     * @return
     */
    public abstract V getViewBinding(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState);

    @Override
    public void onDestroyView() {


        clearView();
        clearData();

        View view  = binding.getRoot();
        if (view instanceof ViewGroup){
            ((ViewGroup) view).removeAllViews();
        }
        binding = null;
        viewModel = null;

        super.onDestroyView();
    }

    public void clearView(){}
    public void clearData(){}

    @Override
    public void onDestroy() {
        super.onDestroy();
    }
}
