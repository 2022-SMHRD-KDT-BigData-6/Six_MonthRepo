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

@WebServlet("/nickChange")
public class nickChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();

		request.setCharacterEncoding("UTF-8");

		// �� �г���
		String newNick = request.getParameter("nick");

		// �ش� ������ ������ �� �ִ� ��������
		String id = ((MemberVO) session.getAttribute("vo")).getId();
		
		MemberVO vo = new MemberVO();
		vo.setNick(newNick);
		vo.setId(id);
		
		System.out.println("���ο� �г���"+newNick);
		System.out.println(vo.getNick());
		
		MemberDAO dao = new MemberDAO();

		int cnt = dao.changeNICK(vo);
		
		if (cnt > 0) {
			request.setAttribute("id", vo.getId());
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);

		} else {
			response.sendRedirect("changeNick.jsp");
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}
