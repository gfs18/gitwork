package com.yc.ht.web.handler;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Admin;
import com.yc.ht.service.AdminService;
import com.yc.ht.util.ServletUtil;

@RequestMapping("admin")
@Controller("adminLoginHandler")
public class AdminLoginHandler {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("login")
	public String login(Admin admin,HttpSession session){
		admin = adminService.login(admin);
		if(admin !=null){
			session.setAttribute(ServletUtil.LOGIN_ADMIN, admin.getAname());
			return "redirect:/back/manage.jsp";
		}else{
			session.setAttribute(ServletUtil.ERROR_MESSAGE, "用户名或密码错误!!!");
			return "forward:/back/login.jsp";
		}
	}
	
	/**
	 * 注销
	 * @param session
	 */
	@RequestMapping(value="out",method=RequestMethod.POST)
	@ResponseBody
	public boolean out(HttpSession session){
		LogManager.getLogger().debug("注销中...");
		session.removeAttribute(ServletUtil.LOGIN_ADMIN);
		return true;
	}
}
