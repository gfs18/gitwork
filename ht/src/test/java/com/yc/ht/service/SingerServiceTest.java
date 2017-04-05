package com.yc.ht.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Singer;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class SingerServiceTest {

	@Autowired
	private SingerService singerService;
	
	@Test
	public void testFindSinger() {
		List<Singer> singers=singerService.findSinger();
		System.out.println(singers);
		assertNotNull(singers);
	}

}
