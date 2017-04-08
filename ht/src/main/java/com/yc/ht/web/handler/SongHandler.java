package com.yc.ht.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.service.SongService;

@Controller("songHandler")
@RequestMapping("song")
public class SongHandler {
	
	@Autowired
	private SongService songService;
	
	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> songList(){
		return songService.listSong();
	}
	
	@RequestMapping(value="pagination",method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Song> songPagiagetionList(String pageS,String currP){
		System.out.println("currP："+currP);
		return songService.listSong(pageS, currP);
	}
	@RequestMapping(value="{sgEname}",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> HOT(@PathVariable("sgEname") String sgEname){
		return songService.Hot(sgEname);
	}
	
	
}
