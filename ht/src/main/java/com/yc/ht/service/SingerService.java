package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;

public interface SingerService {

	List<Singer> findSinger();
	List<Singer> inquire(Singer singer);

	List<Singer> refer(Singer singer);

	List<Singer> click(String sgna,String sgen);

	List<Singer> Hot(String sgEname);

	List<Singer> WHole(Singer singer);

	PaginationBean<Singer> listSong(String pageS,String currP);
	
	PaginationBean<Singer> listSinger(String pageSize, String currPage);
	
	List<Singer> findSingerById(String sgid);
	
	boolean modifySinger(Singer singer);
	
	boolean removeSinger(String sgid);

	boolean addSinger(Singer singer);
	
	List<Singer> findSingerByName(String sgname);
	
	Singer findSingerName(String sgname);
	
}
