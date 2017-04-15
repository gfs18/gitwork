package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;

public interface MvService {
	PaginationBean<Mv> listMv(String pageS,String currP);//mv的分页显示
	boolean removeMv(String id);						//删除MV
	List<Mv> listReferMv(String mvName);				//查询MV
}
