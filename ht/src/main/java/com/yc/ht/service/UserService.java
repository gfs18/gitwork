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

	List<Song> Singg(String lgid);

	PaginationBean<Users> listUsers(String pageS, String currP);//在后台用户管理中分页显示用户

	boolean removeUser(String userid);//用户删除

	List<Users> listReferUser(String uname);//用户的查找

	//boolean modifyUser(Users user);//用户的修改
	boolean modifyUser(Integer userid);
	Users showUser(String userid);//前台通过用户的id显示部分用户信息

	

	

}
