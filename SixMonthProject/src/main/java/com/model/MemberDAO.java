package com.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.database.SqlSessionManager;

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

	public MemberVO login(MemberVO vo) {

		SqlSession session = sqlFactory.openSession(true);

		// selectOne => id가 PK이기때문
		MemberVO result = session.selectOne("login", vo);

		session.close();

		return result;
	}

}
