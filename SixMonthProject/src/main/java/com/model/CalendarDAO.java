package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class CalendarDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	// �� ��ü�� �������� �޼���
		public List<CalendarVO> calendarList() {

			// 1. SqlSession ��������
			// openSession(auto commit);
			SqlSession session = sqlSessionFactory.openSession(true);
			
			// 2. sql�� ����
				// select 
				// 1) selectOne : select���� ����� �ϳ� -> VO
				// 2) selectList : select���� ����� �ټ� -> List<VO>
				// insert, update, delete : �Ȱ��� �̸��� �޼��� ���
			// selectList("id", parameter);
			// ä���� ���ε� ������ id, ä�ﰪ
			// ������ id��
			List<CalendarVO> calendarList = session.selectList("calendarList");

			// 3. ������ session ��ȯ
			session.close();
		
			// 4. �������� ��� ����
			return calendarList;
		}
}
