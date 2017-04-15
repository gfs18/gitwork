package com.yc.ht.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Languages;
import com.yc.ht.entity.PaginationBean;
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
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pageSize", 8);
		map.put("currPage", 1);
		map.put("lgid", 10001);
		PaginationBean<Special> special=specialService.getSpecialByStyle(map);
		System.out.println("******"+specialService.getSpecialByStyle(map));
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
		/*Singer singer=new Singer();
		singer.setSgid(10001);*/
		special.setSpid(10063);
		special.setSgid(10001);
		/*Languages language=new Languages();
		language.setLgid(10001);
		special.setLanguage(language);*/
		special.setSpclick(6.0);
		special.setSppubTime("2017-4-10");
		boolean result=specialService.specialModify(special);
		System.out.println(result);
		assertEquals(true,result);
	}
	
	@Test
	public void testFindLgid() {
		int lgid=specialService.findLgid("回火");
		System.out.println(lgid);
		assertNotNull(lgid);
	}
}
