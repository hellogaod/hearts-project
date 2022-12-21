package com.base.saas.hearts.service;

import com.base.saas.hearts.domain.entity.CustTalk;

import java.util.List;

/**
 * @className: CustTalkService
 * @author: 佛学徒
 * @date: 2022/12/20
 * @Description： app话题service
 **/
public interface CustTalkService {

    boolean addCustTalk(CustTalk custTalk);

    boolean updateCustTalk(CustTalk custTalk);

    CustTalk getCustTalkInfoById(String talkId);

    List<CustTalk> getCustTalkList(Integer status,String createrUserId, String companyCode);
}
