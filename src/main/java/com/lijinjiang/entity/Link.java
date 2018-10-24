package com.lijinjiang.entity;

import java.util.Date;

public class Link {
    private Integer linkId;

    private String linkUrl;

    private String linkName;

    private String linkDescription;

    private Date linkUpdateTime;

    private Date linkCreateTime;

    private Integer linkOrder;

    private Integer linkStatus;

    public Integer getLinkId() {
        return linkId;
    }

    public void setLinkId(Integer linkId) {
        this.linkId = linkId;
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl == null ? null : linkUrl.trim();
    }

    public String getLinkName() {
        return linkName;
    }

    public void setLinkName(String linkName) {
        this.linkName = linkName == null ? null : linkName.trim();
    }

    public String getLinkDescription() {
        return linkDescription;
    }

    public void setLinkDescription(String linkDescription) {
        this.linkDescription = linkDescription == null ? null : linkDescription.trim();
    }

    public Date getLinkUpdateTime() {
        return linkUpdateTime;
    }

    public void setLinkUpdateTime(Date linkUpdateTime) {
        this.linkUpdateTime = linkUpdateTime;
    }

    public Date getLinkCreateTime() {
        return linkCreateTime;
    }

    public void setLinkCreateTime(Date linkCreateTime) {
        this.linkCreateTime = linkCreateTime;
    }

    public Integer getLinkOrder() {
        return linkOrder;
    }

    public void setLinkOrder(Integer linkOrder) {
        this.linkOrder = linkOrder;
    }

    public Integer getLinkStatus() {
        return linkStatus;
    }

    public void setLinkStatus(Integer linkStatus) {
        this.linkStatus = linkStatus;
    }
}