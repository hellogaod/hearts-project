package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("关于app")
public class CustAboutApp {
    @ApiModelProperty("id")
    private String id;
    @ApiModelProperty("所属企业")
    private String companyCode;
    @ApiModelProperty("app名称")
    private String name;
    @ApiModelProperty("android code name")
    private String androidCodeName;
    @ApiModelProperty("android code version")
    private Integer androidCodeVersion;
    @ApiModelProperty("android下载地址")
    private String androidUrl;
    @ApiModelProperty("ios cose name")
    private String iosCodeName;
    @ApiModelProperty("ios code version")
    private Integer iosCodeVersion;
    @ApiModelProperty("ios appstore地址")
    private String iosUrl;
    @ApiModelProperty("app描述")
    private String description;
    @ApiModelProperty("logo地址")
    private String logo;

    private String createrUser;

    private String createrUserName;

    private String updateUserName;

    private String updateUser;

    private Date createTime;

    private Date updateTime;
    @ApiModelProperty("android更新描述")
    private String androidUpdateDescription;
    @ApiModelProperty("ios更新描述")
    private String iosUpdateDescription;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;
}