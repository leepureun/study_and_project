package com.mystudy.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.MemberDAO;
import com.mystudy.vo.MemberVO;

public class JoinCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Join 요청 작업처리----");

		
		//1. 파라미터 값 확인(추출)
		String id = request.getParameter("id");
		String pwd =request.getParameter("pwd");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String area = request.getParameter("area");
		String addr = request.getParameter("addr");
		String birth = request.getParameter("birth");
		System.out.println(id+" , "+pwd+" , "+email+" , "+nickname+" , "+gender+" , "+phone
				+" , "+area+" , "+addr+" , "+birth);

		MemberVO member = new MemberVO(nickname,id,pwd,gender,birth,email,phone,area,addr);
		int result = MemberDAO.join(member);
		if(result == 0) { 
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('회원가입이 실패했습니다.'); location.href='join.jsp';</script>");
			 
			out.flush();
		}
		request.setAttribute("id", id);
		return "hobby.jsp";
	}

}
