package com.yc.ht.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.logging.log4j.LogManager;

public class InternetRes {
	/**
	 * 网上获取文件
	 * 
	 * @param savepath 保存路径
	 * @param resurl  资源路径
	 * @param fileName  自定义资源名
	 */
	public static void getInternetRes(String resurl, String fileName) {
		
	        URL url = null;
	        HttpURLConnection con = null;
	        InputStream in = null;
	        FileOutputStream out = null;
	        try {
	            url = new URL(resurl);
	            //建立http连接，得到连接对象
	            con = (HttpURLConnection) url.openConnection();
	            in = con.getInputStream();
	            byte[] data = getByteData(in);//转化为byte数组

	            File res = new File(ServletUtil.UPLOAD_DIR,fileName);
	            out = new FileOutputStream(res);
	            out.write(data);
	            LogManager.getLogger().debug("url:"+resurl+",文件"+fileName+"下载完成.....");
	        } catch (MalformedURLException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (null != out)
	                    out.close();
	                if (null != in)
	                    in.close();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }

	        }
	    }
	
	
	/**
     * 从输入流中获取字节数组
     * 
     * @param in
     * @return
     * @throws IOException
     */
    private static byte[] getByteData(InputStream in) throws IOException {
        byte[] b = new byte[1024];
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        int len = 0;
        while ((len = in.read(b)) != -1) {
            bos.write(b, 0, len);
        }
        if(null!=bos){
            bos.close();
        }
        return bos.toByteArray();
    }
}
