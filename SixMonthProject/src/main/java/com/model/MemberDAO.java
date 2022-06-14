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

	// ȸ������ DAO
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

	// �α��� DAO
	public MemberVO login(MemberVO vo) {

		SqlSession session = sqlFactory.openSession(true);

		// selectOne => id�� PK�̱⶧��
		MemberVO result = session.selectOne("login", vo);

		session.close();

		return result;
	}
	
	// idã�� DAO(email �ִ��� Ȯ��)
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

	// pwã�� DAO(id �ִ��� Ȯ��)
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
	
	// emailã�� DAO(������� id�� �ִ� email���� ����)
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
	
	// ��й�ȣ ���� DAO
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

	// ���̵� �ߺ� Ȯ�� �޼ҵ�
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

	// �г��� �ߺ� Ȯ�� �޼ҵ�
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
