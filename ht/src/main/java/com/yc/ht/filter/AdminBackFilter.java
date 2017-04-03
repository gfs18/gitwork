package com.yc.ht.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;

import com.yc.ht.util.ServletUtil;

/**
 *  过滤验证码
 */
@WebFilter("back/*")
public class AdminBackFilter extends AbstractFilter{
   
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		LogManager.getLogger().debug("初始化过滤登陆......");
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest)request).getSession();
		if(session.getAttribute(ServletUtil.LOGIN_ADMIN) != null){
			chain.doFilter(request, response);
		}else{
			session.setAttribute("errorMsg", "请登录！！！");
			((HttpServletResponse) response).sendRedirect("/ht/back/login.jsp");
		}
		
		
	}
}
