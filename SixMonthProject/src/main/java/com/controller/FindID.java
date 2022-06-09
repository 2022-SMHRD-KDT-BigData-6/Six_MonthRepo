package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BoardDAO;
import com.model.MemberDAO;
import com.model.MemberVO;

@WebServlet("/findID")
public class FindID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String id = request.getParameter("id");

		MemberVO vo = (MemberVO) request.getAttribute("vo");
		vo.getEmail();
		vo.getId();

		response.sendRedirect("findID_PW");
		
//		if (vo != null) {
//
//			response.sendRedirect("findID_PW.jsp");
//
//		} else {
//			response.sendRedirect("login.jsp");
//
//		}

	}

}
