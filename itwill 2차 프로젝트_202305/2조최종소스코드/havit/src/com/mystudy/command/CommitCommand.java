package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.BBSDAO;
import com.mystudy.dao.CommentsDAO;
import com.mystudy.vo.BBSVO;
import com.mystudy.vo.CommentsVO;

public class CommitCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		System.out.println("idx: " + idx);
		BBSDAO.viewsUp(idx);//조회수증가
		BBSVO bbsVO = BBSDAO.bbsView(idx); //상세보기
		System.out.println("bbsList :" + bbsVO ); 
		request.setAttribute("bbsVO", bbsVO);
		
		int idxCnt = CommentsDAO.commentsCnt(idx);
		request.setAttribute("idxCnt",idxCnt);
		System.out.println("idxCnt : " + idxCnt);
		
        System.out.println("commentView 실행");
        
		List<CommentsVO> cList = CommentsDAO.commentsList(idx);
		
        request.setAttribute("cList", cList);
        System.out.println("clist : "+ cList);
		return "BBSView.jsp";
	}

}
