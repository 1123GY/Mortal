package com.lijinjiang.entity.custom;

import com.lijinjiang.entity.User;

/**
 * 用户信息的扩展
 * Created by 李晋江 on 2017/8/24.
 */
public class UserCustom extends User {
    //用户的文章数
    private Integer articleCount;

    public Integer getArticleCount() {
        return articleCount;
    }

    public void setArticleCount(Integer articleCount) {
        this.articleCount = articleCount;
    }
}
