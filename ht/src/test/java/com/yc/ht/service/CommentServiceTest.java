package com.yc.ht.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ht.entity.Comments;
import com.yc.ht.entity.PaginationBean;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CommentServiceTest {

	@Autowired
	private CommentService commentService;

	@Test
	public void testListComment() {
		PaginationBean<Comments> com=commentService.listComment(null, null);
		System.out.println(com);
		assertNotNull(com);
	}

	@Test
	public void testUpdateComment() {
		Comments com=new Comments();
		com.setCommentPicPath("images/bf.png");
		com.setContent("哈哈哈哈");
		boolean a=commentService.updateComment(com);
		System.out.println("成功？？"+a);
	}
}
