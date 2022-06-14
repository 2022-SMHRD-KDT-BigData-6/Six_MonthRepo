package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BoardDAO;
import com.model.BoardVO;

@WebServlet("/GoFree")
public class GoFree extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 파라미터 수집 
		// 세션에 page 개수를 저장함.
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		BoardDAO dao = new BoardDAO();
		
		// 페이지 게시글을 리스트에 담아준다.
		List<BoardVO> list = dao.pagging(page);
		int boards = dao.boardList().size();
		
		
		// 객체바인딩
		// Scope영역에 전달하고자하는 객체를 저장
		// request 영역
		request.setAttribute("list", list);
		request.setAttribute("boards", boards);
		
		// forward방식으로 이동
		// RequestDispatcher 객체 생성
		String nextPage = "freeBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		// forward 메서드 사용
		rd.forward(request, response);
		
		// forward
		// jsp페이지로 이동
		
		// redirect
		// controller로 이동
	}

}
