package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberVO;

@WebServlet("/ChangePW")
public class ChangePW extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		request.setCharacterEncoding("UTF-8");

		// 새 비밀번호
		String newPW = request.getParameter("pw");

		// 해당 유저를 구분할 수 있는 정보추출
		String id = ((MemberVO) session.getAttribute("vo")).getId();

		MemberVO vo = new MemberVO();
		vo.setPw(newPW);
		vo.setId(id);

		MemberDAO dao = new MemberDAO();

		int cnt = dao.changePW(vo);

		if (cnt > 0) {
			request.setAttribute("id", vo.getId());
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);

		} else {
			response.sendRedirect("foundPW.jsp");
		}

	}

}
