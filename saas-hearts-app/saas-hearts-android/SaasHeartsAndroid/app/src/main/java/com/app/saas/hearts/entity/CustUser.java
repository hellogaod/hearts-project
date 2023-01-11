package com.app.saas.hearts.entity;


import java.util.Date;

//app客户
public class CustUser {
    
    private String id;
    
    //企业code
    private String companyCode;
    //phone
    private String phone;
    //密码
    private String password;
    //唯一标识
    private String uniqueIdenty;
    //用户头像管理附件表
    private String attachmentId;
    //详细地址
    private String address;
    //签名
    private String sign;
    //性别
    private int sex;
    //昵称
    private String nickname;
    //微信号
    private String wechatno;

    private Date createTime;

    private Date updateTime;
    //最后一次登录ip
    private String lastLoginIp;
    //最后一次登录时间
    private Date lastLoginTime;
    //状态，0：停用；1：启用；2：锁定（达到一定错误次数会锁定，或者管理员锁定）
    private int status;
    //登录错误次数
    private int errorCount;

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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUniqueIdenty() {
        return uniqueIdenty;
    }

    public void setUniqueIdenty(String uniqueIdenty) {
        this.uniqueIdenty = uniqueIdenty;
    }

    public String getAttachmentId() {
        return attachmentId;
    }

    public void setAttachmentId(String attachmentId) {
        this.attachmentId = attachmentId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getWechatno() {
        return wechatno;
    }

    public void setWechatno(String wechatno) {
        this.wechatno = wechatno;
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

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getErrorCount() {
        return errorCount;
    }

    public void setErrorCount(int errorCount) {
        this.errorCount = errorCount;
    }
}