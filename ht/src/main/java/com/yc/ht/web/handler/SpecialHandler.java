package com.yc.ht.web.handler;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;
import com.yc.ht.service.SpecialService;

@Controller("specialHandler")
@RequestMapping("special")
public class SpecialHandler {
	
	@Autowired
	public SpecialService specialService;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	@ResponseBody
	public List<Special> specialList(){
		LogManager.getLogger().debug("首页的专辑图片显示进来了");
		return specialService.listSpeical();
	}
	
	@RequestMapping(value="detail", method=RequestMethod.GET)
	@ResponseBody
	public Special specialDetail(int spid){
		LogManager.getLogger().debug("根据专辑id获取详情。。。spid:"+spid);
		return specialService.specialDetail(spid);
	}
	
	@RequestMapping(value="music", method=RequestMethod.GET)
	@ResponseBody
	public List<Song> specialSong(int spid){
		LogManager.getLogger().debug("根据专辑获取歌曲。。。");
		return specialService.findSongBySpecial(spid);
	}
	
	@RequestMapping(value="newest", method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Special> newestSpecial(String rows,String page){
		LogManager.getLogger().debug("专辑页面分页显示最新专辑。。。rows:"+rows+",page:"+page);
		return specialService.newestSpecial(rows, page);
	}
	
	@RequestMapping(value="hottest", method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Special> hottestSpecial(String rows,String page){
		LogManager.getLogger().debug("专辑页面分页显示热门专辑。。。rows:"+rows+",page:"+page);
		return specialService.hottestSpecial(rows, page);
	}
	
	
	@RequestMapping(value="{/style}", method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Special> getSpecialByStyle(String rows,String page,@PathVariable("{/style}")String style){
		LogManager.getLogger().debug("专辑页面分页显示热门专辑。。。rows:"+rows+",page:"+page+",style:"+style);
		return specialService.getSpecialByStyle(rows, page,style);
	}
	
	
	@RequestMapping(value="style", method=RequestMethod.GET)
	@ResponseBody
	public List<Languages> specialStyle(){
		LogManager.getLogger().debug("专辑页面显示专辑类型。。");
		return specialService.specialStyle();
	}
}
