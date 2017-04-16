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
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;
import com.yc.ht.service.LanguageService;
import com.yc.ht.service.SpecialService;
import com.yc.ht.util.InternetRes;
import com.yc.ht.util.ServletUtil;
/**
 * 
 * @author Lcl
 *
 */
@Controller("specialHandler")
@RequestMapping("special")
public class SpecialHandler {

	@Autowired
	public SpecialService specialService;

	@Autowired
	public LanguageService languageService;

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
		LogManager.getLogger().debug("专辑页面分页显示热门专辑。。。pagesize:"+rows+",currpage:"+page);
		return specialService.hottestSpecial(rows, page);
	}


	@RequestMapping(value="language", method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Special> getSpecialByStyle(String rows,String page,int lgid){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pageSize", rows);
		map.put("currPage", page);
		map.put("lgid", lgid);
		LogManager.getLogger().debug("专辑页面根据类型分页显示专辑。。。rows:"+rows+",page:"+page+",style:"+lgid);
		return specialService.getSpecialByStyle(map);
	}


	@RequestMapping(value="style", method=RequestMethod.GET)
	@ResponseBody
	public List<Languages> specialStyle(){
		LogManager.getLogger().debug("专辑页面显示专辑类型。。");
		return specialService.specialStyle();
	}


	//后台
	@RequestMapping(value="back", method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Special> specialBack(String rows,String page){
		LogManager.getLogger().debug("后台显示专辑信息");
		return specialService.specialBack(rows,page);
	}

	@RequestMapping(value="delete", method=RequestMethod.POST)
	@ResponseBody
	public boolean specialDelete(String spid){
		LogManager.getLogger().debug("后台删除专辑");
		return specialService.specialDelete(spid);
	}


	@RequestMapping(value="modify",method=RequestMethod.POST)
	public String specialModify(@RequestParam("picData") MultipartFile picData,Special special,String lgname){
		LogManager.getLogger().debug("后台修改专辑");
		List<String> languages=specialService.specialStyleName();
		if(!languages.contains(lgname)){
			specialService.addLanguage(lgname);
		}
		int lgid=specialService.findLgid(lgname);
		special.setLgid(lgid);
		String picPath = null;
		if(picData != null && !picData.isEmpty()){//判断是否文件上传
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				picPath = ServletUtil.VIRTUAL_UPLOAD_DIR + picData.getOriginalFilename();
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		special.setSppicPath(picPath);
		if(specialService.specialModify(special)){
			return "redirect:/back/specialInfo.jsp";
		}else{
			return "forward:/back/specialModify.jsp";
		}
	}

	@RequestMapping(value="search/{spname}", method=RequestMethod.GET)
	@ResponseBody
	public List<Special> specialSearch(@PathVariable("spname") String spname){
		LogManager.getLogger().debug("后台搜索专辑");
		try {
			spname = new String(spname.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return specialService.specialSearch(spname);
	}


	@RequestMapping(value="add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> addSpecial(String sgid,String title,String language,String pic_s500,String info,String publishtime){
		Map<String, String> map = new HashMap<String,String>();
		if(pic_s500.isEmpty()){
			pic_s500 = null;
		}
		if(info.isEmpty()){
			info = null;
		}
		Special spc = specialService.SpecialFindByName(title);
		if(spc != null && !"".equals(spc)){
			map.put("spid", String.valueOf(spc.getSpid()));
		}else{
			if(pic_s500 != null){
				//文件下载
				String[] strs = pic_s500.split("@")[0].split("/");
				File file = new File(ServletUtil.UPLOAD_DIR+File.separator+"images");
				if(!file.exists()){
					file.mkdirs();
				}
				String solyricName = "images"+File.separator+strs[(strs.length-1)];
				if(pic_s500 != null && !"".equals(pic_s500)){//判断是否文件上传
					InternetRes.getInternetRes(pic_s500,solyricName);
					pic_s500 = ServletUtil.VIRTUAL_UPLOAD_DIR + solyricName;
				}
			}

			if(info != null){
				if(info.length()>300){
					info = info.trim().substring(0, 300);
				}
			}
			Languages languages = languageService.findLanguageByName(language);
			if(languages ==null || "".equals(languages)){
				languageService.addLanguage(language);
				languages = languageService.findLanguageByName(language);
			}
			Special special = new Special(Integer.valueOf(sgid), title, languages, pic_s500, publishtime, info);
			boolean result =specialService.specialAdd(special);
			if(result){
				map.put("spid", String.valueOf(specialService.SpecialFindByName(title).getSpid()));
			}
		}
		return map;
	}
}
