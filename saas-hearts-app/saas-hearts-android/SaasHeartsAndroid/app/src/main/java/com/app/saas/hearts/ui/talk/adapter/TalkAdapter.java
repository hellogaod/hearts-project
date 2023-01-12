package com.app.saas.hearts.ui.talk.adapter;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.app.saas.hearts.R;
import com.app.saas.hearts.entity.CustTalk;
import com.app.saas.hearts.utils.DateUtils;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.TreeSet;
import java.util.stream.Collectors;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/**
 * Copyright (C), 2019-2023, 佛生
 * FileName: MyAdapter
 * Author: 佛学徒
 * Date: 2023/1/6 13:52
 * Description:
 * 借鉴:①list去重参考地址：https://blog.csdn.net/weixin_41405524/article/details/120717488
 */
public class TalkAdapter extends RecyclerView.Adapter<TalkAdapter.InnerHolder> {

    //从数据源获取的数组存入list，demo的数据源是模拟，在代码中生成
    private List<CustTalk> list;

    //构造器，只留这一个构造器，将list传入
    public TalkAdapter() {
        list = new ArrayList<>();
    }

    public void clearList() {
        this.list.clear();
        notifyDataSetChanged();
    }

    public int getListSize() {
        return list.size();
    }

    public void setList(List<CustTalk> list) {

        this.list.addAll(list);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            this.list = this.list.stream().collect(Collectors.collectingAndThen(
                    Collectors.toCollection(() -> new TreeSet<>(
                            Comparator.comparing(
                                    CustTalk::getId))), ArrayList::new));
        } else {//api 24以下的去重，可以暂时不写

        }

        notifyDataSetChanged();
    }

    @NonNull
    @Override
    public InnerHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        //将XML布局文件，加载到Java代码（和Activity的onCreate()的setContentVIew()作用一样），参数先复制粘贴，感兴趣可去研究传不同参数的效果
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.talk_item, null, false);

        return new InnerHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull InnerHolder holder, int position) {
        CustTalk custTalk = list.get(position);

        if (custTalk != null) {
            giveUIValuing(holder.tvHeader, custTalk.getCreateUserName());
            giveUIValuing(holder.tvDate, DateUtils.dateTransSpecialFormat(custTalk.getCreateTime(), new Date()));
            giveUIValuing(holder.tvTitle, custTalk.getTitle());
            giveUIValuing(holder.tvContent, custTalk.getContent());
            giveUIValuing(holder.tvLike, custTalk.getSatisfaceRate() + "%");
            giveUIValuing(holder.tvPraise, custTalk.getPraiseCount() + "");
            giveUIValuing(holder.tvComment, custTalk.getCommentCount() + "");
        }

    }

    private void giveUIValuing(TextView tv, String value) {
        if (tv != null && value != null) {
            tv.setText(value);
        }
    }

    @Override
    public int getItemCount() {
        return list == null ? 0 : list.size();
    }

    /**
     * 内部类，继承RecyclerView.ViewHolder，作用就是声明item中的控件，findViewById
     */
    public class InnerHolder extends RecyclerView.ViewHolder {
        ImageView ivHeader;
        TextView tvHeader;
        TextView tvDate;

        TextView tvTitle;
        TextView tvContent;

        TextView tvLike;
        TextView tvPraise;
        TextView tvComment;


        public InnerHolder(@NonNull View itemView) {
            super(itemView);
            ivHeader = itemView.findViewById(R.id.iv_head);
            tvHeader = itemView.findViewById(R.id.tv_header);
            tvDate = itemView.findViewById(R.id.tv_date);

            tvTitle = itemView.findViewById(R.id.tv_title);
            tvContent = itemView.findViewById(R.id.tv_content);

            tvLike = itemView.findViewById(R.id.tv_like);
            tvPraise = itemView.findViewById(R.id.tv_praise);
            tvComment = itemView.findViewById(R.id.tv_comment);
        }
    }
}
