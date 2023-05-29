package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.common.Paging;
import com.mystudy.dao.BBSDAO;
import com.mystudy.vo.BBSVO;
import com.mystudy.vo.CpageVO;
import com.mystudy.vo.MemberVO;

public class ViewBbsCommand implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		String nickname = ((MemberVO) session.getAttribute("mvo")).getNickname();


		// 0. 페이징 처리를 위한 객체(Paging) 생성
		Paging p = new Paging();

		// 1. 전체 게시물 수량 구하기
		p.setTotalRecord(BBSDAO.getTotalCount(nickname));
		p.setTotalPage();

		// 2. 현재 페이지 구하기
		String cPage = req.getParameter("cPage");
		System.out.println(cPage);

		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}

		// 3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) 구하기
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);

		// 3-1. (선택적) 끝번호가 데이터 건수보다 크면 데이터 건수와 동일하게 처리
		if (p.getEnd() > p.getTotalRecord()) {
			p.setEnd(p.getTotalRecord());
		}

		// ------- 블록(Block) 계산하기 ---------
		// 4. 블록 시작페이지, 끝페이지 구하기(현재 페이지 번호 사용)
		// 4-1. 시작페이지, 끝페이지 구하기
		int beginPage = (p.getNowPage() - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(beginPage + p.getPagePerBlock() - 1);

		// 4-2. 끝페이지(endPage)가 전체 페이지 수(totalPage) 보다 크면
		// 끝페이지를 전체페이지 수로 변경 처리
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}

		// =========================
		// 현재 페이지 기준으로 DB 데이터(게시글) 가져오기
		//List<BbsVO> listb = BbsDAO.getList(p.getBegin(), p.getEnd());
		
		CpageVO cpvo = new CpageVO();
		cpvo.setNickname(nickname);
		cpvo.setBeginpage(p.getBegin());
		cpvo.setEndpage(p.getEnd());
		
		List<BBSVO> listb = BBSDAO.getList(cpvo);
		// 데이터를 화면에 표시(출력)
		req.setAttribute("listb", listb); // 게시글 데이터
		req.setAttribute("pvo", p); // 페이지 관련 데이터
		return "view_bbsList.jsp";
	}

}
