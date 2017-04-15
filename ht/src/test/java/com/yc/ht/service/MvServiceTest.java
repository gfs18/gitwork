package com.yc.ht.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Mv;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class MvServiceTest {
	@Autowired
	private MvService mvService;
	
	@Test
	public void testListReferMv() {
		List<Mv> mv=mvService.listReferMv("F");
		System.out.println(mv);
		return;
	}

}
