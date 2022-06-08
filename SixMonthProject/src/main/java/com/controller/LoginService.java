package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPw(pw);

		MemberDAO dao = new MemberDAO();
		MemberVO result = dao.login(vo);

		if (result != null) {
			// �α��� ���� session�� ����
			HttpSession session = request.getSession();
			session.setAttribute("vo", result);
			// �α��� �����ϸ� ������������
			response.sendRedirect("index.jsp");
		} else {
			// �α��� �����ϸ� �α�����������
			response.sendRedirect("login.jsp");
		}

	}

}
