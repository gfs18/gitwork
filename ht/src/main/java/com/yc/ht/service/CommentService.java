package com.yc.ht.service;

import java.util.List;

import com.yc.ht.entity.Comments;

public interface CommentService {
	List<Comments> listComment();

	boolean updateComment(Comments comments);


}
