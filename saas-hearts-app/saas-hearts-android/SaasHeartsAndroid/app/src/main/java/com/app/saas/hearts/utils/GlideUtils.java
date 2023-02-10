package com.app.saas.hearts.utils;

import android.widget.ImageView;

import com.bumptech.glide.Glide;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: GlideUtils
 * Author: 佛学徒
 * Date: 2023/2/10 14:09
 * Description: 图片加载工具类
 * History:
 */
public class GlideUtils {

    public static void load(ImageView iv, byte[] model) {
        if (iv != null && model != null)
            Glide.with(iv.getContext()).load(model).into(iv);
    }

    public static void load(ImageView iv, String url) {
        if (iv != null && StringUtils.isNotEmpty(url))
            Glide.with(iv.getContext()).load(url).into(iv);
    }
}
