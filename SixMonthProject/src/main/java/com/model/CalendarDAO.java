package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class CalendarDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	int cnt=0;
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
		

		// ���� DB�� insert�ϴ� �޼���
		public int calendarInsert(CalendarVO cvo) {

			// 1. SqlSession ��������
			SqlSession session = sqlSessionFactory.openSession(true);

			// try catch
			// DB�� ��ȭ�� �Ͼ�� ���
			// insert, delete, update �������� ������ ����ó���� ��

			try {
				cnt = session.insert("calendarInsert", cvo);
			} catch (Exception e) {
				e.printStackTrace();
			}

			// 3. SqlSession �ݳ�
			session.close();

			// 4. ������ ���� ��� ����
			return cnt;
		}


		public int calendarDelete(CalendarVO cvo) {

			// 1. SqlSession ��������
			SqlSession session = sqlSessionFactory.openSession(true);

			// try catch
			// DB�� ��ȭ�� �Ͼ�� ���
			// insert, delete, update �������� ������ ����ó���� ��

			try {
				cnt = session.delete("calendarDelete", cvo);
				} catch (Exception e) {
					e.printStackTrace();
				}

				// 3. SqlSession �ݳ�
				session.close();

				// 4. ������ ���� ��� ����
				return cnt;
		}
}
