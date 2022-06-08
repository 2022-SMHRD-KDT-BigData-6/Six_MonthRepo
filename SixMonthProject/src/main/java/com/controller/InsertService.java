package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/InsertService")
public class InsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 파일 저장 경로
		// Build과정을 거쳐야함 
		// 서버 OS : Linux의 기본 주소 => root/home/
		// request.getServletContext() ==> 실제 실행되는 프로젝트 파일 정보
		// .getRealPath("폴더이름") ==> 특정 폴더의 경로
		String savePath = request.getServletContext().getRealPath("image"); // 확장성이 좋아져 저장경로 변경 안해도됨.
		
		// 파일 최대 크기(단위 : byte)
		int maxSize = 5 * 1024 * 1024; // 5mb
		
		// 인코딩 방식
		String encoding = "UTF-8";
		
		// MultipartRequest 객체 생성 (writerBoard에서 넘어온 자료 인코딩 type : Multipart)
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// 파라미터 수집
		String title = multi.getParameter("title");
		String id = multi.getParameter("id");
		String content = multi.getParameter("content");
		
		// 파일 이름 가져오기
		String fileName = multi.getFilesystemName("file");
		
		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setId(id);
		bvo.setContent(content);
		bvo.setFileName(fileName);
		
		// DAO이용해서 저장
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardInsert(bvo);
		
		// 성공실패 구분 후에 페이지 이동
		if(cnt>0) {
			response.sendRedirect("GoMain?page=1");
		}else{
			response.sendRedirect("GoWriter");
		}
	}
}
