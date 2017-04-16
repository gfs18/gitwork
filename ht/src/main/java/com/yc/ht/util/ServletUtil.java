package com.yc.ht.util;

import java.io.File;

public class ServletUtil {
	public static String UPLOAD_DIR;//图片上传路径
	public static String DEPLOY_NAME;//项目的发布名
	public static final String LOGIN_USER = "login_user";//登陆
	public static final String LOGIN_USER_ID="login_user_id";//登录后存储当前用户的id
	public static final String ERROR_MESSAGE = "errorMsg";//错误信息
	public static final String VIRTUAL_UPLOAD_DIR = "/upload/";
	public static final String LOGIN_ADMIN = "login_admin";//管理员登陆
	public static final String CODE="v_code"; // 邮箱验证码
	
	/**
	 * 根据文件名获取上传文件
	 * @param fileName
	 * @return
	 */
	public static File getUploadFile(String fileName){
		File file = new File(UPLOAD_DIR,fileName);//上传文件
		
		if(!file.getParentFile().exists()){
			file.getParentFile().mkdirs();
		}
		return file;
	}
	
}
