package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.CommentsDAO;
import com.mystudy.vo.BBSVO;
import com.mystudy.vo.CommentsVO;

public class CommitCommentsCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cidx = request.getParameter("cidx");
		String nickname = request.getParameter("nickname");
		String comments = request.getParameter("comments");
		System.out.println("cidx : " + cidx);
		
		CommentsVO cvo = new CommentsVO();
		cvo.setCidx(cidx);
		cvo.setNickname(nickname);
		cvo.setComments(comments);
		
		cvo = CommentsDAO.update(cvo);
		
		request.setAttribute("cvo", cvo);
		
		
		return "controller?type=view_comments_pr&cidx="+cidx;
		
		
	}

}
