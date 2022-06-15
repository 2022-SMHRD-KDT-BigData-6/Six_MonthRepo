package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;

@WebServlet("/emailCheck")
public class emailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String email = request.getParameter("email");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.emailCheck(email);
				
		// count된 값이 1이면 중복임을 알려줌(가입 거절)
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}

}
