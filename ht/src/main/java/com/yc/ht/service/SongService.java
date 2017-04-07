package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;

public interface SongService {

	List<Song> listSong();
	
	PaginationBean<Song> listSong(String pageS,String currP);
	
	boolean removeSong(String soid);

}

