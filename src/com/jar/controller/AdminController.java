package com.jar.controller;

import com.jar.domain.Admin;
import com.jar.domain.User;
import com.jar.service.AdminService;
import com.jar.service.UserService;
import com.jar.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zhuzw_000 on 2015/9/20.
 */


@Controller
@RequestMapping(value = "/admin")
public class AdminController {


    @Autowired
    private AdminService adminService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String admin(){

        return "admin/admin";
    }

//    @RequestMapping(value = "/login",method = RequestMethod.GET)
//    public String login(){
//
//        return "admin/login";
//    }

    @RequestMapping(value = "/" ,method = RequestMethod.POST)
    private String login(String username,String password,Model model,HttpServletRequest request){

        System.out.println("用户名:" + username);
        System.out.println("密码：" + password);

        User user = new User();
        user = userService.login(username,password);


        if(user==null){
//            model.addAttribute("admin_msg","您似乎没有coding权限");
            request.getSession().setAttribute("admin_msg","您似乎没有coding权限");

        }else{

            Admin admin = new Admin();
            admin.setUsername(username);
            admin.setLastLoginTime(new Tools().getCurrentTime());
            admin.setLastLoginIp(new Tools().getLocalIp());
            adminService.addRecord(admin);

            request.getSession().setAttribute("admin_msg","coding");
//            model.addAttribute("admin_msg","coding");

        }


        return "admin/admin";
    }



    @RequestMapping(value = "/logout")
    public  String logout(HttpServletRequest request){

        request.getSession().invalidate();

        return "admin/admin";
    }

}
