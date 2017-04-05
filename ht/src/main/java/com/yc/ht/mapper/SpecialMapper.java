package com.yc.ht.mapper;

import java.util.List;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;

public interface SpecialMapper {

	List<Special> findSpecial();

	List<Song> findSongBySpecial(int spid);

	Special specialDetail(int spid);

	PaginationBean<Special> allSpecial(PaginationBean<Special> pb);
	
}
