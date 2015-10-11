package com.jar.domain;

import java.io.Serializable;
import java.sql.Blob;

/**
 * Created by zhuzw_000 on 2015/9/22.
 */
public class Admin implements Serializable{

//
//    id INT (12) PRIMARY KEY  AUTO_INCREMENT NOT NULL ,
//    username VARCHAR(50) UNIQUE NOT NULL ,
//    password VARCHAR(50) NOT NULL ,
//    email VARCHAR(50) UNIQUE NOT NULL ,
//    last_login_ip VARCHAR(255) DEFAULT NULL ,
//    last_login_time BIGINT(20) DEFAULT NULL ,
//    authority VARCHAR(20) DEFAULT NULL ,
//    head_pic MEDIUMBLOB  DEFAULT NULL ,


    private int id;
    private String username;


    private String lastLoginIp;
    private long lastLoginTime;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    public long getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(long lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }


}
