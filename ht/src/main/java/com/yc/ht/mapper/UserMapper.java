package com.yc.ht.mapper;

import com.yc.ht.entity.Users;

public interface UserMapper {
	
	Users login(Users user); //登陆
	
	int zhuce(Users user); //注册
}
