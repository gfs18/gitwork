package com.yc.ht.service;

import java.util.List;
import java.util.Map;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;

public interface SpecialService {
	//列出专辑
	List<Special> listSpeical();

	List<Song> findSongBySpecial(int spid);

	Special specialDetail(int spid);

	PaginationBean<Special> newestSpecial(String rows, String page);

	List<Languages> specialStyle();

	PaginationBean<Special> hottestSpecial(String rows, String page);

	//PaginationBean<Special> getSpecialByStyle(String rows, String page, int lgid);

	boolean specialDelete(String spid);

	boolean specialModify(Special special);

	PaginationBean<Special> specialBack(String rows, String page);

	List<Special> specialSearch(String spname);

	int findLgid(String lgname);

	boolean addLanguage(String lgname);

	List<String> specialStyleName();

	PaginationBean<Special> getSpecialByStyle(Map<String, Object> map);

	Special SpecialFindByName(String spname);

	boolean specialAdd(Special special);

	//点击量
	boolean clickSpecial(Special special);
	
}

