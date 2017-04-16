package com.yc.ht.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Song;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class SongServiceTest {

	@Autowired
	private SongService songService;
	@Test
	public void testListSong() {
		List<Song> song=songService.listSong();
		System.out.println(song);
		assertNotNull(song);
	}
	
	@Test
	public void testfindSong() {
		Song song=songService.findSongName(new Song(1003,"童话镇",1003));
		System.out.println(song);
	}
	
	@Test
	public void testAddSong() {
		Song song = new Song(10013, 10003, "稻香", "/upload/images\274049161.jpg", "/upload/solyric\13762398.lrc", "/upload/music/");
		boolean result=songService.addSong(song);
		System.out.println(result);
	}

}
