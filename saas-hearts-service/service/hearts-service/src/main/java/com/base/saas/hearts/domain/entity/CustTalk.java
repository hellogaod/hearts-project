package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
@ApiModel("话题")
public class CustTalk {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("创建者id")
    private String createUser;
    @ApiModelProperty("创建者姓名")
    private String createUserName;
    @ApiModelProperty("标题")
    private String title;
    @ApiModelProperty("内容")
    private String content;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;
    @ApiModelProperty("满意度")
    private Integer satisfaceRate;
    @ApiModelProperty("话题所属附件，逗号分隔")
    private String attachmentIds;

    @ApiModelProperty("点赞数")
    private int praiseCount;

    @ApiModelProperty("评论数")
    private int commentCount;

    private Date createTime;

    private Date updateTime;

//    @ApiModelProperty("话题所属评论列表")
//    private List<CustComment> custCommentList;
}