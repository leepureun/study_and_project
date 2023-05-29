package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.CommentsDAO;
import com.mystudy.vo.CommentsVO;

public class CommentWriteCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("commentWrite 실행");
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		String nickname = request.getParameter("nickname");
		String comments = request.getParameter("comments");
		
		System.out.println("commentWrite_idx : " + idx);
		System.out.println("nickname :"  + nickname);
		System.out.println("comments :"  + comments);
		CommentsVO cvo = new CommentsVO();
		cvo.setIdx(idx);
		cvo.setNickname(nickname);
		cvo.setComments(comments);
		
		System.out.println("cvo : " + cvo);
		int result = CommentsDAO.insertComments(cvo);
		
        System.out.println("등록되었습니다");	
        
        
		
		return "controller?type=BBSView&idx="+idx;
		
		
	}

}
