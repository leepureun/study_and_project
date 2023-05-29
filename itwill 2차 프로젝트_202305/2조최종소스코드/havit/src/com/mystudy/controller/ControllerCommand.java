package com.mystudy.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.command.BBSListCommand;
import com.mystudy.command.BBSListSearchCommand;
import com.mystudy.command.BBSViewCommand;
import com.mystudy.command.BbsCommand;
import com.mystudy.command.ChooseCommand;
import com.mystudy.command.Command;
import com.mystudy.command.CommentDeleteCommand;
import com.mystudy.command.CommentUpdateCommand;
import com.mystudy.command.CommentWriteCommand;
import com.mystudy.command.CommitCommand;
import com.mystudy.command.CommitCommentsCommand;
import com.mystudy.command.DeleteCommand;
import com.mystudy.command.DeleteMemberCommand;
import com.mystudy.command.DeleteMemberOkCommand;
import com.mystudy.command.FindCommand;
import com.mystudy.command.HobbyCommand;
import com.mystudy.command.JoinCommand;
import com.mystudy.command.LikeCommand;
import com.mystudy.command.LoginCommand;
import com.mystudy.command.LogoutCommand;
import com.mystudy.command.MainCommand;
import com.mystudy.command.OutMemberPRCommand;
import com.mystudy.command.UpdateCommand;
import com.mystudy.command.UpdateMemberCommand;
import com.mystudy.command.UpdateMemberOkCommand;
import com.mystudy.command.ViewBbsCommand;
import com.mystudy.command.ViewCommentsCommand;
import com.mystudy.command.WriteCommand;

/**
 * Servlet implementation class ControllerCommand
 */
@WebServlet("/controller")
public class ControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<String, Command> commands = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		commands = new HashMap<String,Command>();
		
		//태현
		commands.put("login", new LoginCommand());
		commands.put("join", new JoinCommand());
		commands.put("hobby", new HobbyCommand());
		commands.put("choose", new ChooseCommand());
		commands.put("find", new FindCommand());
		
		//정회
		commands.put("main", new MainCommand());
		
		//혜인
		commands.put("BBSList", new BBSListCommand());
		commands.put("BBSListSearch", new BBSListSearchCommand());
		commands.put("BBSView" , new BBSViewCommand());
		
		//정권
		commands.put("write", new WriteCommand());
		commands.put("update", new UpdateCommand());
		commands.put("delete", new DeleteCommand());
		commands.put("commit", new CommitCommand());
		commands.put("bbs", new BbsCommand());
		commands.put("commentWrite", new CommentWriteCommand());
		
		// 댓글 수정 삭제
		commands.put("comment_update", new CommentUpdateCommand());
		commands.put("commit_comments", new CommitCommentsCommand());
		commands.put("comment_delete", new CommentDeleteCommand());
		
		//푸른
		commands.put("out", new OutMemberPRCommand());
		commands.put("update_pr", new UpdateMemberCommand());
		commands.put("update_ok_pr", new UpdateMemberOkCommand());
		commands.put("delete_pr", new DeleteMemberCommand());
		commands.put("delete_ok", new DeleteMemberOkCommand());
		commands.put("view_bbs_pr", new ViewBbsCommand());
		commands.put("view_comments_pr", new ViewCommentsCommand());
		commands.put("logout", new LogoutCommand());
		commands.put("like", new LikeCommand());

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");
		
		Command command = commands.get(type);
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		doGet(request, response);

	}

}
