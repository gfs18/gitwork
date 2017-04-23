package com.yc.ht.aspect;

import org.apache.logging.log4j.LogManager;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import com.yc.ht.entity.Admin;
import com.yc.ht.entity.Users;
import com.yc.ht.util.Encrypt;


@Component("encryptAspect")
@Aspect
public class EncryptAspect {
	
/*	@Before("execution(* com.yc.ht.service.impl.UserServiceImpl.*(com.yc.ht.entity.Users))")
	public void beforeMathod(JoinPoint joinPoint){
		Users user= (Users) joinPoint.getArgs()[0];
		LogManager.getLogger().debug("对密码加密中....");
		user.setUpwd(Encrypt.md5AndSha(user.getUpwd()));
		LogManager.getLogger().debug("加密成功....");
	}*/
	@Before("execution(* com.yc.ht.service.impl.UserServiceImpl.login(com.yc.ht.entity.Users))")
	public void beforeMathod1(JoinPoint joinPoint){
		Users user= (Users) joinPoint.getArgs()[0];
		LogManager.getLogger().debug("对密码加密中....");
		user.setUpwd(Encrypt.md5AndSha(user.getUpwd()));
		LogManager.getLogger().debug("加密成功....");
	}
	@Before("execution(* com.yc.ht.service.impl.UserServiceImpl.zc(com.yc.ht.entity.Users))")
	public void beforeMathod2(JoinPoint joinPoint){
		Users user= (Users) joinPoint.getArgs()[0];
		LogManager.getLogger().debug("对密码加密中....");
		user.setUpwd(Encrypt.md5AndSha(user.getUpwd()));
		LogManager.getLogger().debug("加密成功....");
	}
	@Before("execution(* com.yc.ht.service.impl.AdminServiceImpl.login(..))")
	public void zc(JoinPoint joinPoint){
		Admin admin= (Admin) joinPoint.getArgs()[0];
		LogManager.getLogger().debug("对密码加密中....");
		admin.setApwd(Encrypt.md5AndSha(admin.getApwd()));
		LogManager.getLogger().debug("加密成功....");
	}
	
	
	
}
