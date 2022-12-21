package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustAdvertisement;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CustAdvertisementMapper {
    /**
     * 新增一条item
     */
    int insertSelective(CustAdvertisement record);

    /**
     * 修改item
     */
    int updateByPrimaryKeySelective(CustAdvertisement record);

    /**
     * 获取列表
     */
    List<CustAdvertisement> selectList();

    /**
     * 获取详情
     */
    CustAdvertisement selectByPrimaryKey(String id);

}