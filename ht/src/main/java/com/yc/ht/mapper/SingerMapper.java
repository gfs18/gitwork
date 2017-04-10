package com.yc.ht.mapper;

import java.util.List;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;

public interface SingerMapper {

	List<Singer> findSinger();
	
	List<Languages> refer(Languages languages);

	List<Singer> refre(Singer singer);

	List<Singer> clikee(String lgid);

	List<Singer> HOT(String sgEname);

	List<Singer> WHOle(Singer singer);

	PaginationBean<Singer> findPaginationSong(PaginationBean<Singer> pb);

	PaginationBean<Singer> findPaginationSinger(PaginationBean<Singer> pb);
}
