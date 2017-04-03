package com.yc.ht.web.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("songHandler")
public class SongHandler {
	
	/*@Autowired
	private SongService songService;*/
	
	@RequestMapping(value="song",method=RequestMethod.GET)
	@ResponseBody
	public String songList(){
		return null;
	}
}
