package com.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.database.SqlSessionManager;
// 회원정보DAO
public class MemberDAO {

	private SqlSessionFactory sqlFactory = SqlSessionManager.getSqlSessionFactory();
	private SqlSession session = null;
	private int row = 0;

	public int insert(MemberVO vo) {
		try {
			session = sqlFactory.openSession(true);
			row = session.insert("memberInsert", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return row;
	}
}