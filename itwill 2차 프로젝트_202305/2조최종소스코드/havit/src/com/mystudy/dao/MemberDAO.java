package com.mystudy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.mybatis.DBService;
import com.mystudy.vo.MemberVO;

public class MemberDAO {

	// 태현 ///////////////////////////////////////////////////////
	public static MemberVO login(MemberVO mem) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO member = ss.selectOne("havit.login", mem);
		ss.close();
		return member;
	}

	public static int join(MemberVO mem) {
		SqlSession ss = DBService.getFactory().openSession(true);
		System.out.println(mem.toString());
		int result = ss.insert("havit.join", mem);
		System.out.println("insert join 끝 : " + result);
		ss.close();
		return result;
	}
	
	public static String findpw(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		 //ss.
		return "";
	}

	// 정회 ///////////////////////////////////////////////////////
	public static List<MemberVO> getAllMember() {
		SqlSession ss = DBService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("havit.selectAll");
		ss.close();
		return list;
	}

	public static MemberVO getOneMember(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO mvo = ss.selectOne("havit.selectOne", id);
		System.out.println(":: mvo : " + mvo);
		ss.close();
		return mvo;
	}

	// 푸른 ///////////////////////////////////////////////////////
	public static MemberVO getMemberData_pr(String nickname) {

		SqlSession ss = DBService.getFactory().openSession();
		MemberVO mvo = ss.selectOne("havit.out_member_pr", nickname);
		ss.close();
		return mvo;

	}

	public static int updateMember_pr(MemberVO mvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("havit.update_member_pr", mvo);
		ss.close();

		return result;
	}

	public static int deleteMember_pr(MemberVO mvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("havit.delete_member_pr", mvo);
		ss.close();

		return result;
	}

}
