package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;

/**
 * Servlet implementation class Goview
 */
@WebServlet("/GoView")
public class Goview extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1.Pnum 파라미터 수집
		int Pnum = Integer.parseInt(request.getParameter("Pnum"));
		//2DA의 boardView()메서드를 사용
		BoardDAO dao = new com.model.BoardDAO();
		com.model.BoardVO bvo = dao.boardVO(Pnum);
		
		// 3, 1개의 글 데이터 ==> BoardVO를 객체 바인딩
		 //List<BoardVO>list = dvo.boardList();
		request.setAttribute("bvo",bvo);
		
		
		//forward 방식으로 이동 
		String nextPage ="viewBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request,response);
		
	}

}
