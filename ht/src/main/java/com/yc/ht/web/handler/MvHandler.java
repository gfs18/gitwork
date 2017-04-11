package com.yc.ht.web.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.service.MvService;

@RequestMapping("mv")
@Controller("mvHandler")
public class MvHandler {
	
	@Autowired
	private MvService mvservice;
	
	@RequestMapping(value="pagination",method=RequestMethod.GET)
	@ResponseBody
	private PaginationBean<Mv> paginationMvInfo(String pageS,String currP){
		return mvservice.listMv(pageS, currP);
	}
	
	@RequestMapping(value="remove",method=RequestMethod.POST)
	@ResponseBody
	public boolean removeMv(String id){
		return mvservice.removeMv(id);
	}
	
}
