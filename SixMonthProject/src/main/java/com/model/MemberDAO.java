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

		// selectOne => id�� PK�̱⶧��
		MemberVO result = session.selectOne("login", vo);

		session.close();

		return result;
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
	
	// �̸��� �ߺ� Ȯ�� �޼ҵ�
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
