package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.dao.MemberDAO;
import com.mystudy.vo.MemberVO;

public class DeleteMemberOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		HttpSession session = req.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");

		if (id.equals(mvo.getId()) && pw.equals(mvo.getPw())) {

			int result = MemberDAO.deleteMember_pr(mvo);
		} else {
			return "failed.jsp";
		}

		return "login.jsp";
	}

}
