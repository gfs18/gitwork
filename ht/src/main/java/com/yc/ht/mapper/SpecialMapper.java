package com.yc.ht.mapper;

import java.util.List;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;

public interface SpecialMapper {

	List<Special> findSpecial();

	List<Song> findSongBySpecial(int spid);

	//通过id找到专辑
	Special specialDetail(int spid);

	PaginationBean<Special> newestSpecial(PaginationBean<Special> pb);

	List<Languages> specialStyle();

	PaginationBean<Special> hottestSpecial(PaginationBean<Special> pb);

	PaginationBean<Special> getSpecialByStyle(PaginationBean<Special> pb);
	
}
