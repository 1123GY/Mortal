package com.lijinjiang.entity;

import java.util.Date;

public class User {
    private Integer userId;

    private String userName;

    private String userPassword;

    private String userNickname;

    private String userQQ;

    private String userUrl;

    private String userPhoto;

    private String userLastLoginIp;

    private Date userRegisterTime;

    private Date userLastLoginTime;

    private Integer userRole;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getuserPassword() {
        return userPassword;
    }

    public void setuserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname == null ? null : userNickname.trim();
    }

    public String getuserQQ() {
        return userQQ;
    }

    public void setuserQQ(String userQQ) {
        this.userQQ = userQQ == null ? null : userQQ.trim();
    }

    public String getUserUrl() {
        return userUrl;
    }

    public void setUserUrl(String userUrl) {
        this.userUrl = userUrl == null ? null : userUrl.trim();
    }

    public String getuserPhoto() {
        return userPhoto;
    }

    public void setuserPhoto(String userPhoto) {
        this.userPhoto = userPhoto == null ? null : userPhoto.trim();
    }

    public String getUserLastLoginIp() {
        return userLastLoginIp;
    }

    public void setUserLastLoginIp(String userLastLoginIp) {
        this.userLastLoginIp = userLastLoginIp == null ? null : userLastLoginIp.trim();
    }

    public Date getUserRegisterTime() {
        return userRegisterTime;
    }

    public void setUserRegisterTime(Date userRegisterTime) {
        this.userRegisterTime = userRegisterTime;
    }

    public Date getUserLastLoginTime() {
        return userLastLoginTime;
    }

    public void setUserLastLoginTime(Date userLastLoginTime) {
        this.userLastLoginTime = userLastLoginTime;
    }

    public Integer getuserRole() {
        return userRole;
    }

    public void setuserRole(Integer userRole) {
        this.userRole = userRole;
    }
}