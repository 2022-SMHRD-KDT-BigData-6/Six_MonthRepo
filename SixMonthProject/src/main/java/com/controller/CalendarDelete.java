package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CalendarDAO;
import com.model.CalendarVO;

@WebServlet("/CalendarDelete")
public class CalendarDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//int cnum = Integer.parseInt(request.getParameter("cnum"));
		String caltitle = request.getParameter("title");
		String start1 = request.getParameter("start");
		String end1 = request.getParameter("end"); 
		
		System.out.println("일정 title : " + caltitle);
		System.out.println("일정 시작날짜 : " + start1);
		System.out.println("일정 종료날짜 : " + end1);
		
		// ajax파일을 cvo에 값 넣기
		CalendarVO cvo = new CalendarVO();
		cvo.setCaltitle(caltitle);
		cvo.setStart1(start1);
		cvo.setEnd1(end1);
		
		// cdao의 calendarDelete메소드를 이용해 DB에 값 보내기
		CalendarDAO cdao = new CalendarDAO();
		int cnt = cdao.calendarDelete(cvo);
	
		if(cnt>0) {
			System.out.println("일정 삭제 성공");
		}else {
			System.out.println("일정 삭제 실패");
			}
		
	}

}
