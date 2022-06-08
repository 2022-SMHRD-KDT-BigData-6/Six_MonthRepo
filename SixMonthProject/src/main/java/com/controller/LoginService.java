package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		com.model.MemberVO mvo = new com.model.MemberVO();
		mvo.setId(id);
		mvo.setPw(pw);

		com.model.MemberDAO dao = new com.model.MemberDAO();
		com.model.MemberVO result = dao.login(mvo);

		if (result != null) {
			// 로그인 성공하면 메인페이지로

			HttpSession session = request.getSession();
			session.setAttribute("mvo", result);
		} else {
			// 로그인 실패하면 로그인페이지로
			response.sendRedirect("login");
		}

	}

}
