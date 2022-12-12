package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("举报")
public class CustReport {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("内容")
    private String content;

    private Date createTime;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;
    @ApiModelProperty("举报类型，0：举报话题；1：举报评论")
    private Integer sourceType;
    @ApiModelProperty("根据举报类型判断，0：当前是话题id；1：当前是评论id")
    private String sourceId;

    private byte[] classify;

}