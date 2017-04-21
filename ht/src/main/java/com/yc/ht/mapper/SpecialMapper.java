package com.yc.ht.mapper;

import java.util.List;
import java.util.Map;

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

	PaginationBean<Special> getSpecialByStyle(Map<String, Object> map);

	int specialDelete(Integer spid);

	int specialModify(Special special);

	PaginationBean<Special> specialBack(PaginationBean<Special> pb);

	List<Special> specialSearch(String spname);

	/*int findSgid(String sgname);*/

	int findLgid(String lgname);

	int addLanguage(String lgname);

	List<String> specialStyleName();
	
	Special specialFindByName(String spname);
	
	int specialAdd(Special special);

	//点击量
	int updateClickRate(Special special);
}
