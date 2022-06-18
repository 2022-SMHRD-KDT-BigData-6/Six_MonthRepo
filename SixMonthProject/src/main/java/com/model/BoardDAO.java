package com.model;

import java.util.List;

import javax.xml.stream.events.Comment;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

import com.model.BoardVO;


public class BoardDAO {

	// 동적로딩
	// Connection객체 생성
	// Connection pool 가져오기
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	int cnt = 0;

	// 글 전체를 가져오는 메서드
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
	
	// 핫게시글 가져오는 메서드
	public List<BoardVO> boardHotList(){
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<BoardVO> list = session.selectList("boardHotList");

		session.close();

		return list;
	}
	
	// 검색된 글 전체를 가져오는 메서드
	public List<BoardVO> boardTitleSearch(BoardVO bvo) {


		SqlSession session = sqlSessionFactory.openSession(true);

		List<BoardVO> list = session.selectList("boardTitleSearch", bvo);

		session.close();

		return list;
	}
	
	// 검색된 내용 전체 가져오는 메서드
	public List<BoardVO> boardContentSearch(BoardVO bvo) {


		SqlSession session = sqlSessionFactory.openSession(true);

		List<BoardVO> list = session.selectList("boardContentSearch", bvo);

		session.close();

		return list;
	}
	
	public List<BoardVO> boardWriterSearch(BoardVO bvo) {


		SqlSession session = sqlSessionFactory.openSession(true);

		List<BoardVO> list = session.selectList("boardWriterSearch", bvo);

		session.close();

		return list;
	}
	
	// 회원 확인 메서드
//	public List<MemberVO> memberCheck(MemberVO mvo) {
//		SqlSession session = sqlSessionFactory.openSession(true);
//		
//		List<MemberVO> memberList = session.selectList("memberCheck", mvo);
//
//		// 3. 빌려온 session 반환
//		session.close();
//
//		// 4. 쿼리실행 결과 리턴
//		return memberList;
//	}
	
	// 글 페이징
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
		System.out.println(list);
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
	public int boardDelete(int pnum) {
		//1. SQLSession 빌려오기   
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. SQL문 실행 
		try {
			cnt = session.delete("boardDelete",pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	
		
		return cnt;
	}
	
	// 게시글 보여주기
	public BoardVO boardVO(int pnum){
		//1.sqlSession 빌려오기 
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. 준비해둔 sql문 실행
		BoardVO cnt2 = session.selectOne("boardView",pnum);
		//3. sqlsession 반환
		session.close();
		//4. sql 실행결과 리턴
		return cnt2;
	}

	// 게시글 수정
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
	
	// 게시글 사진 삭제
	public int boardFileDel(int pnum) {
		SqlSession session = sqlSessionFactory.openSession(true);
		try {
			cnt = session.update("boardFileDel",pnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		
		return cnt;
	}
	
	//게시글 조회수 증가
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
	
	// 게시글 공감한 ID
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
	
	// 게시글 공감한 ID 확인
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
	
	// 게시글 공감 개수 증가
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
	
	// 댓글 공감한 ID
	public int commentGoodInsert(ComGoodVO cgvo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		try {
			cnt = session.insert("commentGoodInsert", cgvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}
	
	// 댓글 공감한 ID 확인
	public int commentGoodCheck(ComGoodVO cgvo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		try {
			cnt = session.selectOne("commentGoodCheck", cgvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}
	
	// 댓글 공감 개수 증가
	public int commentGoodCount(ComGoodVO cgvo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		try {
			cnt = session.update("commentGoodCount", cgvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		session.close();
		
		return cnt;
	}
	
	
	// 댓글 작성
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
	
	// 댓글 보기
	public List<CommentVO> commentList(int pnum) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<CommentVO> list = session.selectList("commentList",pnum);

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;
		
	}
	
	// 댓글 삭제
	public int commentDelete(int cnum) {
		//1. SQLSession 빌려오기   
		SqlSession session = sqlSessionFactory.openSession(true);
		//2. SQL문 실행 
		try {
			cnt = session.delete("commentDelete",cnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	
		
		return cnt;
	}
	
	// 나의 게시글만 보는 DAO
	public List<BoardVO> boardMyList(String id) {

		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<BoardVO> list = session.selectList("boardMyList",id);

		session.close();

		return list;
	}
	
	// 나의 댓글만 보는 DAO
	public List<CommentVO> boardMyComment(String id) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<CommentVO> list = session.selectList("boardMyComment",id);

		session.close();

		return list;
		
	}
	
	
	
}

// SQL문 실행 준비
// 바인드변수 채우기
// 실행
