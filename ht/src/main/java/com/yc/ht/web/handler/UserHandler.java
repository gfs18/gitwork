package com.yc.ht.web.handler;



import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.ht.entity.Singer;

import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;
import com.yc.ht.entity.Users;
import com.yc.ht.service.UserService;
import com.yc.ht.util.EmailUtils;
import com.yc.ht.util.ServletUtil;

@Controller("userHandler")
@RequestMapping("user")
public class UserHandler {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 用户登录
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value="login",method=RequestMethod.GET)
	@ResponseBody
	public Users login(Users user,HttpSession session){
		user = userService.login(user);
		LogManager.getLogger().debug("user:"+user);
		if(user != null){
			session.setAttribute(ServletUtil.LOGIN_USER, user.getUname());
			session.setAttribute(ServletUtil.LOGIN_USER_ID, user.getUserid());
			session.setAttribute(ServletUtil.LOGIN_USER_IMG, user.getUpicPath());
			LogManager.getLogger().debug(session.getAttribute(ServletUtil.LOGIN_USER_IMG));
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
	@RequestMapping(value="out",method=RequestMethod.POST)
	@ResponseBody
	public boolean out(HttpSession session){
		LogManager.getLogger().debug("注销中...");
		session.removeAttribute(ServletUtil.LOGIN_USER);
		return true;
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
			LogManager.getLogger().debug("输入的验证码是对的");
			session.setMaxInactiveInterval(1*60);
			return userService.zc(user);
		}else{
			LogManager.getLogger().debug("注册失败！");
		}
		return false;
	}
	

	@RequestMapping(value="{lgid}",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> Son( @PathVariable("lgid") String lgid){
		LogManager.getLogger().debug("lgid.............."+lgid.toString());
		return userService.Sonng(lgid);
	}
	
	@RequestMapping(value="Sin/{lgid}",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> Sing(@PathVariable("lgid") String  lgid){
		return userService.Singg(lgid);
		
	}
	/**
	 * 用户的分页显示
	 * @param pageS
	 * @param currP
	 * @return
	 */
	@RequestMapping(value="pagination",method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Users> UsersPagiagetionList(String pageS,String currP){
		return userService.listUsers(pageS, currP);
	}
	
	/**
	 * 用户的删除
	 */
	@RequestMapping(value="remove",method=RequestMethod.POST)
	@ResponseBody
	public boolean removeUser(String userid){
		return userService.removeUser(userid);
	}
	
	/**
	 * 后台通过用户的名称模糊查询
	 */
	@RequestMapping(value="referUser/{uname}",method=RequestMethod.POST)
	@ResponseBody
	public List<Users> ReferUserList(@PathVariable("uname") String uname){
		if(uname!=null){
			try {
				uname=new String(uname.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		List<Users> users=userService.listReferUser(uname);
		System.out.println("users:"+users);
		 return users;
	}
	
	/**
	 * 前台通过用户的id显示
	 */
	@RequestMapping(value="showUser/{userid}",method=RequestMethod.POST)
	@ResponseBody
	public Users ShowUser(@PathVariable("userid") String userid){
		if(userid!=null){
			try {
				userid=new String(userid.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		Users users=userService.showUser(userid);
		System.out.println("users:"+users);
		return users;
	}
	
	/**
	 * 用户的修改
	 * @throws IOException 
	 */
	@RequestMapping(value="modifyFore",method=RequestMethod.POST)
	@ResponseBody
	public String modifyUserInfo(@RequestParam("picData") MultipartFile picData,Users user,HttpServletResponse response) throws IOException{
		LogManager.getLogger().debug("用户修改个人信息");
		String picPath = null;
		if(picData != null && !picData.isEmpty()){//判断是否文件上传
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				picPath = ServletUtil.VIRTUAL_UPLOAD_DIR + picData.getOriginalFilename();
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		user.setUpicPath(picPath);
		if(userService.modifyUserInfo(user)){
			response.sendRedirect("../page/user.jsp?userid="+user.getUserid());
		}else{
			response.sendRedirect("../page/user.jsp");
		}
		return null;
	}
	
	@RequestMapping(value="modify",method=RequestMethod.POST)
	@ResponseBody
	public boolean modifyUser(@PathVariable("userid") int userid,Users user){
		System.out.println("进来了。。。。。。。。。。"+user);
		return userService.modifyUser(userid);
	}
	
}
