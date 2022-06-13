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

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(pw);
		System.out.println(email);
		System.out.println(nick);

		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPw(pw);
		vo.setEmail(email);
		vo.setNick(nick);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.insert(vo);

		if (cnt > 0) {
			System.out.println("회원 가입 성공");

		} else if(cnt==0) {
			System.out.println("회원 가입 실패");
		} else {
			System.out.println("나도 모르는 오류..");
		}

	}

}
