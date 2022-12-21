package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustReport;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CustReportMapper {

    /**插入一条item数据*/
    int insertSelective(CustReport record);

    /**获取举报列表*/
    List<CustReport> selectList(@Param("status") Integer status,@Param("creatorId") String creatorId);

    /**获取举报详情*/
    CustReport selectByPrimaryKey(String id);

    /**更新举报信息*/
    int updateByPrimaryKeySelective(CustReport record);

}