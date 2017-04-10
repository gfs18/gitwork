package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Users;

public interface UserService {
	Users login(Users user);//用户登录
	
	boolean zc(Users user); //注册

	List<Singer> Sonng(String lgid);

	List<Song> Singg(Song song);
}
