package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0. ���ڵ�
		request.setCharacterEncoding("UTF-8");
		
		// 1. �Ķ���� ����
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int pnum = Integer.parseInt(request.getParameter("pnum"));

		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setContent(content);
		bvo.setPnum(pnum);

		// 2. DAO�޼��� �̿��ؼ� DB�� ����
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardUpdate(bvo);

		// 3. ���� ���� ����
		String nextPage = "";
		if (cnt > 0) {
			nextPage = "GoView?pnum="+pnum;
		} else {
			nextPage = "GoUpdate?pnum="+pnum;
		}
		response.sendRedirect(nextPage);

	}

}
