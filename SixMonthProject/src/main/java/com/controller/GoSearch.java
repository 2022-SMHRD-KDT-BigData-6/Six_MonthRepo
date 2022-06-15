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

@WebServlet("/GoSearch")
public class GoSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String search = request.getParameter("search");
		String option = request.getParameter("option");

		BoardVO bvo = new BoardVO("", "", "");
		if (option != null) {
			if (option.equals("title")) {
				bvo.setTitle(search);
			} else if (option.equals("content")) {
				bvo.setContent(search);
			} else {
				bvo.setNick(search);
			}
		}
		
		
		BoardDAO dao = new BoardDAO();
		
		int boards = dao.boardList().size();
		List<BoardVO> searchList = dao.boardSearchList(bvo);
		
		request.setAttribute("boards", boards);
		request.setAttribute("searchList", searchList);
		
		String nextPage = "freeBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		// forward 메서드 사용
		rd.forward(request, response);

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
