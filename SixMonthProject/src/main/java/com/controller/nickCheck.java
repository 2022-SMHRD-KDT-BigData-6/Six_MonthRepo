package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;


@WebServlet("/nickCheck")
public class nickCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// nick �ߺ� üũ
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String nick = request.getParameter("nick");
		System.out.println("�г��� �� �Ѿ�Դ�?" + nick);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.nickCheck(nick);
		System.out.println(cnt);
		
		// count�� ���� 1 �̻��̸� ���̵� �ߺ����� �˷���(���� ����)
		PrintWriter out = response.getWriter();
		out.print(cnt);
		
	}

}
