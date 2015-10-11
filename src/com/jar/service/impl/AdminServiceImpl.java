package com.jar.service.impl;

import com.jar.dao.AdminDao;
import com.jar.domain.Admin;
import com.jar.service.AdminService;

/**
 * Created by zhuzw_000 on 2015/9/22.
 */
public class AdminServiceImpl implements AdminService {

    private AdminDao adminDao;

    public void setAdminDao(AdminDao adminDao) {
        this.adminDao = adminDao;
    }

    public void addRecord(Admin admin) {
        adminDao.addRecord(admin);
    }


}
