package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustTalk;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustTalkMapper {

    /**插入一条item*/
    int insertSelective(CustTalk record);

    /**获取话题列表*/
    List<CustTalk> selectList(@Param("status") Integer status, @Param("createUser") String createUser);

    /**获取话题详情*/
    CustTalk selectByPrimaryKey(String id);

    /**更新话题信息*/
    int updateByPrimaryKeySelective(CustTalk record);

}