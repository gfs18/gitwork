package com.yc.ht.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Users;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceTest {

	@Autowired
	private UserService usersService;
	@Test
	public void testLogin() {
		Users users=new Users();
		users.setUname("admin");
		users.setUpwd("aaa");
		users=usersService.login(users);
		System.out.println(users);
		

	}

}
