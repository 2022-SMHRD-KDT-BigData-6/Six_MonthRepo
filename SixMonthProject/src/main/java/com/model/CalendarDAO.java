package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class CalendarDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	int cnt=0;
	// 글 전체를 가져오는 메서드
		public List<CalendarVO> calendarList() {

			// 1. SqlSession 빌려오기
			// openSession(auto commit);
			SqlSession session = sqlSessionFactory.openSession(true);
			
			// 2. sql문 실행
				// select 
				// 1) selectOne : select문의 결과가 하나 -> VO
				// 2) selectList : select문의 결과가 다수 -> List<VO>
				// insert, update, delete : 똑같은 이름의 메서드 사용
			// selectList("id", parameter);
			// 채워줄 바인드 있으면 id, 채울값
			// 없으면 id만
			List<CalendarVO> calendarList = session.selectList("calendarList");

			// 3. 빌려온 session 반환
			session.close();
		
			// 4. 쿼리실행 결과 리턴
			return calendarList;
		}
		

		// 글을 DB에 insert하는 메서드
		public int calendarInsert(CalendarVO cvo) {

			// 1. SqlSession 빌려오기
			SqlSession session = sqlSessionFactory.openSession(true);

			// try catch
			// DB에 변화가 일어나는 경우
			// insert, delete, update 세가지는 가급적 예외처리할 것

			try {
				cnt = session.insert("calendarInsert", cvo);
			} catch (Exception e) {
				e.printStackTrace();
			}

			// 3. SqlSession 반납
			session.close();

			// 4. 쿼리문 실행 결과 리턴
			return cnt;
		}


		public int calendarDelete(CalendarVO cvo) {

			// 1. SqlSession 빌려오기
			SqlSession session = sqlSessionFactory.openSession(true);

			// try catch
			// DB에 변화가 일어나는 경우
			// insert, delete, update 세가지는 가급적 예외처리할 것

			try {
				cnt = session.delete("calendarDelete", cvo);
				} catch (Exception e) {
					e.printStackTrace();
				}

				// 3. SqlSession 반납
				session.close();

				// 4. 쿼리문 실행 결과 리턴
				return cnt;
		}
}
