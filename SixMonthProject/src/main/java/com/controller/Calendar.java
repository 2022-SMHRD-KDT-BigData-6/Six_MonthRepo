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

		// DB���� calendar ������ ���� list ��ü���� - ���ؼ�
		List<CalendarVO> calendarList = new CalendarDAO().calendarList();
		
		Gson gson = new Gson();
		String jsonarray = gson.toJson(calendarList);
		
		
		// Ŭ���̾�Ʈ���� �����ֱ�!!(�����ִ¹�� �����!!)
		response.setContentType("application/json;charset=utf-8"); // ������ �����Ͱ� json�̶�� ������ֱ�
		PrintWriter out = response.getWriter();
		out.print(jsonarray);
	
	}

}
