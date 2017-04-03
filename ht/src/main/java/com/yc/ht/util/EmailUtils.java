package com.yc.ht.util;



import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;


public class EmailUtils {
	public static String str;
	//获取验证码
	public void setMail(String mail,HttpSession session1) throws MessagingException{
		RandomCode randomCode=new RandomCode();
		String str=randomCode.showRandom();
		session1.setAttribute(ServletUtil.CODE,str);
		Properties props = new Properties(); //Properties 属性文件 
		// 开启debug调试  
		props.setProperty("mail.debug", "true");  
		// 设置邮件服务器主机名 
		props.setProperty("mail.host", "smtp.163.com");  
		// 发送服务器需要身份验证  
		props.setProperty("mail.smtp.auth", "true");  
		// 发送邮件协议名称 
		props.setProperty("mail.transport.protocol", "smtp"); 
		//props.setProperty("mail.smtps.port", "" + 465); 
		// 设置环境信息 
		Session session = Session.getInstance(props);  
		// 创建邮件对象  
		Message msg = new MimeMessage(session);  
		msg.setSubject("邮件验证码"); 
		// 设置邮件内容  
		msg.setText(str);  
		// 设置发件人  
		msg.setFrom(new InternetAddress("z1413689722@163.com"));  
		Transport transport = session.getTransport();  
		// 连接邮件服务器  
		transport.connect("z1413689722@163.com","fk19961029");
		// 发送邮件  
		transport.sendMessage(msg, new Address[] {new InternetAddress(mail)});
		// 关闭连接  
		transport.close(); 
	}

}
