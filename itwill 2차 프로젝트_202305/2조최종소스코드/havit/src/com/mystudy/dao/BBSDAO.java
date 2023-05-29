package com.mystudy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.mybatis.DBService;
import com.mystudy.vo.BBSVO;
import com.mystudy.vo.CpageVO;

public class BBSDAO {

	public static List<BBSVO> getBBSList(int category) {
		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.BBSList", category);
		ss.close();
		return list;
	}

	// 혜인///////////////////////////////////////////////
	// 페이지에 해당하는 게시글 조회 (검색추가)
	public static List<BBSVO> BBSsearchPageList(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.BBSsearchPageList", map);
		ss.close();
		return list;
	}

	public static List<BBSVO> BBSsearchPageList(int begin, int end, int category, String subject, String bcontent,
			String optday, String optage, String optgen) {
		Map<String, Object> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("category", category);
		map.put("subject", subject);
		map.put("bcontent", bcontent);
		map.put("optday", optday);
		map.put("optage", optage);
		map.put("optgen", optgen);
		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.BBSsearchPageList", map);
		ss.close();
		return list;
	}

	// 게시물 갯수 (검색추가)
	public static int searchTotalCount(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession();
		int cnt = ss.selectOne("havit.searchTotalCount", map);
		ss.close();
		return cnt;
	}

	public static int searchTotalCount(int category, String subject, String bcontent, String optday, String optage,
			String optgen) {
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		map.put("subject", subject);
		map.put("bcontent", bcontent);
		map.put("optday", optday);
		map.put("optage", optage);
		map.put("optgen", optgen);
		SqlSession ss = DBService.getFactory().openSession();
		int cnt = ss.selectOne("havit.searchTotalCount", map);
		ss.close();
		return cnt;
	}

	// 페이지에 해당하는 글목록(게시글) 가져오기
	public static List<BBSVO> bbspageList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.BBSpageList", map);
		ss.close();
		return list;
	}

	public static List<BBSVO> bbspageList(int begin, int end, int category) {
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("category", category);
		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.BBSpageList", map);
		ss.close();
		return list;
	}

	// 전체목록
	public static List<BBSVO> bbstotList(int category) {
		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.BBSTotList", category);
		ss.close();
		return list;
	}

	// 카테고리안에 전체 게시물 갯수
	public static int getTotalCount(int category) {
		SqlSession ss = DBService.getFactory().openSession();
		int cnt = ss.selectOne("havit.totalCount", category);
		ss.close();
		return cnt;
	}

	// 상세보기
	public static BBSVO bbsView(int idx) {
		SqlSession ss = DBService.getFactory().openSession();
		BBSVO vo = ss.selectOne("havit.BBSView", idx);
		ss.close();
		return vo;
	}

	// 조회수 증가
	public static int viewsUp(int idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int views = ss.update("havit.viewsUp", idx);
		ss.close();
		return views;
	}

	// 정권 ///////////////////////////////////////////////////
	public static int insert(BBSVO BBSVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("havit.insert", BBSVO);
		ss.close();
		return result;
	}

	public static BBSVO selectOne(String nickname) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BBSVO BBSVO = ss.selectOne("havit.selectone", nickname);
		return BBSVO;
	}

	public static BBSVO selectOneIdx(int idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BBSVO BBSVO = ss.selectOne("havit.selectoneIdx", idx);
		return BBSVO;
	}

	public static BBSVO selectBidx(int bidx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BBSVO BBSVO = ss.selectOne("havit.selectBidx", bidx);
		return BBSVO;
	}

	public static BBSVO update(BBSVO BBSVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("havit.update", BBSVO);
		ss.close();
		return BBSVO;

	}

	public static int delete(int idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("havit.delete", idx);
		ss.close();
		return result;

	}

	// 푸른 /////////////////////////////////////////////////////////////////
	// 게시글의 전체 데이터 건수 조회
	public static int getTotalCount(String nickname) {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("havit.btotalCount", nickname);
		ss.close();
		return totalCount;
	}

	// 페이지수 조절용??
	public static List<BBSVO> getList(CpageVO cpvo) {

		SqlSession ss = DBService.getFactory().openSession();
		List<BBSVO> list = ss.selectList("havit.pagelist", cpvo);
		ss.close();
		return list;
	}

	// 좋아요 처리 부분
	public static int like( int idx) {

		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("havit.like", idx);
		ss.close();
		return result;

	}

	public static int unlike( int idx) {

		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("havit.unlike", idx);
		ss.close();
		return result;

	}

}
