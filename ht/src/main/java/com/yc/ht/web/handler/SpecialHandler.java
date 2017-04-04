package com.yc.ht.web.handler;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		LogManager.getLogger().debug("专辑图片显示进来了");
		return specialService.listSpeical();
	}
	
	@RequestMapping(value="detail", method=RequestMethod.GET)
	@ResponseBody
	public Special specialDetail(int spid){
		LogManager.getLogger().debug("根据专辑id获取详情。。。spid:"+spid);

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);//设定格式
		System.out.println(dateFormat);
		return specialService.specialDetail(spid);
	}
	
	@RequestMapping(value="music", method=RequestMethod.GET)
	@ResponseBody
	public List<Song> specialSong(int spid){
		LogManager.getLogger().debug("根据专辑获取歌曲。。。");
		return specialService.findSongBySpecial(spid);
	}
}
