package com.yc.ht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
}

