package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.BBSDAO;
import com.mystudy.vo.BBSVO;

public class UpdateCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int category = Integer.parseInt(request.getParameter("category"));
		int idx = Integer.parseInt(request.getParameter("idx"));
		String subject = request.getParameter("subject");
		String bcontent = request.getParameter("bcontent");
		String nickname = request.getParameter("nickname");
		String optage = request.getParameter("optage");
		String optday = request.getParameter("optday");
		String optgen = request.getParameter("optgen");
		
		
		BBSVO bbsvo = new BBSVO();
		bbsvo.setIdx(idx);
		bbsvo.setCategory(category);
		bbsvo.setNickname(nickname);
		bbsvo.setSubject(subject);
		bbsvo.setbContent(bcontent);
		bbsvo.setOptAge(optage);
		bbsvo.setOptDay(optday);
		bbsvo.setOptGen(optgen);
		
		bbsvo = BBSDAO.update(bbsvo);
		
		System.out.println("upbvo : " + bbsvo);
		
        request.setAttribute("bbsvo", bbsvo);
		
	
		
		return "view.jsp";
		
	}

}
