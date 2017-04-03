package com.yc.ht.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Song;
import com.yc.ht.service.SongService;

@Controller("songHandler")
public class SongHandler {
	
	@Autowired
	private SongService songService;
	
	@RequestMapping(value="song",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> songList(){
		return songService.listSong();
	}
}
