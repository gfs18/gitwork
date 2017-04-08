package com.yc.ht.mapper;

import java.util.List;

import com.yc.ht.entity.Comments;

public interface CommentMapper {

	List<Comments> findComment();

	int insertComment(Comments comment);
	
}
