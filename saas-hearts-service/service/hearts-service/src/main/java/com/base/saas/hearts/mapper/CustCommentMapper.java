package com.base.saas.hearts.mapper;


import com.base.saas.hearts.domain.entity.CustComment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CustCommentMapper {

    /**
     * 插入一条评论信息
     */
    int insertSelective(CustComment record);

    /**
     * 更新评论信息
     */
    int updateByPrimaryKey(CustComment record);

    /**
     * 根据id获取评论详情
     */
    CustComment selectByPrimaryKey(String id);

    /**
     * 获取评论列表
     */
    List<CustComment> selectList(@Param("status") Integer status, @Param("talkId") String talkId, @Param("talkCreateUserId") String talkCreateUserId, @Param("companyCode") String companyCode);

}