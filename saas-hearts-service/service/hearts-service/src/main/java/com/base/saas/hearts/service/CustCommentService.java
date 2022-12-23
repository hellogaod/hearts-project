package com.base.saas.hearts.service;

import com.base.saas.hearts.domain.entity.CustComment;

import java.util.List;

/**
 * @className: CustCommentService
 * @author: 佛学徒
 * @date: 2022/12/20
 * @Description： app评论service
 **/
public interface CustCommentService {

    boolean addCustComment(CustComment custComment);

    boolean updateCustComment(CustComment custComment);

    CustComment getCustCommentInfoById(String commentId);

    List<CustComment> getCustCommentList(Integer status,String talkId,String talkCreateUserId, String companyCode);
}
