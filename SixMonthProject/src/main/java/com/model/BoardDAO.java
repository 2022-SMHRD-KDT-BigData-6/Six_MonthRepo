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
	int cnt = 0;

	// �� ��ü�� �������� �޼���
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
	public int boardDelete(int pnum) {
		//1. SQLSession ��������   
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. SQL�� ���� 
		try {
			cnt = session.delete("boardDelete",pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	
		
		return cnt;
	}
	
	// �Խñ� �����ֱ�
	public BoardVO boardVO(int pnum){
		//1.sqlSession �������� 
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. �غ��ص� sql�� ����
		BoardVO cnt2 = session.selectOne("boardView",pnum);
		//3. sqlsession ��ȯ
		session.close();
		//4. sql ������ ����
		return cnt2;
	}

	// �Խñ� ����
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
	
	//�Խñ� ��ȸ�� ����
	public int boardHitCount(int pnum) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		try {
			cnt = session.update("boardHitCount", pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		session.close();
		
		return cnt;
		
	}
	
	// ������ ID
	public int boardGoodInsert(GoodVO gvo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		try {
			cnt = session.insert("boardGoodInsert", gvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}
	
	// ������ ID Ȯ��
	public int boardGoodCheck(GoodVO gvo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		try {
			cnt = session.selectOne("boardGoodCheck", gvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}
	
	// ���� ���� ����
	public int boardGoodCount(int pnum) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		try {
			cnt = session.update("boardGoodCount", pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		session.close();
		
		return cnt;
	}
	
	// ��� �ۼ�
	public int commentInsert(CommentVO cvo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		try {
			cnt = session.insert("commentInsert", cvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		session.close();
		
		return cnt;
	}
	
	// ��� ����
	public List<CommentVO> commentList(int pnum) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<CommentVO> list = session.selectList("commentList",pnum);

		// 3. ������ session ��ȯ
		session.close();

		// 4. �������� ��� ����
		return list;
		
	}
	
	// ��� ����
	public int commentDelete(int cnum) {
		//1. SQLSession ��������   
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. SQL�� ���� 
		try {
			cnt = session.delete("commentDelete",cnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	
		
		return cnt;
	}
	
	
}

// SQL�� ���� �غ�
// ���ε庯�� ä���
// ����
