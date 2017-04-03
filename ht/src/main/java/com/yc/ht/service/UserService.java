package com.yc.ht.service;

import com.yc.ht.entity.Users;

public interface UserService {
	Users login(Users user);//用户登录
	
	boolean zc(Users user); //注册
}
