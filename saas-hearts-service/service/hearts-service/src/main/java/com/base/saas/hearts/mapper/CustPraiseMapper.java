package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustPraise;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CustPraiseMapper {

    /**插入一条数据*/
    int insertSelective(CustPraise record);

    /**获取点赞列表*/
    List<CustPraise> selectList(@Param("status") Integer status,@Param("praiseUserId") String praiseUserId);

    /**获取点赞详情*/
    CustPraise selectByPrimaryKey(String id);

    /**更新点赞信息*/
    int updateByPrimaryKeySelective(CustPraise record);

}