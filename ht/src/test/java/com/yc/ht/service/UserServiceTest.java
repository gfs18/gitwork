package com.yc.ht.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.PaginationBean;
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

	@Test
	public void testListUsers() {
		PaginationBean<Users> a=usersService.listUsers("1", "1");
		System.out.println(a);
	}
	/*@Test
	public void testListComment() {
		PaginationBean<Comments> com=commentService.listComment(null, null);
		System.out.println(com);
		assertNotNull(com);
	}*/

	//后台删除用户测试
	@Test
	public void testRemoveUser() {
		boolean a=usersService.removeUser("10063");
		System.out.println(a);
	}

	//后台查询用户测试
	@Test
	public void testListReferUser() {
		List<Users> users=usersService.listReferUser("哈");
		System.out.println(users);
		return;
	}
	
	//后台修改用户测试
	@Test
	public void testModifyUser() {
		Users users=new Users();
		users.setUcondition(0);
		users.setUvip(0);
		users.setUserid(10064);
		boolean a=usersService.modifyUser(users);
		System.out.println(a);
		return;
	}	

}
