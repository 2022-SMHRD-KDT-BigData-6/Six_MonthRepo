package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


@WebServlet("/logout")
public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 로그아웃 버튼 눌렀을때 넘어오는 페이지(우리 눈에 안보임)
		HttpSession session = request.getSession();
		session.removeAttribute("vo");
		response.sendRedirect("Main.jsp");
	
	
	
	}

}
