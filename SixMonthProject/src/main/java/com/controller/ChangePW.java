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

@WebServlet("/ChangePW")
public class ChangePW extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		// 새 비밀번호 
		String newPW = request.getParameter("newPW");

		MemberVO vo = new MemberVO();
		// 해당 유저를 구분할 수 있는 정보추출 
		String id=((MemberVO)request.getSession().getAttribute("vo")).getId();
		vo.setId(id);
		vo.setPw(newPW);
		
		
		MemberDAO dao = new MemberDAO();

		int cnt = dao.changePW(vo);

		if (cnt >0) {
				request.setAttribute("newPW", newPW);
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);

			} else {
				response.sendRedirect("changePW.jsp");
			}
		
		
		
		
		
		
		
		
		
		
		
	}

}
