package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;

/**
 * Servlet implementation class Goupdate
 */
@WebServlet("/Goupdate")
public class Goupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//1. Pnum �Ķ���� ���� 
		int Pnum = Integer.parseInt(request.getParameter("Pnum"));
		//2.dao.boardView(int Pnum); ���
		BoardDAO dao = new BoardDAO();
		
		
		BoardVO bvo = dao.boardVO(Pnum);
		
		//3.��ü���ε�
		request.setAttribute("bvo", bvo);
		
		
		
	
	//forward �̵� 
	String nextPage ="updateBoard.jsp";
	RequestDispatcher rd = request.getRequestDispatcher(nextPage);
	rd.forward(request,response);
	}

}
