package com.base.saas.hearts.service;

import com.base.saas.hearts.domain.entity.CustUser;

import java.util.Date;
import java.util.List;

/**
 * @className: CustUserService
 * @author: 佛学徒
 * @date: 2022/12/20
 * @Description：app用户service
 **/
public interface CustUserService {

    boolean addCustUser(CustUser custUser);

    CustUser login(String nickName,String password);

    boolean updateCustUser(CustUser custUser);

    CustUser getCustUserInfoById(String userId);

    List<CustUser> getCustUserList(Integer status);

    boolean increateCustUserErrorCount(String userId);

    boolean updateCustUserLastLoginInfo(String userId, String lastLoginIp);

    boolean updateCustUserPassword(String userId,String password);

    boolean updateCustUserStatus(String userId,Integer status);
}
