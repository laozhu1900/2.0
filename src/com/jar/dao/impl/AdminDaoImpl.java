package com.jar.dao.impl;

import com.jar.dao.AdminDao;
import com.jar.domain.Admin;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * Created by zhuzw_000 on 2015/9/22.
 */
public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao,HibernateCallback {


    public void addRecord(Admin admin) {
        this.getHibernateTemplate().save(admin);
    }

    @Override
    public Object doInHibernate(Session session) throws HibernateException {
        return null;
    }
}
