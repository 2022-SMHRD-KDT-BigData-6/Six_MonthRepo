package com.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.database.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlFactory = SqlSessionManager.getSqlSessionFactory();
	private SqlSession session = null;
	private int row = 0;
	String text = null;

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

	// 아이디 중복 확인 메소드
	public int idCheck(String id) {
		try {
			System.out.println(id);
			session = sqlFactory.openSession(true);
			row = session.selectOne("idCheck", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return row;
	}

	// 닉네임 중복 확인 메소드
	public int nickCheck(String nick) {
		try {
			session = sqlFactory.openSession(true);
			row = session.selectOne("nickCheck", nick);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return row;
	}
	
	// 이메일 중복 확인 메소드
		public int emailCheck(String email) {
			try {
				session = sqlFactory.openSession(true);
				row = session.selectOne("emailCheck", email);
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return row;
		}
	
}
