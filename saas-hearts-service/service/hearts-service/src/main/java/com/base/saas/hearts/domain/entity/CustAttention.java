package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("关注")
public class CustAttention {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("关注者id")
    private String attentionId;
    @ApiModelProperty("关注者名称")
    private String attentionName;

    @ApiModelProperty("被关注着id")
    private String beAttentionId;
    @ApiModelProperty("关注者名称")
    private String beAttentionName;

    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;

    private Date createTime;

    private Date updateTime;

}