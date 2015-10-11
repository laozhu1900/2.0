package junit.test;

import com.jar.domain.Contact;
import com.jar.service.ContactService;
import com.jar.util.mail.MailSend;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by zhuzw_000 on 2015/9/6.
 */
public class testContact {


    @Test
    public void testAdvice(){

        MailSend mailSend = new MailSend();

        new MailSend().contactMe("111","11","33");
    }
}
