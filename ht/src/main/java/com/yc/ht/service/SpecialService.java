package com.yc.ht.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;

public interface SpecialService {
	//列出专辑
	List<Special> listSpeical();

	List<Song> findSongBySpecial(int spid);

	Special specialDetail(int spid);

	//列出专辑音乐
	//List<Special> listSpeicalMusic();
	
}

