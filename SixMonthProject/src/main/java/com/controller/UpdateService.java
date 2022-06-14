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

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		String savePath = request.getServletContext().getRealPath("image");
		
		int maxSize = 5 * 1024 * 1024;
		
		String encoding = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// 0. 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		int pnum = Integer.parseInt(multi.getParameter("pnum"));
		
		// 파일 이름 가져오기
		String fileName = multi.getFilesystemName("file");

		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setContent(content);
		bvo.setPnum(pnum);
		bvo.setFileName(fileName);

		// 2. DAO메서드 이용해서 DB에 저장
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardUpdate(bvo);

		// 3. 성공 실패 구분
		String nextPage = "";
		if (cnt > 0) {
			nextPage = "GoView?pnum="+pnum+"&cnt=1";
		} else {
			nextPage = "GoUpdate?pnum="+pnum+"&cnt=1";
		}
		response.sendRedirect(nextPage);

	}

}
