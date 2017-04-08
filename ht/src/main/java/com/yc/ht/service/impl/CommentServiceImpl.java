package com.yc.ht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Comments;
import com.yc.ht.mapper.CommentMapper;
import com.yc.ht.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public List<Comments> listComment() {
		return commentMapper.findComment();
	}

	@Override
	public boolean updateComment(Comments comments) {
		return commentMapper.insertComment(comments)>0;
	}

}
