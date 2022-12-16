package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("建议")
public class CustSuggest {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("内容")
    private String content;
    @ApiModelProperty("建议者id")
    private String createUser;
    @ApiModelProperty("建议者名称")
    private String createUserName;
    private Date createTime;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;

}