package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import com.mystudy.common.Paging;
import com.mystudy.dao.BBSDAO;
import com.mystudy.vo.BBSVO;

public class BBSListSearchCommand implements Command {
	//bbsList idx 값으로 바꾸기 합칠 때
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("***********");
			int category = Integer.parseInt(request.getParameter("category"));
			String keyword = request.getParameter("keyword");
			int option = Integer.parseInt(request.getParameter("option"));
			String subject = null;
			String bcontent = null;
			String optage = request.getParameter("age");
			String optday = request.getParameter("day");
			String optgen = request.getParameter("gender");
			if(option == 0) {
				subject = keyword;
			}else if(option == 1) {
				bcontent = keyword;
			}
			System.out.println("keyword > " + keyword + " option > " + option);
			System.out.println("age > " + optage + " day > " + optday);
			System.out.println("gender > " + optgen + " category > " + category + "\nsubject >  " + subject + " bcontent >" + bcontent);
			
			//페이징처리
			//0. 페이징 처리를 위한 객체(Paging) 생성
			Paging p = new Paging();
			//1. 카테고리별 게시물 수량 구하기
			p.setTotalRecord(BBSDAO.searchTotalCount(category , subject, bcontent, optday, optage, optgen));
			p.setTotalPage();
			
			System.out.println("> 카테고리별 게시글 수(p.getTotalRecord()): " + p.getTotalRecord());
			System.out.println("> 카테고리별 페이지 수(p.getTotalPage()) : " + p.getTotalPage());
			
			String cPage = request.getParameter("cPage");
			
			if (cPage != null) {
				p.setNowPage(Integer.parseInt(cPage));
			}
			
			System.out.println("> cPage : " + cPage);
			System.out.println("> Paging nowPage : " + p.getNowPage());
			
			//3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) 구하기
			
			p.setEnd(p.getNowPage()* p.getNumPerPage());
			p.setBegin(p.getEnd() - p.getNumPerPage()+1);
			
			//3-1. (선택적) 끝번호가 데이터 건수보다 크면 데이터 건수와 동일하게 처리
			if (p.getEnd() > p.getTotalRecord()) {
				p.setEnd(p.getTotalRecord());
			}
			
			System.out.println(">> 시작번호(begin) : " + p.getBegin());
			System.out.println(">> 끝번호(end) : " + p.getEnd());
			
			//------- 블록(Block) 계산하기 ---------
			//4. 블록 시작페이지, 끝페이지 구하기(현재 페이지 번호 사용)
			//4-1. 시작페이지, 끝페이지 구하기
			
			int beginPage = (p.getNowPage() - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
			p.setBeginPage(beginPage);
			p.setEndPage(beginPage + p.getPagePerBlock() - 1);
			
			//4-2. 끝페이지(endPage)가 전체 페이지 수(totalPage) 보다 크면
			// 끝페이지를 전체페이지 수로 변경 처리
			if (p.getEndPage() > p.getTotalPage()) {
				p.setEndPage(p.getTotalPage());
			}
			
			System.out.println(">> beginPage : " + p.getBeginPage());
			System.out.println(">> endPage : " + p.getEndPage());
			//=======================
			List<BBSVO> BBSsearchPageList = BBSDAO.BBSsearchPageList(p.getBegin(),p.getEnd(), category,
																	subject, bcontent, optday, optage, optgen);
			System.out.println("p.getBegin() : "+p.getBegin()+" p.getEnd() : " + p.getEnd() + "category" + category);
			System.out.println(">>현제페이지 글목록(list) : " + BBSsearchPageList);
			
			request.setAttribute("BBSsearchPageList", BBSsearchPageList); //게시글 데이터
			request.setAttribute("pvos", p); //페이지 관련 데이터1
			request.setAttribute("category",category);
			request.setAttribute("option", option);

		 
		return "BBSListSearch.jsp";
	}

}
