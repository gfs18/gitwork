package com.yc.ht.service;

import com.yc.ht.entity.Comments;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;

public interface CommentService {

	boolean updateComment(Comments comments);

	PaginationBean<Comments> listComment(String pageS, String currP);

}
