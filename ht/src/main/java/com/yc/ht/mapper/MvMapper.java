package com.yc.ht.mapper;


import java.util.List;

import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;

public interface MvMapper {
	PaginationBean<Mv> findPaginationMv(PaginationBean<Mv> userBean);//分页
	
	int removeMv(Integer mvid);										//删除MV
		
	List<Mv> findReferMV(String mvName);							//查新MV
}
