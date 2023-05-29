package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.BBSDAO;
import com.mystudy.vo.BBSVO;

public class WriteCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int category = Integer.parseInt(request.getParameter("category"));
		String subject = request.getParameter("subject");
		String bcontent = request.getParameter("bContent");
		String nickname = request.getParameter("nickname");
		String optage = request.getParameter("optAge");
		String optday = request.getParameter("optDay");
		String optgen = request.getParameter("optGen");
		
		BBSVO bbsvo = new BBSVO();
		bbsvo.setCategory(category);
		bbsvo.setNickname(nickname);
		bbsvo.setSubject(subject);
		bbsvo.setbContent(bcontent);
		bbsvo.setOptAge(optage);
		bbsvo.setOptDay(optday);
		bbsvo.setOptGen(optgen);
		
		System.out.println("nickname : " + nickname);
	    int result = BBSDAO.insert(bbsvo);
	    
	    BBSVO idx = BBSDAO.selectBidx(result);
	    
	    System.out.println("idx : " + idx);
	    
	    bbsvo.setIdx(idx.getIdx());
	    
	    System.out.println("bbsvo : " + bbsvo);
		
		request.setAttribute("bbsvo", bbsvo);
		
	
		
		return "view.jsp";
		

}
}
