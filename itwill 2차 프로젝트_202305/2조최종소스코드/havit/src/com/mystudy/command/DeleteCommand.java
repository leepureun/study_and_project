package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.BBSDAO;

public class DeleteCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		int result = BBSDAO.delete(idx);
		
		System.out.println("idx : " + idx);
		
		System.out.println("result : " + result);
		
		return "controller?type=view_bbs_pr";
	}

}
