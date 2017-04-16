package com.yc.ht.web.handler;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.yc.ht.service.SingerService;
import com.yc.ht.util.ChineseToEnglish;
import com.yc.ht.util.InternetRes;
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
	
	//显示中国男歌手 singer
	@RequestMapping(value="s",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> load(Singer singer){
		return singerService.inquire(singer);
	}



	//查询中国男歌手 +sgnatio+sggende
	@RequestMapping(value="/{sgnatio}",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> Click(@PathVariable("sgnatio") String sgnatio){
		try {
			sgnatio = new String(sgnatio.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		//System.out.println(sgnatio);
		String sgna=sgnatio.trim().substring(0, 2);
		String sgen=sgnatio.trim().substring(2, 3);
		return singerService.click(sgna,sgen);
		
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
		return singerService.findSingerByName(sgname);
	}

	@RequestMapping(value="add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addSinger(String name,String country,String gender,String avatar_s500,String intro){
		if(avatar_s500.isEmpty()){
			avatar_s500 = null;
		}
		if(intro.isEmpty()){
			intro = null;
		}
		Singer sgr = singerService.findSingerName(name);
		Map<String, String> map = new HashMap<String,String>();
		if(sgr != null && !"".equals(sgr)){
			map.put("sgid", String.valueOf(sgr.getSgid()));
		}else{
			if(avatar_s500 != null){
				//文件下载
				String[] strs = avatar_s500.split("@")[0].split("/");
				File file = new File(ServletUtil.UPLOAD_DIR+File.separator+"images");
				if(!file.exists()){
					file.mkdirs();
				}
				String solyricName = "images"+File.separator+strs[(strs.length-1)];
				if(avatar_s500 != null && !"".equals(avatar_s500)){//判断是否文件上传
					InternetRes.getInternetRes(avatar_s500,solyricName);
					avatar_s500 = ServletUtil.VIRTUAL_UPLOAD_DIR + solyricName;
				}
			}
			
			if(intro != null){
				intro = intro.trim().substring(0, 300);
			}
			
			//性别格式转变
			if("0".equals(gender)){
				gender = "男";
			}else{
				gender = "女";
			}
			Singer singer = new Singer(name, ChineseToEnglish.getPingYin(name), country, gender, avatar_s500, intro);
			boolean result = singerService.addSinger(singer);
			if(result){
				map.put("sgid", String.valueOf(singerService.findSingerName(name).getSgid()));
			}
		}
		return map;
	}
}
