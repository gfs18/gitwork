package com.yc.ht.service.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.mapper.SingerMapper;
import com.yc.ht.service.SingerService;

@Service("singerService")
public class SingerServiceImpl implements SingerService {
	
	@Autowired
	private SingerMapper  singerMapper;

	@Override
	public List<Singer> findSinger() {
		return singerMapper.findSinger();
	}
	

	@Override
	public List<Languages> inquire(Languages languages) {
		// TODO Auto-generated method stub
		return singerMapper.refer(languages);
	}


	@Override
	public List<Singer> refer(Singer singer) {
		// TODO Auto-generated method stub
		return singerMapper.refre(singer);
	}


	@Override
	public List<Singer> click(String lgid) {
		// TODO Auto-generated method stub
		return singerMapper.clikee(lgid);
	}


	@Override
	public List<Singer> Hot(String sgEname) {
		// TODO Auto-generated method stub
		return singerMapper.HOT(sgEname);
	}


	@Override
	public List<Singer> WHole(Singer singer) {
		// TODO Auto-generated method stub
		return singerMapper.WHOle(singer);
	}


	@Override
	public PaginationBean<Singer> listSong(String pageS,String currP) {
		int pageSize = 10;
		int currPage = 1;
		PaginationBean<Singer> pb = new PaginationBean<Singer>();
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

		pb = singerMapper.findPaginationSong(pb);
		
		Integer totalPage = pb.getTotalPage();
		if(currPage >= totalPage ){
			currPage = totalPage;
		}
		pb.setCurrPage(currPage);

		LogManager.getLogger().debug("总页面"+totalPage+"页 ; 总记录数"+pb.getTotal());
		return pb;
	}


	@Override
	public PaginationBean<Singer> listSinger(String pageSize, String currPage) {
		int pageSize1 = 10;
		int currPage1 = 1;
		PaginationBean<Singer> pb = new PaginationBean<Singer>();
		if(pageSize != null){
			pageSize1 = Integer.parseInt(pageSize);
		}
		if(currPage != null){
			currPage1 =  Integer.parseInt(currPage);
			if(currPage1 <=0){
				currPage1 = 1;
			}
		}
		pb.setCurrPage(currPage1);
		pb.setPageSize(pageSize1);

		pb = singerMapper.findPaginationSinger(pb);
		
		Integer totalPage = pb.getTotalPage();
		if(currPage1 >= totalPage ){
			currPage1 = totalPage;
		}
		pb.setCurrPage(currPage1);

		LogManager.getLogger().debug("总页面"+totalPage+"页 ; 总记录数"+pb.getTotal());
		return pb;
	}

}
