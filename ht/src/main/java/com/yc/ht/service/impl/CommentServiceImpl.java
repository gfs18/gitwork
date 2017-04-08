package com.yc.ht.service.impl;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.ht.entity.Comments;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.entity.Song;
import com.yc.ht.mapper.CommentMapper;
import com.yc.ht.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public boolean updateComment(Comments comments) {
		return commentMapper.insertComment(comments)>0;
	}

	/**
	 * 评论分页
	 */
	@Override
	public PaginationBean<Comments> listComment(String pageS, String currP) {
		int pageSize = 3;//每页条数
		int currPage = 1;//当前页数
		PaginationBean<Comments> pb = new PaginationBean<Comments>();
		if(pageS != null){
			pageSize = Integer.parseInt(pageS);
		}
		if(currP != null){
			currPage =  Integer.parseInt(currP);
			if(currPage <=0){
				currPage = 1;
			}
		}
		pb.setCurrPage(currPage);
		pb.setPageSize(pageSize);

		pb=commentMapper.findComment(pb);
		Integer totalPage = pb.getTotalPage();
		if(currPage >= totalPage ){
			currPage = totalPage;
		}
		pb.setCurrPage(currPage);

		LogManager.getLogger().debug("总页面"+totalPage+"页 ; 总记录数"+pb.getTotal());
		return pb;
	}
	
	

}
