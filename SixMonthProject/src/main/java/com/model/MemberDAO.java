package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.database.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlFactory = SqlSessionManager.getSqlSessionFactory();
	private SqlSession session = null;
	private int row = 0;
	String text = null;

	// 회원가입 DAO
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

	// 로그인 DAO
	public MemberVO login(MemberVO vo) {

		SqlSession session = sqlFactory.openSession(true);

		// selectOne => id가 PK이기때문
		MemberVO result = session.selectOne("login", vo);

		session.close();

		return result;
	}
	
	// id찾는 DAO(email 있는지 확인)
	public MemberVO findID(String email) {

		MemberVO result = null;
		try {
			session = sqlFactory.openSession(true);
			result = session.selectOne("findID", email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;

	}

	// pw찾는 DAO(id 있는지 확인)
	public MemberVO findPW(String id) {
		
		MemberVO result = null;
		try {
			session = sqlFactory.openSession(true);
			result = session.selectOne("findPW", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;

	}
	
	// email찾는 DAO(사용자의 id에 있는 email인지 여부)
	public MemberVO confirmEmail(String email) {
		
		MemberVO result = null;
		try {
			session = sqlFactory.openSession(true);
			result = session.selectOne("confirmEmail", email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;

	}
	
	// 비밀번호 변경 DAO
		public int changePW(MemberVO vo) {
			
			try {
				session = sqlFactory.openSession(true);
				row = session.update("changePW", vo);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return row;
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
}
