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
		
		request.setCharacterEncoding("UTF-8");
		
		String search = request.getParameter("search");
		String option = request.getParameter("option");
		
		System.out.println("검색단어:"+search);
		System.out.println("선택한것:"+option);
		
		BoardDAO dao = new BoardDAO();
		BoardVO bvo = new BoardVO("", "", "");
		
		if (option != null) {
			if (option.equals("title")) {
				bvo.setTitle(search);
				List<BoardVO> titleSearch = dao.boardTitleSearch(bvo);
				request.setAttribute("titleSearch", titleSearch);
				System.out.println("글제목:"+titleSearch);
			} else if (option.equals("content")) {
				bvo.setContent(search);
				List<BoardVO> contentSearch = dao.boardContentSearch(bvo);
				request.setAttribute("contentSearch", contentSearch);
				System.out.println("글내용:"+contentSearch);
			} else {
				bvo.setNick(search);
				List<BoardVO> writerSearch = dao.boardWriterSearch(bvo);
				request.setAttribute("writerSearch", writerSearch);
				System.out.println("작성자:"+writerSearch);
			}
		}
		
		int boards = dao.boardList().size();
		
		request.setAttribute("boards", boards);
		
		
		String nextPage = "freeBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		// forward 메서드 사용
		rd.forward(request, response);

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
