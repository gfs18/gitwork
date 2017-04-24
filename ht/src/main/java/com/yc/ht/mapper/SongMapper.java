package com.yc.ht.mapper;

import java.util.List;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;

public interface SongMapper {
	List<Song> findSong();
	
	List<Song> findSongById(Integer soid);
	
	List<Song> finSongAndSingerById(Integer soid);
	
	List<Song> findSongByName(String soname);
	
	Song findSongName(Song song);
	
	PaginationBean<Song> findPaginationSong(PaginationBean<Song> userBean);//分页

	int removeSong(Integer soid);
	
	int modifySong(Song song);
	
	int addSong(Song song);
}
