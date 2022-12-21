package com.base.saas.hearts.service.impl;

import com.base.saas.hearts.domain.entity.CustComment;
import com.base.saas.hearts.mapper.CustCommentMapper;
import com.base.saas.hearts.service.CustCommentService;
import com.base.saas.userinfo.AppUserContextUtil;
import com.base.saas.userinfo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @className: CustCommentServiceImpl
 * @author: 佛学徒
 * @date: 2022/12/20
 * @Description： 评论service实现
 **/
@Service
public class CustCommentServiceImpl implements CustCommentService {

    @Autowired
    CustCommentMapper custCommentMapper;

    @Override
    public boolean addCustComment(CustComment custComment) {
        UserInfo userInfo = AppUserContextUtil.getUserInfo();

        custComment.setCompanyCode(userInfo.getCompanyCode());
        custComment.setCreateTime(new Date());
        custComment.setCreateUser(userInfo.getUserId());
        custComment.setUpdateTime(new Date());

        return custCommentMapper.insertSelective(custComment) == 1;
    }

    @Override
    public boolean updateCustComment(CustComment custComment) {

        custComment.setUpdateTime(new Date());
        return custCommentMapper.updateByPrimaryKey(custComment) == 1;
    }

    @Override
    public CustComment getCustCommentInfoById(String commentId) {
        return custCommentMapper.selectByPrimaryKey(commentId);
    }

    @Override
    public List<CustComment> getCustCommentList(Integer status, String talkId, String talkCreateUserId) {
        return custCommentMapper.selectList(status, talkId, talkCreateUserId);
    }
}
