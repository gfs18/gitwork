package com.yc.ht.web.handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.service.SongService;
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
		System.out.println(song);
		if(songService.modifySong(song)){
			return "redirect:/back/manage.jsp";
		}else{
			return "forward:/back/manageModify.jsp";
		}
	}
}
