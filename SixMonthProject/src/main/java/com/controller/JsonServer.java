package com.controller;

import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * Servlet implementation class JsonServer
 */
@WebServlet("/JsonServer")
public class JsonServer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// main method 안에있는 코드들
		JSONParser parser = new JSONParser();

		
		
		// //1. 인코딩
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html' charset=UTF-8");
		// 2. pritWriter 객체 생성
		
		String data = request.getParameter("data");
		PrintWriter out = response.getWriter();

		try {
			Object obj = parser.parse(new FileReader("C://Users//GITCT//Crawling/data.json"));
			JSONObject jsonObject = (JSONObject) obj;
			out.print(jsonObject);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
