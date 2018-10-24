package com.lijinjiang.entity.custom;

import com.lijinjiang.entity.Comment;

/**
 * Created by 李晋江 on 2017/9/10.
 */
public class CommentCustom extends Comment {
    //评论者的头像
    private String commentAuthorPhoto;

    public String getcommentAuthorPhoto() {
        return commentAuthorPhoto;
    }

    public void setcommentAuthorPhoto(String commentAuthorPhoto) {
        this.commentAuthorPhoto = commentAuthorPhoto;
    }
}
