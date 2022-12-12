package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel("附件")
public class CustAttachment {
    private String id;
    @ApiModelProperty("企业code")
    private String companyCode;
    @ApiModelProperty("url路径")
    private String url;

    private Date createTime;

}