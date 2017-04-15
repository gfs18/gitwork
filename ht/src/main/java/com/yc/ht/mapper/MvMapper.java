package com.yc.ht.mapper;


import java.util.List;

import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;

public interface MvMapper {
	PaginationBean<Mv> findPaginationMv(PaginationBean<Mv> userBean);//分页
	
	int removeMv(Integer mvid);

	List<Mv> findMv();
}
