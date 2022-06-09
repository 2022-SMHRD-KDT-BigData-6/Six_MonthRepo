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

		// 0. 인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 변수 가져오기
		// id pw ppw email input name nick
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");

		String ppw = request.getParameter("ppw");
		String input = request.getParameter("input");
		
		// (1) 이메일이 인증되면 res값이 1로 넘어옴, 1이 아닌 값은 join이 되면 안됨
		
		// (2) pw = ppw의 값이 일치되어야 함
		if(pw != ppw) {
			System.out.println("패스워드값 일치하지 않음");
		}
		// (3) 아이디의 값이 기존 데이터와 중복되어서는 안됨 --> 셋 다 sql문을 통해 막아주고는 있음
		// (4) 닉네임의 값이 기존 데이터와 중복되어서는 안됨
		// (5) 이메일의 값이 기존 데이터와 중복되어서는 안됨
		
		
		
		
		// -> 모든 조건을 만족했을 때만 db에 넣어줌
		// 조건을 만족하지 못했을 때 창은 넘겨주지 않고,, 회원가입 실패 또는 경고메시지 보여줌
		// + 모든 값이 입력되어 전송됐는지 확인하는 절차
		// 1) 가입페이지에 그대로 남아있기 (Join.jsp로 이동)
		// 2) 회원가입되면 안되고
		// 3) 어떤 데이터가 입력되지않았는지 알림창을 띄우거나 입력되지않음을 보여줌

		// 2. 데이터 전송을 위해 데이터 묶기
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPw(pw);
		vo.setEmail(email);
		vo.setNick(nick);

		// 3. 회원가입 : db에 데이터 넣기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insert(vo);

		// 4. 페이지 이동
		if (cnt > 0) {
			System.out.println("회원 가입 성공");

			// 회원가입 성공하면 로그인 페이지로 이동
			request.setAttribute("id", id);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			System.out.println("회원 가입 실패");
			response.sendRedirect("Main.jsp");
		}

	}

}
