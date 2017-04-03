package com.yc.ht.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Users;
import com.yc.ht.mapper.UserMapper;
import com.yc.ht.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	
	@Override
	public Users login(Users user) {
		return userMapper.login(user);
	}
	
	@Override
	public boolean zc(Users user) {
		return userMapper.zhuce(user) >0;
	}

}
