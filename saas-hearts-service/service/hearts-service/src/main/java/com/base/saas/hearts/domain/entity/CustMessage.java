package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("消息")
public class CustMessage {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("标题")
    private String title;
    @ApiModelProperty("内容")
    private String content;
    @ApiModelProperty("状态，0：停用；1：启用")
    private Integer status;
    @ApiModelProperty("所属用户")
    private String customerId;
    @ApiModelProperty("所属用户名称")
    private String customerName;
    @ApiModelProperty("类型：1:注册消息，修改密码；2.话题被赞，被评论了；3.用户被关注了；4.被举报了；5.举报受理情况；6. 意见反馈处理情况；")
    private Integer type;

    private Date createTime;

}