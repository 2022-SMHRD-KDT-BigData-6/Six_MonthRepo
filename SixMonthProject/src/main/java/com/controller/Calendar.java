package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.model.CalendarDAO;
import com.model.CalendarVO;
@WebServlet("/Calendar")
public class Calendar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// DB에서 calendar 정보를 담을 list 객체생성 - 김준성
		List<CalendarVO> calendarList = new CalendarDAO().calendarList();
		
		Gson gson = new Gson();
		String jsonarray = gson.toJson(calendarList);
		
		
		// 클라이언트에게 보내주기!!(보내주는방법 물어보기!!)
		response.setContentType("application/json;charset=utf-8"); // 보내는 데이터가 json이라고 명시해주기
		PrintWriter out = response.getWriter();
		out.print(jsonarray);
	
	}

}
