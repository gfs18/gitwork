package com.yc.ht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Singer;
import com.yc.ht.mapper.SingerMapper;
import com.yc.ht.service.SingerService;

@Service("singerService")
public class SingerServiceImpl implements SingerService {
	
	@Autowired
	private SingerMapper  singerMapper;

	@Override
	public List<Singer> findSinger() {
		return singerMapper.findSinger();
	}

}
