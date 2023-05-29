package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.dao.HobbyDAO;
import com.mystudy.vo.HobbyVO;
import com.mystudy.vo.MemberVO;

public class OutMemberPRCommand implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		HttpSession session = req.getSession();
		
		MemberVO mvo = (MemberVO)(session.getAttribute("mvo"));
		
		mvo.setBirth(mvo.getBirth().substring(0, 10));
		
		String nickname = mvo.getNickname();
		
		String id = mvo.getId();
		
		
		List<HobbyVO> hList = HobbyDAO.selectHobby(id);
		
		req.setAttribute("hList", hList);
		
		System.out.println(hList);
		
		
		return "Mypage.jsp";
	}

}
