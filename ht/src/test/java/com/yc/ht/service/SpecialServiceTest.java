package com.yc.ht.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Singer;
import com.yc.ht.entity.Song;
import com.yc.ht.entity.Special;

/**
 * 
 * @author Lcl
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class SpecialServiceTest {

	@Autowired
	private SpecialService specialService;
	@Test
	public void testListSpeical() {
		List<Special> special=specialService.listSpeical();
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testSpDetail() {
		Special special=specialService.specialDetail(10013);
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testSpecialSong() {
		List<Song> song=specialService.findSongBySpecial(10013);
		System.out.println(song);
		assertNotNull(song);
	}

	@Test
	public void testNewestSpecial() {
		PaginationBean<Special> special=specialService.newestSpecial("8", "1");
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testHottestSpecial() {
		PaginationBean<Special> special=specialService.hottestSpecial("8", "1");
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testSpecialStyle() {
		List<Languages> style=specialService.specialStyle();
		System.out.println(style);
		assertNotNull(style);
	}

	@Test
	public void testGetSpecialByStyle() {
		PaginationBean<Special> special=specialService.getSpecialByStyle("8", "1", 10001);
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testSpecialDelete() {
		boolean result=specialService.specialDelete("10009");
		System.out.println(result);
		assertEquals(true,result);
	}

	@Test
	public void testSpecialBack() {
		PaginationBean<Special> special=specialService.specialBack("5", "1");
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testSpecialSearch() {
		List<Special> special=specialService.specialSearch("放心");
		System.out.println(special);
		assertNotNull(special);
	}

	@Test
	public void testSpecialModify() {
		Special special=new Special();
		Singer singer=new Singer();
		singer.setSgname("韩红");
		special.setSpid(10010);
		special.setSinger(singer);
		special.setSpclick(6.3);
		special.setSppubTime("2017-4-10");
		boolean result=specialService.specialModify(special);
		System.out.println(result);
		assertEquals(true,result);
	}
}
