package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;

public interface SongService {

	List<Song> listSong();
	
	List<Song> findSongById(String soid);
	
	List<Song> findSongByName(String soname);
	
	List<Song> findSongAndSingerById(String soid);
	
	Song findSongName(Song song);
	
	PaginationBean<Song> listSong(String pageS,String currP);
	
	boolean removeSong(String soid);
	
	boolean modifySong(Song song);

	boolean addSong(Song song);


}

