package com.yc.ht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
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

	

	@Override
	public List<Song> Singg(Song song) {
		// TODO Auto-generated method stub
		return userMapper.Singgg(song);
	}

	@Override
	public List<Singer> Sonng(String lgid) {
		// TODO Auto-generated method stub
		return userMapper.Sonngg(lgid);
	}

}
