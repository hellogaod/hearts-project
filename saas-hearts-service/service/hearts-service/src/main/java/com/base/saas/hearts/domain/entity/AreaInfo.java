package com.base.saas.hearts.domain.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

@Data
@ApiModel("区域信息")
public class AreaInfo {
    @ApiModelProperty("id")
    private String id;
    @ApiModelProperty("名称")
    private String namess;
    @ApiModelProperty("所属上级id")
    private String pid;
    @ApiModelProperty("级别，1：省；2：市")
    private Integer level;

    private List<AreaInfo> children;
}