package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;

public interface SingerService {

	List<Singer> findSinger();
	List<Languages> inquire(Languages languages);

	List<Singer> refer(Singer singer);

	List<Singer> click(String lgid);

	List<Singer> Hot(String sgEname);

	List<Singer> WHole(Singer singer);

	PaginationBean<Singer> listSong(String pageS,String currP);
	
	PaginationBean<Singer> listSinger(String pageSize, String currPage);
	
	List<Singer> findSingerById(String sgid);
	
	boolean modifySinger(Singer singer);
	
	boolean removeSinger(String sgid);
	
	List<Singer> findSingerByName(String sgname);
}
