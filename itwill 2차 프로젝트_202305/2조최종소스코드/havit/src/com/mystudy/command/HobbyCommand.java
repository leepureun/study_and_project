package com.mystudy.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.HobbyDAO;
import com.mystudy.dao.MemberDAO;
import com.mystudy.vo.HobbyVO;
import com.mystudy.vo.MemberVO;

public class HobbyCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hobby 요청 작업처리----");
		String[] hobby = request.getParameterValues("hobby");
		String id = request.getParameter("id");
		System.out.println(hobby.toString()+" // "+id );
		for(String cat : hobby) {
		int category = Integer.parseInt(cat);
		HobbyVO newhobby = new HobbyVO();
		newhobby.setId(id);
		newhobby.setCategory(category);
		
		int result = HobbyDAO.JoinHobby(newhobby);
		System.out.println(result);
		}
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		
		out.println("<script>alert('회원가입이 성공했습니다.'); location.href='login.jsp';</script>");
		 
		out.flush();
		//response.sendRedirect("login.jsp");
		return "";
	}

}
