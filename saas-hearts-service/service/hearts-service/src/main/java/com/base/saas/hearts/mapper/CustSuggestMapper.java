package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustSuggest;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustSuggestMapper {
    /**插入一条item数据*/
    int insertSelective(CustSuggest record);
    /**获取建议列表*/
    List<CustSuggest> selectList(@Param("status") Integer status,@Param("createUser") String createUser);
    /**获取建议详情*/
    CustSuggest selectByPrimaryKey(String id);
    /**更新一条item*/
    int updateByPrimaryKeySelective(CustSuggest record);

}