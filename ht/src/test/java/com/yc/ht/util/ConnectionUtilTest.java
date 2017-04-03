package com.yc.ht.util;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ConnectionUtilTest {

	@Test
	public void testConnection() throws SQLException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring.xml");
		DataSource ds = (DataSource) ac.getBean("dataSource");
		assertNotNull("数据库连接失败!!", ds.getConnection());
	}
	
	@Test
	public void testConnection1() throws SQLException {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring.xml");
		SqlSessionFactory sf =  (SqlSessionFactory) ac.getBean("sqlSessionFactory");
		assertNotNull("数据库连接失败!!", sf.openSession().getConnection());
	}
	

}
