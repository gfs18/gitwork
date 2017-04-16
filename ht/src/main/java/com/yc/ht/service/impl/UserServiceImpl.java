package com.yc.ht.service.impl;

import java.util.List;


import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Users;
import com.yc.ht.mapper.UserMapper;
import com.yc.ht.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	/**
	 * 用户的登录
	 */
	@Override
	public Users login(Users user) {
		return userMapper.login(user);
	}
	
	/**
	 * 注册
	 */
	@Override
	public boolean zc(Users user) {
		return userMapper.zhuce(user) >0;
	}


	@Override
	public List<Song> Singg(String lgid) {
		return userMapper.Singgg(lgid);
	}

	@Override
	public List<Singer> Sonng(String lgid) {
		return userMapper.Sonngg(lgid);
	}


	/**
	 * 后台用户分页显示
	 */
	@Override
	public PaginationBean<Users> listUsers(String pageS, String currP) {
		int pageSize = 6;//每页条数
		int currPage = 1;//当前页数
		PaginationBean<Users> pb = new PaginationBean<Users>();
		if(pageS != null){
			pageSize = Integer.parseInt(pageS);
		}
		if(currP != null){
			currPage =  Integer.parseInt(currP);
			if(currPage <=0){
				currPage = 1;
			}
		}
		pb.setCurrPage(currPage);
		pb.setPageSize(pageSize);
		pb=userMapper.findPaginationUsers(pb);		
		Integer totalPage = pb.getTotalPage();
		if(currPage >= totalPage ){
			currPage = totalPage;
		}
		pb.setCurrPage(currPage);
		LogManager.getLogger().debug("总页面"+totalPage+"页 ; 总记录数"+pb.getTotal());
		return pb;
	}

	/**
	 * 后台删除用户
	 */
	@Override
	public boolean removeUser(String  userid) {
		return userMapper.deleteUser(Integer.valueOf(userid))>0;
	}

	/**
	 * 后台用户的查找
	 */
	@Override
	public List<Users> listReferUser(String uname) {
		return userMapper.findReferUser(uname);
	}

	/**
	 * 后台用户的修改
	 */
	@Override
	public boolean modifyUser(Users user) {
		return userMapper.updateUser(user)>0;
	}

	@Override
	public boolean modifyUserInfo(Users user) {
		return userMapper.modifyUserInfo(user)>0;
	}
	
}
