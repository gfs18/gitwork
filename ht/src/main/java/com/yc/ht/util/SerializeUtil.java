package com.yc.ht.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class SerializeUtil {
	
	/**
	 * 序列化对象
	 * @param object
	 * @return
	 * @throws IOException 
	 */
	public static byte[] serialize(Object obj){
		try {
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ObjectOutputStream oos = new ObjectOutputStream(baos);
			oos.writeObject(obj);
			return baos.toByteArray();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 反序列化
	 * @param bs
	 * @return
	 */
	public static Object unserialize(byte[] bs){
		if(bs == null){
			return null;
		}
		try {
			ByteArrayInputStream bais = new ByteArrayInputStream(bs);
			ObjectInputStream ois = new ObjectInputStream(bais);
			return ois.readObject();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
