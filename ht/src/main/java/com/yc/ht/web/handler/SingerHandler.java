package com.yc.ht.web.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.service.SingerService;

@Controller("singerHandler")
@RequestMapping("singer")
public class SingerHandler {
	@Autowired
	private SingerService singerService;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> findSinger(){
		LogManager.getLogger().debug("首页歌手图片进来了");
		return singerService.findSinger();
	}
	
	@RequestMapping(value="s",method=RequestMethod.GET)
	@ResponseBody
	public List<Languages> load(Languages languages){
		return singerService.inquire(languages);
		
	}
	
	/*@RequestMapping(value="n",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> loadName(Singer singer){
		return userService.refer(singer);
		
	}*/
	
	@RequestMapping(value="{lgid}",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> Click(@PathVariable("lgid") String lgid){
		return singerService.click(lgid);
	}
	
	@RequestMapping(value="whole",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> Whole(Singer singer){
		return singerService.WHole(singer);
	}
	
	@RequestMapping(value="pagination",method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Singer> songPagiagetionList(String pageS,String currP){
		System.out.println("currP当前页....："+currP+"------"+"pageSize每页显示的数据条数........"+pageS);
		return singerService.listSong(pageS, currP);
	}
	
}
