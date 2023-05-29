package com.mystudy.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.dao.MemberDAO;
import com.mystudy.vo.MemberVO;

public class LoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("login 요청 작업처리----");
		//1. 파라미터 값 확인(추출)
		String id = request.getParameter("userID");
		String pwd = request.getParameter("userPW");
		System.out.println("id: " + id + ", pwd: " + pwd);
		
		MemberVO memVO= new MemberVO();
		memVO.setId(id);
		memVO.setPw(pwd);
		MemberVO mvo = MemberDAO.login(memVO);
		if(mvo == null) {
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('비밀번호가 틀렸습니다.'); location.href='login.jsp';</script>");
			 
			out.flush();
			
		}
		System.out.println("mvo : " + mvo.toString());
		HttpSession session = request.getSession();
		
		session.setAttribute("mvo", mvo);
		
		return "controller?type=main";
	}

}
