package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

import com.model.BoardVO;


public class BoardDAO {

	// 동적로딩
	// Connection객체 생성
	// Connection pool 가져오기
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();

	// 글 전체를 가져오는 메서드
	int cnt = 0;
	public List<BoardVO> boardList() {

		// 1. SqlSession 빌려오기
		// openSession(auto commit);
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. sql문 실행
		// select : 1) selectOne : select문의 결과가 하나 -> VO
		// 2) selectList : select문의 결과가 다수 -> List<VO>
		// insert, update, delete : 똑같은 이름의 메서드 사용
		// selectList("id", parameter);
		// 채워줄 바인드 있으면 id, 채울값
		// 없으면 id만
		List<BoardVO> list = session.selectList("boardList");

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;
	}
	
	public List<BoardVO> pagging(int page) {

		// 1. SqlSession 빌려오기
		// openSession(auto commit);
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. sql문 실행
		// select : 1) selectOne : select문의 결과가 하나 -> VO
		// 2) selectList : select문의 결과가 다수 -> List<VO>
		// insert, update, delete : 똑같은 이름의 메서드 사용
		// selectList("id", parameter);
		// 채워줄 바인드 있으면 id, 채울값
		// 없으면 id만
		List<BoardVO> list = session.selectList("pagging", page);

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;
	}
	
	// 글을 DB에 insert하는 메서드
	public int boardInsert(BoardVO bvo) {

		// 1. SqlSession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);

		// try catch
		// DB에 변화가 일어나는 경우
		// insert, delete, update 세가지는 가급적 예외처리할 것

		try {
			cnt = session.insert("boardInsert", bvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3. SqlSession 반납
		session.close();

		// 4. 쿼리문 실행 결과 리턴
		return cnt;
	}

//게시글 삭제 메서드 
	public int boardDelete(int Pnum) {
//1. SQLSession 빌려오기   
		SqlSession session = sqlSessionFactory.openSession(true);
//2. SQL문 실행 
		try {
			cnt = session.delete("boardDelete",Pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	
		
		return cnt;
	}
	
	public BoardVO boardVO(int Pnum){
		//1.sqlSession 빌려오기 
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. 준비해둔 sql문 실행
		BoardVO cnt2 = session.selectOne("boardView",Pnum);
		//3. sqlsession 반환
		session.close();
		//4. sql 실행결과 리턴
		return cnt2;
	}

	public int boardUpdate(BoardVO bvo) {
		
		// 1. SqlSession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);

		try {
			cnt = session.update("boardUpdate", bvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3. SqlSession 반납
		session.close();

		// 4. 쿼리문 실행 결과 리턴
		return cnt;
	}

	public int getCount(String kwd) {
		// TODO Auto-generated method stub
		return 0;
	}

}

// SQL문 실행 준비
// 바인드변수 채우기
// 실행
