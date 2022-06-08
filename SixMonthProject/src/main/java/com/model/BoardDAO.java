package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

import com.model.BoardVO;


public class BoardDAO {

	// �����ε�
	// Connection��ü ����
	// Connection pool ��������
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();

	// �� ��ü�� �������� �޼���
	int cnt = 0;
	public List<BoardVO> boardList() {

		// 1. SqlSession ��������
		// openSession(auto commit);
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. sql�� ����
		// select : 1) selectOne : select���� ����� �ϳ� -> VO
		// 2) selectList : select���� ����� �ټ� -> List<VO>
		// insert, update, delete : �Ȱ��� �̸��� �޼��� ���
		// selectList("id", parameter);
		// ä���� ���ε� ������ id, ä�ﰪ
		// ������ id��
		List<BoardVO> list = session.selectList("boardList");

		// 3. ������ session ��ȯ
		session.close();

		// 4. �������� ��� ����
		return list;
	}
	
	public List<BoardVO> pagging(int page) {

		// 1. SqlSession ��������
		// openSession(auto commit);
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. sql�� ����
		// select : 1) selectOne : select���� ����� �ϳ� -> VO
		// 2) selectList : select���� ����� �ټ� -> List<VO>
		// insert, update, delete : �Ȱ��� �̸��� �޼��� ���
		// selectList("id", parameter);
		// ä���� ���ε� ������ id, ä�ﰪ
		// ������ id��
		List<BoardVO> list = session.selectList("pagging", page);

		// 3. ������ session ��ȯ
		session.close();

		// 4. �������� ��� ����
		return list;
	}
	
	// ���� DB�� insert�ϴ� �޼���
	public int boardInsert(BoardVO bvo) {

		// 1. SqlSession ��������
		SqlSession session = sqlSessionFactory.openSession(true);

		// try catch
		// DB�� ��ȭ�� �Ͼ�� ���
		// insert, delete, update �������� ������ ����ó���� ��

		try {
			cnt = session.insert("boardInsert", bvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3. SqlSession �ݳ�
		session.close();

		// 4. ������ ���� ��� ����
		return cnt;
	}

//�Խñ� ���� �޼��� 
	public int boardDelete(int Pnum) {
//1. SQLSession ��������   
		SqlSession session = sqlSessionFactory.openSession(true);
//2. SQL�� ���� 
		try {
			cnt = session.delete("boardDelete",Pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	
		
		return cnt;
	}
	
	public BoardVO boardVO(int Pnum){
		//1.sqlSession �������� 
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. �غ��ص� sql�� ����
		BoardVO cnt2 = session.selectOne("boardView",Pnum);
		//3. sqlsession ��ȯ
		session.close();
		//4. sql ������ ����
		return cnt2;
	}

	public int boardUpdate(BoardVO bvo) {
		
		// 1. SqlSession ��������
		SqlSession session = sqlSessionFactory.openSession(true);

		try {
			cnt = session.update("boardUpdate", bvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3. SqlSession �ݳ�
		session.close();

		// 4. ������ ���� ��� ����
		return cnt;
	}

	public int getCount(String kwd) {
		// TODO Auto-generated method stub
		return 0;
	}

}

// SQL�� ���� �غ�
// ���ε庯�� ä���
// ����
