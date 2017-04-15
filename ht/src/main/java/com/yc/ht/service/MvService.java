package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;

public interface MvService {
	
	PaginationBean<Mv> listMv(String pageS,String currP);
	boolean removeMv(String id);
	List<Mv> findMv();
}
