package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GoWriter
 */
@WebServlet("/GoWriter")
public class GoWriter extends HttpServlet {
private static final long serialVersionUID = 1L;
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	 // forward�̵�
	String nextPage ="writerBoard.jsp";
	RequestDispatcher rd = request.getRequestDispatcher(nextPage);
	rd.forward(request,response);
	
	}

}
