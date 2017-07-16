package pers.zgesw.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import pers.zgesw.entity.User;
import pers.zgesw.service.UserService;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月13日 上午10:29:07
 * @description 
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestUserService {
	
	@Autowired
	private UserService userService;
	
	@Test
	public void fun(){
		for (int i = 0; i < 10; i++) {
			User user = new User();
			user.setUsername("itcast"+i);
			userService.addUser(user);
		}
	}
	
	
	
	
}
