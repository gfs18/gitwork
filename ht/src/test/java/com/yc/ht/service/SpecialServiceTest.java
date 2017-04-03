package com.yc.ht.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Special;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class SpecialServiceTest {

	@Autowired
	private SpecialService specialService;
	@Test
	public void testListSpeical() {
		/*Special special=new Special();
		special.setSpid(1001);
		special.setSgid(1002);
		special.setSpname("哈哈哈");
		special.setSppicPath(sppicPath);*/
		List<Special> special=specialService.listSpeical();
		System.out.println(special);
		assertNotNull(special);
		
				
	}

}
