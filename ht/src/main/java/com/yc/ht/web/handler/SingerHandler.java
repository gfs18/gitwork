package com.yc.ht.web.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.service.SingerService;
import com.yc.ht.util.ServletUtil;

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
		LogManager.getLogger().debug("currP当前页....："+currP+"------"+"pageSize每页显示的数据条数........"+pageS);
		return singerService.listSong(pageS, currP);
	}
	

	@RequestMapping(value="Spagination",method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Singer> SPagiagetionList(String PageSize,String currPage){
		System.out.println("PageSize。。。。"+PageSize+"currPage。。。"+currPage);
		return singerService.listSinger(PageSize, currPage);
	}
	
	@RequestMapping(value="modify",method=RequestMethod.POST)
	public String modifySinger(Singer singer,@RequestParam("picData") MultipartFile picData){
		String picPath = null;
		if(picData != null && !picData.isEmpty()){
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				picPath = ServletUtil.VIRTUAL_UPLOAD_DIR + picData.getOriginalFilename();
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		singer.setSgpicPath(picPath);
		if(singerService.modifySinger(singer)){
			return "redirect:/back/singer.jsp";
		}else{
			return "forward:/back/singerModify.jsp";
		}

	}
	
	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> songList(String sgid){
			return singerService.findSingerById(sgid);
	}
	
	@RequestMapping(value="remove",method=RequestMethod.POST)
	@ResponseBody
	public boolean removeSinger(String sgid){
		return singerService.removeSinger(sgid);
	}
	
	
	@RequestMapping(value="Refer/{sgname}",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> referSinger(@PathVariable("sgname") String sgname){
		try {
			sgname = new String(sgname.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println("Refer..............进来了");
		return singerService.findSingerByName(sgname);
	}
	
}
