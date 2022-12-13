package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;
@Data
@ApiModel("广告")
public class CustAdvertisement {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("内容")
    private String content;
    @ApiModelProperty("关联附件")
    private String attachmentId;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;
    @ApiModelProperty("过期时间")
    private Date expiredTime;

    private String createUser;

    private String updateUser;

    private String createUserName;

    private String updateUserName;

    private Date createTime;

    private Date updateTime;

}