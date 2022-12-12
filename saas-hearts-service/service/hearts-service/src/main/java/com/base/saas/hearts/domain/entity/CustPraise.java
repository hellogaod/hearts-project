package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("点赞")
public class CustPraise {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;
    @ApiModelProperty("所属话题")
    private String talkId;
    @ApiModelProperty("点赞者id")
    private String praiseUserId;

    private Date createTime;

    private Date updateTime;

}