package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("app客户")
public class CustUser {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("phone")
    private String phone;
    @ApiModelProperty("密码")
    private String password;
    @ApiModelProperty("唯一标识")
    private String uniqueIdenty;
    @ApiModelProperty("用户头像管理附件表")
    private String attachmentId;
    @ApiModelProperty("详细地址")
    private String address;
    @ApiModelProperty("签名")
    private String sign;
    @ApiModelProperty("性别")
    private Integer sex;
    @ApiModelProperty("昵称")
    private String nickname;
    @ApiModelProperty("微信号")
    private String wechatno;

    private Date createTime;

    private Date updateTime;
    @ApiModelProperty("最后一次登录ip")
    private String lastLoginIp;
    @ApiModelProperty("最后一次登录时间")
    private Date lastLoginTime;
    @ApiModelProperty("状态，0：停用；1：启用；2：锁定（达到一定错误次数会锁定，或者管理员锁定）")
    private Integer status;
    @ApiModelProperty("登录错误次数")
    private Integer errorCount;

}