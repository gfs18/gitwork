package com.yc.ht.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;
import com.yc.ht.mapper.SpecialMapper;
import com.yc.ht.service.SpecialService;

@Service("specialService")
public class SpecialServiceImpl implements SpecialService{

	@Autowired
	private SpecialMapper specialMapper;
	
	@Override
	public List<Special> listSpeical() {
		return specialMapper.findSpecial();
	}

	@Override
	public List<Song> findSongBySpecial(int spid) {
		return specialMapper.findSongBySpecial(spid);
	}

	@Override
	public Special specialDetail(int spid) {
		return specialMapper.specialDetail(spid);
	}

	@Override
	public PaginationBean<Special> newestSpecial(String rows, String page) {
		PaginationBean<Special> pb=new PaginationBean<Special>();
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}

		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		return specialMapper.newestSpecial(pb);
	}

	@Override
	public List<Languages> specialStyle() {
		return specialMapper.specialStyle();
	}

	@Override
	public PaginationBean<Special> hottestSpecial(String rows, String page) {
		PaginationBean<Special> pb=new PaginationBean<Special>();
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		return specialMapper.hottestSpecial(pb);
	}

	@Override
	public PaginationBean<Special> getSpecialByStyle(Map<String, Object> map) {
		/*PaginationBean<Special> pb=new PaginationBean<Special>();
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		*/
		//System.out.println("getSpecialByStyle:"+specialMapper.getSpecialByStyle(map));
		return specialMapper.getSpecialByStyle(map);
	}


	@Override
	public boolean specialDelete(String spid) {
		return specialMapper.specialDelete(Integer.valueOf(spid))>0;
	}

	@Override
	public boolean specialModify(Special special) {
		return specialMapper.specialModify(special)>0;
	}

	@Override
	public PaginationBean<Special> specialBack(String rows, String page) {
		PaginationBean<Special> pb=new PaginationBean<Special>();
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		return specialMapper.specialBack(pb);
	}

	@Override
	public List<Special> specialSearch(String spname) {
		return specialMapper.specialSearch(spname);
	}



	@Override
	public int findLgid(String lgname) {
		return specialMapper.findLgid(lgname);
	}

	@Override
	public boolean addLanguage(String lgname) {
		return specialMapper.addLanguage(lgname)>0;
	}

	@Override
	public List<String> specialStyleName() {
		return specialMapper.specialStyleName();
	}

	@Override
	public Special SpecialFindByName(String spname) {
		return specialMapper.specialFindByName(spname);
	}

	@Override
	public boolean specialAdd(Special special) {
		return specialMapper.specialAdd(special)>0;
	}
	
}
