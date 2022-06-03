package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberVO;

// 회원가입 기능
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// !! main.jsp(메인페이지)생기면 action,name,value값 정해주기
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");

		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPw(pw);
		vo.setEmail(email);
		vo.setNick(nick);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.insert(vo);

		if (cnt > 0) {
			// request객체에 id을 담아서 join_success.jsp이동하게끔 만든것
			// !! join_success.jsp(로그인성공페이지)에서 request만들어주기
			request.setAttribute("id", id);
			RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("main");
		}
	}

}
