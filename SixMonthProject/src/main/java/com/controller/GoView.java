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
import com.model.CommentVO;
import com.model.GoodVO;
import com.model.MemberVO;

@WebServlet("/GoView")
public class GoView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		// 1.Pnum 파라미터 수집
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		
		
		// 2DA의 boardView()메서드를 사용
		BoardDAO dao = new BoardDAO();
		if (cnt > 0) {
			dao.boardHitCount(pnum);
		}
		BoardVO view = dao.boardVO(pnum);
		List<CommentVO> list = dao.commentList(pnum);

		// 3, 1개의 글 데이터 ==> BoardVO를 객체 바인딩
		// List<BoardVO>list = dvo.boardList();
		request.setAttribute("view", view);
		request.setAttribute("list", list);

		// forward 방식으로 이동
		String nextPage = "viewBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);

	}

}