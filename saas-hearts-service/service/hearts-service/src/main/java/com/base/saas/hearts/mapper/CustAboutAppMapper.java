package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustAboutApp;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CustAboutAppMapper {

    /**
     * 插入一条信息
     */
    int insertSelective(CustAboutApp record);

    /**物理删除*/
//    int updateStatusByPrimaryKey(@Param("id") String id, @Param("status") int status);

    /**
     * 更新一条信息
     */
    int updateByPrimaryKeySelective(CustAboutApp record);

    /**
     * 获取详情
     */
    CustAboutApp selectByPrimaryKey(String id);

    /**
     * 获取最新一条详情
     */
    CustAboutApp selectNewsByPrimaryKey();

    /**
     * 获取关于app列表信息
     */
    List<CustAboutApp> selectList(@Param("androidCodeVersion") int androidCodeVersion, @Param("iosCodeVersion") int iosCodeVersion);
}