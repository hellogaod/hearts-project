package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustUser;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface CustUserMapper {

    int insertSelective(CustUser record);

    List<CustUser> selectList(@Param("status") Integer status);

    CustUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CustUser record);

    int increateErrorCount(String id);

    int updateLastLoginInfo(@Param("id") String id,
                            @Param("lastLoginIp") String lastLoginIp,
                            @Param("lastLoginTime") Date lastLoginTime);

    int updatePassword(@Param("id") String id,
                       @Param("password") String password);

    int updateStatus(@Param("id") String id,@Param("status") Integer status);
}