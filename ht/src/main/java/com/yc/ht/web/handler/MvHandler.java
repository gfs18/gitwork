package com.yc.ht.web.handler;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.mail.imap.MessageVanishedEvent;
import com.yc.ht.entity.Mv;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Users;
import com.yc.ht.service.MvService;

@RequestMapping("mv")
@Controller("mvHandler")
public class MvHandler {
	
	@Autowired
	private MvService mvservice;
	
	/*MV的分页*/
	@RequestMapping(value="pagination",method=RequestMethod.POST)
	@ResponseBody
	private PaginationBean<Mv> paginationMvInfo(String pageS,String currP){
		return mvservice.listMv(pageS, currP);
	}
	
	/*Mv的删除*/
	@RequestMapping(value="remove",method=RequestMethod.POST)
	@ResponseBody
	public boolean removeMv(String id){
		return mvservice.removeMv(id);
	}
	
	/*MV的查询*/
	@RequestMapping(value="refer/{mvName}",method=RequestMethod.POST)
	@ResponseBody
	public List<Mv> ReferMV(@PathVariable("mvName") String mvName){
		if(mvName!=null){
			try {
				mvName=new String(mvName.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		List<Mv> mvs=mvservice.listReferMv(mvName);
		LogManager.getLogger().debug("查询MV的handler："+mvs);
		return mvs;
	}

	
	
}
