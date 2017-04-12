package com.yc.ht.web.handler;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.service.SongService;
import com.yc.ht.util.InternetRes;
import com.yc.ht.util.ServletUtil;

@Controller("songHandler")
@RequestMapping("song")
public class SongHandler {

	@Autowired
	private SongService songService;

	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> songList(String soid){
		if(soid!=null){
			System.out.println(songService.findSongById(soid));
			return songService.findSongById(soid);
		}else{
			return songService.listSong();
		}
	}

	@RequestMapping(value="pagination",method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Song> songPagiagetionList(String pageS,String currP){
		return songService.listSong(pageS, currP);
	}

	@RequestMapping(value="{sgEname}",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> HOT(@PathVariable("sgEname") String sgEname){
		return songService.Hot(sgEname);
	}

	@RequestMapping(value="remove",method=RequestMethod.POST)
	@ResponseBody
	public boolean removeSong(String id){
		return songService.removeSong(id);
	}

	@RequestMapping(value="modify",method=RequestMethod.POST)
	public String modifySong(Song song,@RequestParam("picData") MultipartFile picData){
		String picPath = null;
		if(picData != null && !picData.isEmpty()){//判断是否文件上传
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				picPath = ServletUtil.VIRTUAL_UPLOAD_DIR + picData.getOriginalFilename();
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		song.setSopicPath(picPath);
		if(songService.modifySong(song)){
			return "redirect:/back/manage.jsp";
		}else{
			return "forward:/back/manageModify.jsp";
		}

	}

	@RequestMapping(value="refer/{soname}",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> referSong(@PathVariable("soname") String soname){
		try {
			soname = new String(soname.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return songService.findSongByName(soname);
	}

	@RequestMapping(value="add",method=RequestMethod.POST)
	@ResponseBody
	public boolean songAdd(String soname,String sgname,String solyricPath){
		System.out.println("soname:"+soname+",sgname:"+sgname+",solyricPath:"+solyricPath);
		//歌词网上下载
		String[] strs = solyricPath.split("/");
		File file = new File(ServletUtil.UPLOAD_DIR+File.separator+"solyric");
		if(!file.exists()){
			file.mkdirs();
		}
		String solyricName = "solyric"+File.separator+strs[(strs.length-1)];
		if(solyricPath != null && !"".equals(solyricPath)){//判断是否文件上传
			InternetRes.getInternetRes(solyricPath,solyricName);
			solyricPath = ServletUtil.VIRTUAL_UPLOAD_DIR + solyricName;
		}
		
		
		
		return true;
	}
}
