package com.yc.ht.web.handler;


import java.util.List;

import org.apache.catalina.User;
import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("friendHandler")
@RequestMapping("friend")
public class FriendHandler {
	
	/*@Autowired
	private UserService userService;*/
	
	@RequestMapping(value="user",method=RequestMethod.GET)
	@ResponseBody
	public List<User>  friendUser(){
		LogManager.getLogger().debug("friend的handler进来了。。。");
		return null;
		
	}
}
