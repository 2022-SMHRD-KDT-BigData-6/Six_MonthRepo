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

// ȸ������ ���
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// !! signln.jsp(����������)����� action,name,value�� �����ֱ�-> o
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
			// request��ü�� id�� ��Ƽ� login.jsp�̵��ϰԲ� �����
			// !! login.jsp(�α��μ���������)���� request������ֱ�
			request.setAttribute("id", id);
			// ȸ������ �����ϸ� �α��� �������� �̵� 
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("Main.jsp");
		}
	}

}
