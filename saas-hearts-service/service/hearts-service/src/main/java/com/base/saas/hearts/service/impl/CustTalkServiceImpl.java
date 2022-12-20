package com.base.saas.hearts.service.impl;

import com.base.saas.hearts.domain.entity.CustTalk;
import com.base.saas.hearts.mapper.CustTalkMapper;
import com.base.saas.hearts.service.CustTalkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        return custTalkMapper.insertSelective(custTalk) == 1;
    }

    @Override
    public boolean updateCustTalk(CustTalk custTalk) {
        return custTalkMapper.updateByPrimaryKeySelective(custTalk) == 1;
    }

    @Override
    public CustTalk getCustTalkInfoById(String talkId) {
        return custTalkMapper.selectByPrimaryKey(talkId);
    }

    @Override
    public List<CustTalk> getCustTalkList(Integer status, String createrUserId) {
        return custTalkMapper.selectList(status,createrUserId);
    }
}
