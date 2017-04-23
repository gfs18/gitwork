package com.yc.ht.service.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.mapper.SongMapper;
import com.yc.ht.service.SongService;

@Service("songService")
public class SongServiceImpl implements SongService{

	@Autowired
	private SongMapper songMapper;
	
	@Override
	public List<Song> listSong() {
		return songMapper.findSong();
	}

	/**
	 * 单曲分页
	 */
	@Override
	public PaginationBean<Song> listSong(String pageS,String currP) {
		int pageSize = 10;
		int currPage = 1;
		PaginationBean<Song> pb = new PaginationBean<Song>();
		if(pageS != null){
			pageSize = Integer.parseInt(pageS);
		}
		if(currP != null){
			currPage =  Integer.parseInt(currP);
			if(currPage <=0){
				currPage = 1;
			}
		}
		pb.setCurrPage(currPage);
		pb.setPageSize(pageSize);

		pb = songMapper.findPaginationSong(pb);
		
		Integer totalPage = pb.getTotalPage();
		if(currPage >= totalPage ){
			currPage = totalPage;
		}
		pb.setCurrPage(currPage);

		LogManager.getLogger().debug("总页面"+totalPage+"页 ; 总记录数"+pb.getTotal());
		return pb;
	}

	@Override

	public boolean removeSong(String soid) {
		return songMapper.removeSong(Integer.valueOf(soid))>0;
	}

	@Override
	public List<Song> findSongById(String soid) {
		return songMapper.findSongById(Integer.valueOf(soid));
	}
	
	@Override
	public List<Song> findSongAndSingerById(String soid) {
		return songMapper.finSongAndSingerById(Integer.valueOf(soid));
	}

	@Override
	public boolean modifySong(Song song) {
		return songMapper.modifySong(song)>0;
	}

	@Override
	public List<Song> findSongByName(String soname) {
		return songMapper.findSongByName(soname);

	}

	@Override
	public Song findSongName(Song song) {
		return songMapper.findSongName(song);
	}

	@Override
	public boolean addSong(Song song) {
		return songMapper.addSong(song)>0;
	}

	
}

