package com.yc.ht.service.impl;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.mapper.MvMapper;
import com.yc.ht.service.MvService;

@Service("mvService")
public class MvServiceImpl implements MvService{

	@Autowired
	private MvMapper mvMapper;
	
	@Override
	public PaginationBean<Mv> listMv(String pageS, String currP) {
		int pageSize = 10;
		int currPage = 1;
		PaginationBean<Mv> pb = new PaginationBean<Mv>();
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

		pb = mvMapper.findPaginationMv(pb);
		
		Integer totalPage = pb.getTotalPage();
		if(currPage >= totalPage ){
			currPage = totalPage;
		}
		pb.setCurrPage(currPage);

		LogManager.getLogger().debug("总页面"+totalPage+"页 ; 总记录数"+pb.getTotal());
		return pb;
	}

	@Override
	public boolean removeMv(String id) {
		return mvMapper.removeMv(Integer.valueOf(id))>0;
	}

}
