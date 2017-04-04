package com.yc.ht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	/*@Override
	public List<Special> listSpeicalMusic() {
		return specialMapper.findSpecialMusic();
	}*/
	
}

