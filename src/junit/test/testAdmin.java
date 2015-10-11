package junit.test;

import com.jar.domain.Admin;
import com.jar.domain.User;
import com.jar.service.AdminService;
import com.jar.service.UserService;
import com.jar.util.Tools;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by zhuzw_000 on 2015/9/22.
 */
public class testAdmin {

    @Test
    public void testAddRecord(){

        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminService adminService = (AdminService) ctx.getBean("adminService");

        UserService userService = (UserService) ctx.getBean("userService");


        Admin admin = new Admin();

        admin.setUsername("admin");
        admin.setLastLoginIp(new Tools().getLocalIp());
        admin.setLastLoginTime(new Tools().getCurrentTime());

        adminService.addRecord(admin);

    }

    @Test
    public void testLogin(){
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");


        UserService userService = (UserService) ctx.getBean("userService");

        User user =  new User();

        user = userService.login("admin","adsdmin");

        if(user!=null){
            System.out.println("有啊");
        }else{
            System.out.println("并没有");
        }


    }
}
