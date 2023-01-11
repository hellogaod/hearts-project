package com.app.saas.hearts.entity;


import java.util.Date;

//评论
public class CustComment {

    private String id;

    //企业code
    private String companyCode;

    //评论者id
    private String createUser;

    //评论者name
    private String createUserName;

    //所属话题id
    private String talkId;

    //评论所属话题的创建用户id
    private String talkCreateUserId;

    //评论内容
    private String content;

    //状态，0：停用；1：启用
    private int status;

    private Date createTime;

    private Date updateTime;

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

    public String getTalkId() {
        return talkId;
    }

    public void setTalkId(String talkId) {
        this.talkId = talkId;
    }

    public String getTalkCreateUserId() {
        return talkCreateUserId;
    }

    public void setTalkCreateUserId(String talkCreateUserId) {
        this.talkCreateUserId = talkCreateUserId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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