package com.yc.ht.mapper;

import java.util.List;

import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Users;

public interface UserMapper {
	
	Users login(Users user); //登陆
	
	int zhuce(Users user); //注册

	List<Singer> Sonngg(String lgid);

	List<Song> Singgg(Song song);
}
