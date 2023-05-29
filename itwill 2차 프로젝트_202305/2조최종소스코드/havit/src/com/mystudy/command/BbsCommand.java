package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.vo.BBSVO;

public class BbsCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	String nickname = request.getParameter("nickname");
	int category = Integer.parseInt(request.getParameter("category"));
	
	
	BBSVO bbsvo = new BBSVO();
	bbsvo.setNickname(nickname);
	bbsvo.setCategory(category);
	
	request.setAttribute("bbsvo", bbsvo);
	
	System.out.println(bbsvo.toString());
	return "write.jsp";
	
	
	}
}
