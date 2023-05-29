package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.dao.HobbyDAO;
import com.mystudy.vo.HobbyVO;
import com.mystudy.vo.MemberVO;

public class ChooseCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("choose 요청 작업처리----");

		String[] hobby = request.getParameterValues("hobby");
		
		

		String id = request.getParameter("id");

		int result = HobbyDAO.deleteHobby(id);

		System.out.println("delete 결과 : " + result);
		for (String cat : hobby) {
			int category = Integer.parseInt(cat);
			HobbyVO newhobby = new HobbyVO();
			newhobby.setId(id);
			newhobby.setCategory(category);

			result = HobbyDAO.JoinHobby(newhobby);
			System.out.println("수정결과 : " + result);
		}

		return "controller?type=update_pr";
	}

}
