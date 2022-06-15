package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class CalendarDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
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
}
