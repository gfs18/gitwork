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
	
	
	@Test
	public void testSpecialAdd() {
		Languages languages = new Languages(1002, "国语");
		Special special = new Special(10011, "魔杰座", languages, "/upload/images\274049161.jpg", "2008-10-15", "周杰伦2008年最新魔幻杰作“魔杰座”魔术师与小丑的顶尖对决 周杰伦粉墨登场秀时尚版“烟熏小丑妆”9/24预购起跑 12款“魔杰桌历”迎2009 “魔杰方块”等歌迷挑战近来不断深入钻研魔术的周杰伦,已经预言了自己的新专辑将与魔术有关,即将在10月9日推出个人第九张专辑“魔杰座”！本是摩羯座的周杰伦,以音符和创意,变出星空中的新星座“魔杰座”,这个令星座专家摸不透的神秘星座,形状有时是扑克牌上的骑士,有时又变成鬼牌上的小丑,变换不同的形体和曲风,在新专辑的预购海报设计上就以扑克牌的设计概念,呈现出魔术师与小丑的顶尖对决！这款以黑桃J扑克牌设计的海报一曝光就令人觉得相当有趣,象征周杰伦的音乐蕴");
		boolean result=specialService.specialAdd(special);
		System.out.println(result);
	}
}
