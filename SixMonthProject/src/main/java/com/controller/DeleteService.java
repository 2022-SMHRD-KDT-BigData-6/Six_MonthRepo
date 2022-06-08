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
		//1.�Ķ���� ����
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		//2. boardDelete()�޼��� ����� 
		BoardDAO dao = new BoardDAO();
		
		//3. BoardDAO�� �ִ� boardDelete()�޼��� ��� 
		int cnt = dao.boardDelete(pnum);
		//4. ���� ���� �Ǵ��� ������ �̵� 
		String nextPage = "GoMain";
		
		response.sendRedirect("GoMain");
	}

}
