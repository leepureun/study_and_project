package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.CommentsDAO;

public class CommentDeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cidx = request.getParameter("cidx");
		
		int result = CommentsDAO.delete(cidx);
		
		return "controller?type=view_comments_pr&cidx="+cidx;
		
		
		
		
		
	}

}
