package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;

@WebServlet("/ComDeleteService")
public class ComDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1.파라미터 수집
		int cnum = Integer.parseInt(request.getParameter("cnum"));
		int pnum = Integer.parseInt(request.getParameter("pnum"));
	
		BoardDAO dao = new BoardDAO();

		// 3. BoardDAO에 있는 boardDelete()메서드 사용
		int cnt = dao.commentDelete(cnum);
		// 4. 성공 실패 판단후 페이지 이동
		String nextPage = "GoView?pnum="+pnum+"&cnt=0";

		response.sendRedirect(nextPage);

	}

}
