package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ConfirmService")
public class ConfirmService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String input = request.getParameter("input");
		String result = request.getParameter("result");
//		System.out.println("데이터 잘 받아옴! "+input+result);
		
		int res = 0;
		if(input.equals(result)) {
			// "인증되었습니다";
			res = 1;
		} else {
			// "이메일 인증이 실패하였습니다 다시 입력해주세요";
			res = 0;
		}

		PrintWriter out = response.getWriter();
		out.print(res);
	}

}
