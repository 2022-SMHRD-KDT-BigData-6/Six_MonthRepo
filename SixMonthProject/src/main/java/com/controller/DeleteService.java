package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;


/**
 * Servlet implementation class DeleteService
 */
@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.파라미터 수집
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		//2. boardDelete()메서드 만들기 
		BoardDAO dao = new BoardDAO();
		
		//3. BoardDAO에 있는 boardDelete()메서드 사용 
		int cnt = dao.boardDelete(pnum);
		//4. 성공 실패 판단후 페이지 이동 
		String nextPage = "GoMain";
		
		response.sendRedirect("GoMain");
	}

}
