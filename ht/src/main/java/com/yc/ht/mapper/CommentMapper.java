package com.yc.ht.mapper;

import com.yc.ht.entity.Comments;
import com.yc.ht.entity.PaginationBean;

public interface CommentMapper {

	int insertComment(Comments comment);

	PaginationBean<Comments> findComment(PaginationBean<Comments> comment);
	
}
