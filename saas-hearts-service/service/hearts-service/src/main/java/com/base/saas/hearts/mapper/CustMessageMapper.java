package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustMessage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CustMessageMapper {

    /**插入一条数据*/
    int insertSelective(CustMessage record);

    /**获取消息列表*/
    List<CustMessage> selectList(@Param("status") Integer status, @Param("customerId") String customerId);

    /**根据id获取消息详情*/
    CustMessage selectByPrimaryKey(String id);

    /**更新消息*/
    int updateByPrimaryKeySelective(CustMessage record);

}