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

@WebServlet("/GoMain")
public class GoMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardDAO dao = new BoardDAO();

		// ������ �Խñ��� ����Ʈ�� ����ش�.
		List<BoardVO> list = dao.boardList();
		
		// ��ü���ε�
		// Scope������ �����ϰ����ϴ� ��ü�� ����\
		// request ����
		request.setAttribute("list", list);
		
		// forward������� �̵�
		// RequestDispatcher ��ü ����
		String nextPage = "Main.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		// forward �޼��� ���
		rd.forward(request, response);
	}

}
