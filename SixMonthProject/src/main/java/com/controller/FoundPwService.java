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

@WebServlet("/FoundPwService")
public class FoundPwService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8");

		String email = request.getParameter("email");
		String id=((MemberVO)session.getAttribute("vo")).getId();
		
		MemberVO vo = new MemberVO();
		vo.setEmail(email);;

		MemberDAO dao = new MemberDAO();

		MemberVO result = dao.confirmEmail(email);

		if (result!= null) {
			session.setAttribute("id", id);
			
			request.setAttribute("pw", result.getPw());
			RequestDispatcher rd = request.getRequestDispatcher("foundPW.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("foundPW.jsp");
		}

	}

}
