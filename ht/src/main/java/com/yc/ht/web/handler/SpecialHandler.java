package com.yc.ht.web.handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Special;
import com.yc.ht.service.SpecialService;

@Controller("specialHandler")
@RequestMapping("special")
public class SpecialHandler {
	
	@Autowired
	public SpecialService specialService;
	
	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public List<Special> specialList(){
		return specialService.listSpeical();
	}
	
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public List<Special> special_music(HttpServletRequest request){
		Object obj = (Object)request.getParameter("param");
		System.out.println("专辑详情进来了   obj:"+obj.toString());
		try {
			request.getRequestDispatcher("special_music.html").forward(request, null);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
