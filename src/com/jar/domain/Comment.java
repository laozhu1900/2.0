package com.jar.domain;

import java.io.Serializable;

/**
 * Created by zhuzw_000 on 2015/8/19.
 */
public class Comment implements Serializable{


// comments£ºid,article_id,context,user_id,edit_date

    private int id;

    private String context;

    private long editTime;

    private String username;

    private Article article;

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public long getEditTime() {
        return editTime;
    }

    public void setEditTime(long editTime) {
        this.editTime = editTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
