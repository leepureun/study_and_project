package com.mystudy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.mybatis.DBService;
import com.mystudy.vo.HobbyVO;

public class HobbyDAO {
	public static List<HobbyVO> getHobbyList(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		List<HobbyVO> list = ss.selectList("havit.hobbyList", id);
		ss.close();
		return list;
	}
	
	public static int JoinHobby(HobbyVO hobby) {
		SqlSession ss =DBService.getFactory().openSession(true);
		int result = ss.insert("havit.hobby",hobby);
		ss.close();
		return result;
	}
	
	public static int deleteHobby(String id) {
		SqlSession ss =DBService.getFactory().openSession(true);
		int result = ss.delete("havit.deletehobby",id);
		ss.close();
		return result;
	}
	
	public static List<HobbyVO> selectHobby(String id) {
		SqlSession ss =DBService.getFactory().openSession();
		List<HobbyVO> hList = (ss.selectList("havit.select_hobby", id));
		ss.close();
		
		return hList;
	}
	
}
