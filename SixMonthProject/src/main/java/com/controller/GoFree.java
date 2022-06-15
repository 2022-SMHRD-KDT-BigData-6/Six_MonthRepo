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
		
		// �Ķ���� ���� 
		// ���ǿ� page ������ ������.
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		BoardDAO dao = new BoardDAO();
		
		// ������ �Խñ��� ����Ʈ�� ����ش�.
		List<BoardVO> list = dao.pagging(page);
		int boards = dao.boardList().size();
		
		
		// ��ü���ε�
		// Scope������ �����ϰ����ϴ� ��ü�� ����
		// request ����
		request.setAttribute("list", list);
		request.setAttribute("boards", boards);
		
		// forward������� �̵�
		// RequestDispatcher ��ü ����
		String nextPage = "freeBoard.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		// forward �޼��� ���
		rd.forward(request, response);
		
		// forward
		// jsp�������� �̵�
		
		// redirect
		// controller�� �̵�
	}

}
