package com.yc.ht.service;

import java.util.List;


import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;

import com.yc.ht.entity.PaginationBean;

import com.yc.ht.entity.Users;

public interface UserService {
	Users login(Users user);//用户登录
	
	boolean zc(Users user); //注册


	List<Singer> Sonng(String lgid);

	List<Song> Singg(Song song);

	PaginationBean<Users> listUsers(String pageS, String currP);//在后台用户管理中分页显示用户

	boolean removeUser(String userid);//用户删除

	List<Users> listReferUser(String uname);//用户的查找

}
