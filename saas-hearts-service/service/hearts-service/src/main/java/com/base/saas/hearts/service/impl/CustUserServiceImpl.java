package com.base.saas.hearts.service.impl;

import com.base.saas.hearts.domain.entity.CustUser;
import com.base.saas.hearts.mapper.CustUserMapper;
import com.base.saas.hearts.service.CustUserService;
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
        CustUser existed = custUserMapper.selectByNickName(custUser.getNickname());
        if (existed != null) { //表示当前用户昵称已存在
            return false;
        }
        return custUserMapper.insertSelective(custUser) == 1;
    }

    @Override
    public CustUser login(String nickName, String password) {
        CustUser custUser = custUserMapper.selectByNickName(nickName);

        if (custUser != null && custUser.getPassword().equals(password)) {
            custUser.setPassword(null);
            return custUser;
        }

        return null;
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
    public boolean updateCustUserPassword(String userId, String password) {
        return custUserMapper.updatePassword(userId, password) == 1;
    }

    @Override
    public boolean updateCustUserStatus(String userId, Integer status) {
        return custUserMapper.updateStatus(userId, status) == 1;
    }
}
