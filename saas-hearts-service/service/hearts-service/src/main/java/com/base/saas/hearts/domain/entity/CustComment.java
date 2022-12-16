package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("评论")
public class CustComment {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("评论者id")
    private String createUser;
    @ApiModelProperty("评论者name")
    private String createUserName;
    @ApiModelProperty("所属话题id")
    private String talkId;
    @ApiModelProperty("评论所属话题的创建用户id")
    private String talkCreateUserId;
    @ApiModelProperty("评论内容")
    private String content;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;

    private Date createTime;

    private Date updateTime;

}