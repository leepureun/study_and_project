package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.dao.BBSDAO;

public class LikeCommand implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int idx = Integer.parseInt(req.getParameter("idx"));
		int stat = Integer.parseInt(req.getParameter("stat"));

		System.out.println(stat);

		if (stat%2 == 0 ) {
			int result = BBSDAO.like( idx);
		} else {
			int result = BBSDAO.unlike( idx);
		}

		return "BBSView.jsp";
	}

}
