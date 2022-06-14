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

@WebServlet("/FindIdService")
public class FindIdService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String email = request.getParameter("email");

		MemberVO vo = new MemberVO();
		vo.setEmail(email);

		MemberDAO dao = new MemberDAO();

		MemberVO cnt = dao.findID(email);

		if (cnt != null) {
			request.setAttribute("id",cnt.getId());
			RequestDispatcher rd = request.getRequestDispatcher("foundID.jsp");
			rd.forward(request, response);

		} else {
			response.sendRedirect("foundID.jsp");
		}

	}

}
