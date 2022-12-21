package com.base.saas.hearts.service.impl;

import com.base.saas.hearts.domain.entity.CustUser;
import com.base.saas.hearts.domain.model.ReturnMap;
import com.base.saas.hearts.mapper.CustUserMapper;
import com.base.saas.hearts.service.CustUserService;
import com.base.saas.userinfo.AppUserContextUtil;
import com.base.saas.userinfo.UserContextUtil;
import com.base.saas.userinfo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @className: CustUserServiceImpl
 * @author: 佛学徒
 * @date: 2022/12/20
 * @Description： app用户service实现
 **/
@Service
public class CustUserServiceImpl implements CustUserService {

    @Autowired
    CustUserMapper custUserMapper;

    @Override
    public boolean addCustUser(CustUser custUser) {
        CustUser existed = custUserMapper.selectUserByNickNameAndCompanyCode(custUser.getNickname(), custUser.getCompanyCode());
        if (existed != null) { //表示当前用户昵称已存在
            return false;
        }
        return custUserMapper.insertSelective(custUser) == 1;
    }

    @Override
    public ReturnMap login(String nickName, String password, String companyCode) throws Exception {
        ReturnMap<CustUser> returnMap = new ReturnMap();

        CustUser custUser = custUserMapper.selectUserByNickNameAndCompanyCode(nickName, companyCode);
        Integer status = custUser.getStatus();

        if (custUser != null) {
            if (password != null && !password.equals(custUser.getPassword())) {
                returnMap.setMsg("message.user.password.error");
                custUserMapper.increateErrorCount(custUser.getId());
            } else {
                if (status == 0) {//停用
                    returnMap.setMsg("message.user.stop.use");
                } else if (status == 2) {//锁定
                    returnMap.setMsg("message.user.locked");
                } else {//表示正确
                    custUserMapper.clearErrorCount(custUser.getId());
                    custUser.setPassword(null);
                    returnMap.setCode(1);
                    returnMap.setT(custUser);
                }
            }

        } else {
            returnMap.setMsg("message.user.not.exist");
        }

        return returnMap;
    }

    @Override
    public boolean updateCustUser(CustUser custUser) {


        return custUserMapper.updateByPrimaryKeySelective(custUser) == 1;
    }

    @Override
    public CustUser getCustUserInfoById(String userId) {
        return custUserMapper.selectByPrimaryKey(userId);
    }

    @Override
    public List<CustUser> getCustUserList(Integer status) {
        return custUserMapper.selectList(status);
    }

    @Override
    public boolean increateCustUserErrorCount(String userId) {
        return custUserMapper.increateErrorCount(userId) == 1;
    }

    @Override
    public boolean updateCustUserLastLoginInfo(String userId, String lastLoginIp) {
        return custUserMapper.updateLastLoginInfo(userId, lastLoginIp, new Date()) == 1;
    }

    @Override
    public boolean updateCustUserPassword(String nickName, String uniqueKey, String password) {
        UserInfo userInfo = AppUserContextUtil.getUserInfo();
        return custUserMapper.updatePasswordByNickNameAndCompanyCoode(userInfo.getCompanyCode(),nickName,  uniqueKey, password) == 1;
    }

    @Override
    public boolean updateCustUserStatus(String userId, Integer status) {
        return custUserMapper.updateStatus(userId, status) == 1;
    }
}
