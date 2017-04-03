package com.yc.ht.web.handler;


import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.ht.entity.Users;
import com.yc.ht.service.UserService;
import com.yc.ht.util.EmailUtils;
import com.yc.ht.util.ServletUtil;

@Controller("userHandler")
@RequestMapping("user")
public class UserHandler {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	@ResponseBody
	public Users login(Users user,HttpSession session){
		user = userService.login(user);
		LogManager.getLogger().debug("user:"+user);
		if(user != null){
			session.setAttribute(ServletUtil.LOGIN_USER, user.getUname());
		}else{
			session.setAttribute("errorMsg", "用户名或密码错误!");
		}
		LogManager.getLogger().debug("session:"+session.getAttribute(ServletUtil.LOGIN_USER));
		return user;
	}
	
	/**
	 * 注销
	 * @param session
	 */
	@RequestMapping(value="out",method=RequestMethod.GET)
	public void out(HttpSession session){
		LogManager.getLogger().debug("注销中...");
		session.removeAttribute(ServletUtil.LOGIN_USER);
	}
	
	/**
	 * 邮件发送
	 * @param user
	 * @param session1
	 * @return
	 */
	@RequestMapping(value="f",method=RequestMethod.POST)
	@ResponseBody
	public Users fa(Users user,HttpSession session1){
		try {
			EmailUtils emailUtils=new EmailUtils();
			emailUtils.setMail(user.getUemail(), session1);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	/**
	 * 注册
	 * @param code
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value="Register",method=RequestMethod.POST)
	@ResponseBody
	public boolean Register(String code,Users user,HttpSession session){
		String a=(String) session.getAttribute(ServletUtil.CODE);
		if(code.equals(a)){
			System.out.println("输入的验证码是对的");
			session.setMaxInactiveInterval(1*60);
			return userService.zc(user);
		}else{
			LogManager.getLogger().debug("注册失败！");
		}
		return false;
	}
	
}
