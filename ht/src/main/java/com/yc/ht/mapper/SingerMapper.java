package com.yc.ht.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;

public interface SingerMapper {

	List<Singer> findSinger();
	
	List<Singer> refer(Singer singer);

	List<Singer> refre(Singer singer);

	List<Singer> clikee(@Param("sg")String sgna,@Param("sge")String sgen); //String sgna,String sgen

	List<Singer> HOT(String sgEname);

	List<Singer> WHOle(Singer singer);

	PaginationBean<Singer> findPaginationSong(PaginationBean<Singer> pb);

	PaginationBean<Singer> findPaginationSinger(PaginationBean<Singer> pb);

	List<Singer> findSingerById(String sgid);

	int modifySinger(Singer singer);

	int removeSinger(String sgid);

	List<Singer> findSingerByNames(String sgname);//模糊查询
	
	Singer findSingerbyName(String sgname);//姓名查询
	
	int addSinger(Singer singer);

	
}
