package com.mystudy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.mybatis.DBService;
import com.mystudy.vo.CommentsVO;
import com.mystudy.vo.CpageVO;

public class CommentsDAO {

	
			public static int getTotalCount(String nickname) {
				SqlSession ss = DBService.getFactory().openSession();
				int totalCount = ss.selectOne("havit.CtotalCount", nickname);
				ss.close();
				return totalCount;
			}

			
			
			public static List<CommentsVO> getList(CpageVO cpvo) {
				
				SqlSession ss = DBService.getFactory().openSession();
				List<CommentsVO> list = ss.selectList("havit.pagelistc", cpvo);
				ss.close();
				return list;
			}
			/* 댓글달기 */
			public static int insertComments(CommentsVO cvo) {
				SqlSession ss = DBService.getFactory().openSession(true);
				int result = ss.insert("havit.insertComments" , cvo);
				ss.close();
				return result;
			}
			/*댓글보기*/
			public static List<CommentsVO> commentsList(int idx) { 
				  SqlSession ss =DBService.getFactory().openSession(); 
				  List<CommentsVO> list =ss.selectList("havit.selectComments",idx);
				  ss.close(); 
				  return list;
			  }
			/*댓글수보기*/
			public static int commentsCnt(int idx) {
				SqlSession ss = DBService.getFactory().openSession(true);
				int result = ss.selectOne("havit.selectCommentsCnt" , idx);
				ss.close();
				return result;
			}
			
			// 정권 ///////////////////////////////////////////////////
			
			public static CommentsVO update(CommentsVO cvo) {
				SqlSession ss = DBService.getFactory().openSession(true);
				int result = ss.update("havit.comment_update", cvo);
				ss.close();
				return cvo;

			}
			
			public static int delete(String cidx) {
				SqlSession ss = DBService.getFactory().openSession(true);
				int result = ss.delete("havit.delete_comments", cidx);
				ss.close();
				return result;

			}		

}
