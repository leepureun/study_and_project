package com.mystudy.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.dao.BBSDAO;
import com.mystudy.dao.HobbyDAO;
import com.mystudy.dao.MemberDAO;
import com.mystudy.vo.BBSVO;
import com.mystudy.vo.HobbyVO;
import com.mystudy.vo.MemberVO;

public class MainCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. DB연결하고 데이터 가져오기
		HttpSession session = request.getSession();
		MemberVO mvo =(MemberVO)(session.getAttribute("mvo"));
		System.out.println("mvo : " + mvo.toString());
		
		
		String[] categoryList = {"공예/만들기", "운동/스포츠", "음악/악기", "외국/언어", "자유주제", 
								  "도서", "문화", "요리", "연애/결혼", "사교", 
								  "게임", "사진", "차/오토바이", "반려동물", "야구관광", "여행"};
		int [] categoryNum = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
		String id = mvo.getId();
		System.out.println(">> MainCommand id : " + id);
		MemberVO vo = MemberDAO.getOneMember(id);
		List<HobbyVO> list = HobbyDAO.getHobbyList(id);
		System.out.println("vo : " + vo);
		System.out.println("list : " + list);
		System.out.println("list.size() : " + list.size());
		Map<Integer, List<BBSVO>> map = new HashMap<Integer, List<BBSVO>>();
		for(int i = 0; i < list.size(); i++) {
			int category = (Integer) list.get(i).getCategory();
			System.out.print(category + " ");
			map.put(i, BBSDAO.getBBSList(category));
		}
		System.out.println("map : " + map);
	
		// 2. 응답페이지(list.jsp)에 전달(request 객체에 저장해서 전달)
		request.setAttribute("mvo", vo);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("cList", categoryList);
		request.setAttribute("cNum", categoryNum);
		return "main.jsp";
	}

}
