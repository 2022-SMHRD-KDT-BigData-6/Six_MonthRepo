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
import com.model.CommentVO;

@WebServlet("/GoComment")
public class GoComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int pnum = Integer.parseInt(request.getParameter("pnum"));

		// 2DA의 boardView()메서드를 사용
		BoardDAO dao = new BoardDAO();

		List<CommentVO> list = dao.commentList();

		// 3, 1개의 글 데이터 ==> BoardVO를 객체 바인딩
		// List<BoardVO>list = dvo.boardList();
		request.setAttribute("list", list);

		// forward 방식으로 이동
		String nextPage = "viewBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
