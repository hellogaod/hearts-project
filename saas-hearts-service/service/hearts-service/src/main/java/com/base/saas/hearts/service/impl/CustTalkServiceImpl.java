package com.base.saas.hearts.service.impl;

import com.base.saas.hearts.domain.entity.CustTalk;
import com.base.saas.hearts.mapper.CustTalkMapper;
import com.base.saas.hearts.service.CustTalkService;
import com.base.saas.userinfo.AppUserContextUtil;
import com.base.saas.userinfo.UserInfo;
import com.base.saas.util.CreateIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @className: CustTalkServiceImpl
 * @author: 佛学徒
 * @date: 2022/12/20
 * @Description： 话题service实现
 **/
@Service
public class CustTalkServiceImpl implements CustTalkService {

    @Autowired
    CustTalkMapper custTalkMapper;

    @Override
    public boolean addCustTalk(CustTalk custTalk) {
        UserInfo userInfo = AppUserContextUtil.getUserInfo();

        if (userInfo == null) {
            return false;
        }

        custTalk.setId(CreateIDUtil.getId());
        custTalk.setCompanyCode(userInfo.getCompanyCode());
        custTalk.setCreateTime(new Date());
        custTalk.setCreateUser(userInfo.getUserId());
        custTalk.setUpdateTime(new Date());
        custTalk.setStatus(1);
        return custTalkMapper.insertSelective(custTalk) == 1;
    }

    @Override
    public boolean updateCustTalk(CustTalk custTalk) {
        custTalk.setUpdateTime(new Date());
        return custTalkMapper.updateByPrimaryKeySelective(custTalk) == 1;
    }

    @Override
    public CustTalk getCustTalkInfoById(String talkId) {
        return custTalkMapper.selectByPrimaryKey(talkId);
    }

    @Override
    public List<CustTalk> getCustTalkList(Integer status, String createrUserId, String companyCode) {
        return custTalkMapper.selectList(status, createrUserId, companyCode);
    }
}
