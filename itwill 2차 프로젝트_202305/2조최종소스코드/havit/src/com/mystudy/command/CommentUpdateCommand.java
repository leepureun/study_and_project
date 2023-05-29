package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.CommentsDAO;
import com.mystudy.vo.CommentsVO;
import com.mystudy.vo.CpageVO;

public class CommentUpdateCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cidx = request.getParameter("cidx");
		System.out.println("cidx : " + cidx);
		String nickname = request.getParameter("nickname");
		String comments = request.getParameter("comments");
		
		CommentsVO cvo = new CommentsVO();
		cvo.setCidx(cidx);
		cvo.setNickname(nickname);
		cvo.setComments(comments);
		
		request.setAttribute("cvo", cvo);
		
		
		return "updateComment.jsp";
		
		
	}

}
