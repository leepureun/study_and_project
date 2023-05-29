package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.dao.MemberDAO;
import com.mystudy.vo.MemberVO;

public class UpdateMemberOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		MemberVO mvo = (MemberVO) session.getAttribute("mvo");

		String nickname = req.getParameter("nickname");
		String pw = req.getParameter("pw");
		String gender = req.getParameter("gender");
		String birth = req.getParameter("birth");
		String addr = req.getParameter("addr");
		String email = req.getParameter("email");


		String phone = req.getParameter("phone");
		String area = req.getParameter("area");

		String id = req.getParameter("id");

		mvo.setNickname(nickname);
		mvo.setPw(pw);
		mvo.setGender(gender);
		mvo.setBirth(birth);
		mvo.setAddr(addr);
		mvo.setEmail(email);
		mvo.setPhone(phone);
		mvo.setArea(area);

		int result = MemberDAO.updateMember_pr(mvo);
		
		return "controller?type=out";
	}

}
