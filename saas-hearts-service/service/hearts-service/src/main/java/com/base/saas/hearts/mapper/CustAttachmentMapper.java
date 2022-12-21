package com.base.saas.hearts.mapper;

import com.base.saas.hearts.domain.entity.CustAttachment;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustAttachmentMapper {

    int insertSelective(CustAttachment record);

    CustAttachment selectByPrimaryKey(String id);

}