package com.yc.ht.web.handler;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.ht.entity.Comments;
import com.yc.ht.entity.PaginationBean;
import com.yc.ht.service.CommentService;
import com.yc.ht.util.ServletUtil;

@Controller("friendHandler")
@RequestMapping("friend")
public class FriendHandler {

	@Autowired
	private CommentService commentService;

	/*评论的显示*/
	@RequestMapping(value="PaginationCommentShow",method=RequestMethod.GET)
	@ResponseBody
	public PaginationBean<Comments>  PaginationCommentShowList(String pageS,String currP){
		LogManager.getLogger().debug("friend的handler里面的显示进来了。。。"+commentService.listComment(pageS, currP));
		return commentService.listComment(pageS, currP);

	}
		

	/*评论的插入*/
	@RequestMapping(value="commentInsert",method=RequestMethod.POST)
	@ResponseBody
	public void  commentPublish(@RequestParam("picData") MultipartFile picData ,String content,Comments comment,HttpServletResponse response) throws IOException{
		LogManager.getLogger().debug("friend的handler里面的插入进来了。。。");
		
		if(content!=null){
			try {
				comment.setContent(content);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String picPath=null;
		if(picData!=null && !picData.isEmpty()){//判断是否有文件上传
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				picPath=ServletUtil.VIRTUAL_UPLOAD_DIR+picData.getOriginalFilename();
				comment.setCommentPicPath(picPath);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		LogManager.getLogger().debug("上传图片===>"+comment);
		commentService.updateComment(comment);
		response.sendRedirect("../page/friend.jsp");
		return;
	}
}