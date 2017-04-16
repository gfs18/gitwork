package com.yc.ht.mapper;

import java.util.List;


import com.yc.ht.entity.Singer;

import com.yc.ht.entity.PaginationBean;

import com.yc.ht.entity.Song;
import com.yc.ht.entity.Users;

public interface UserMapper {
	
	Users login(Users user); //登陆
	
	int zhuce(Users user); //注册


	List<Singer> Sonngg(String lgid);

	List<Song> Singgg(String lgid);

	
	PaginationBean<Users> findPaginationUsers(PaginationBean<Users> userBean);//后台管理中的用户分页显示

	int deleteUser(Integer userid);//用户删除

	List<Users> findReferUser(String uname);//后台用户的查找

	int updateUser(Users user);//用户的修改

	int modifyUserInfo(Users user);


}
