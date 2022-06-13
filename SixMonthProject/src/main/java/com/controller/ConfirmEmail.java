package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberVO;

@WebServlet("/ConfirmEmail")
public class ConfirmEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");

		MemberVO vo = new MemberVO();
		vo.setId(id);

		MemberDAO dao = new MemberDAO();

		MemberVO cnt = dao.findPW(id);

		if (cnt != null) {
			request.setAttribute("email", cnt.getEmail());
			RequestDispatcher rd = request.getRequestDispatcher("emailCheck.jsp");
			rd.forward(request, response);

		} else {
			response.sendRedirect("emailCheck.jsp");
		}

	}

}
