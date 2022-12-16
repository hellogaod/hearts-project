package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustAttention;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustAttentionMapper {

    /**插入一条item信息*/
    int insertSelective(CustAttention record);

    /**关注详情*/
    CustAttention selectByPrimaryKey(String id);

    /**更新关注信息*/
    int updateByPrimaryKeySelective(CustAttention record);

    /**关注列表*/
    List<CustAttention> selectList(@Param("status") Integer status,@Param("attentionId") String attentionId,@Param("beAttentionId") String beAttentionId);
}