package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.AreaInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AreaInfoMapper {

    /**
     * 获取所有省
     */
    List<AreaInfo> selectProvinceList();

    /**
     * 获取省下面的市
     */
    List<AreaInfo> selectCityList(String pid);
}