package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

@Mapper
public interface CustUserMapper {

    /**
     * 插入一条用户
     */
    int insertSelective(CustUser record);

    /**
     * 搜索用户列表
     */
    List<CustUser> selectList(@Param("status") Integer status);

    /**
     * 获取用户详情
     */
    CustUser selectByPrimaryKey(String id);

    /**
     * 根据phone和companyCode获取用户信息
     */
    CustUser selectUserByPhoneAndCompanyCode(@Param("phone") String phone, @Param("companyCode") String companyCode);

    /**
     * 更新用户信息
     */
    int updateByPrimaryKeySelective(CustUser record);

    /**
     * 更新错误次数
     */
    int increateErrorCount(String id);

    /**
     * 错误次数置为0
     */
    int clearErrorCount(String id);

    /**
     * 修改最后一次登录ip和登录时间
     */
    int updateLastLoginInfo(@Param("id") String id,
                            @Param("lastLoginIp") String lastLoginIp,
                            @Param("lastLoginTime") Date lastLoginTime);

    /**
     * 修改登录密码
     */
    int updatePasswordByNickNameAndCompanyCoode(@Param("companyCoode") String companyCoode,
                                                @Param("nickname") String nickname,
                                                @Param("uniqueIdenty") String uniqueIdenty,
                                                @Param("password") String password);

    /**
     * 修改登录状态
     */
    int updateStatus(@Param("id") String id, @Param("status") Integer status);
}