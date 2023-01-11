package com.app.saas.hearts.entity;


import java.util.Date;
import java.util.List;

//话题
public class CustTalk {
    private String id;

    //企业code
    private String companyCode;

    //创建者id
    private String createUser;

    //创建者姓名
    private String createUserName;

    //标题
    private String title;

    //内容
    private String content;

    //状态，0：停用；1：启用
    private int status;

    //满意度
    private int satisfaceRate;

    //话题所属附件，逗号分隔
    private String attachmentIds;

    //点赞数
    private int praiseCount;

    //评论数
    private int commentCount;

    private Date createTime;

    private Date updateTime;

    //话题所属评论列表
//    private List<CustComment> custCommentList;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSatisfaceRate() {
        return satisfaceRate;
    }

    public void setSatisfaceRate(Integer satisfaceRate) {
        this.satisfaceRate = satisfaceRate;
    }

    public String getAttachmentIds() {
        return attachmentIds;
    }

    public void setAttachmentIds(String attachmentIds) {
        this.attachmentIds = attachmentIds;
    }

    public int getPraiseCount() {
        return praiseCount;
    }

    public void setPraiseCount(int praiseCount) {
        this.praiseCount = praiseCount;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}