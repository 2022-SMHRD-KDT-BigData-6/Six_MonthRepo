package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CalendarDAO;
import com.model.CalendarVO;

@WebServlet("/CalendarInsert")
public class CalendarInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				// Ajax로 보내준 데이터 가져오기
				String id = "junseong";
				String caltitle = request.getParameter("title");
				String start1 = request.getParameter("start");
				String end1 = request.getParameter("end");
				String textcolor = request.getParameter("textcolor");
				String backgroundcolor = request.getParameter("backgroundcolor");
				String bordercolor = request.getParameter("backgroundcolor");
				
				System.out.println("내가 받아온 title : " + caltitle);
				System.out.println("내가 받아온 start : " + start1);
				System.out.println("내가 받아온 end : " + end1);
				System.out.println("내가 받아온 textcolor : " + textcolor);
				System.out.println("내가 받아온 bgcolor : " + backgroundcolor);
				
				
				// 받아온 데이터를 vo에 초기화
				CalendarVO cvo = new CalendarVO();
				cvo.setId(id);
				cvo.setCaltitle(caltitle);
				cvo.setStart1(start1);
				cvo.setEnd1(end1);
				cvo.setBackgroundcolor(backgroundcolor);
				cvo.setBordercolor(bordercolor);
				cvo.setTextcolor(textcolor);
				
				// DAO를 이용해서 DB에 저장하는 메소드 생성
				CalendarDAO cdao = new CalendarDAO();
				int cnt = cdao.calendarInsert(cvo);
				
				// cnt 결과값 확인
				if(cnt>0) {
					System.out.println("일정등록성공");
				}else {
					System.out.println("일정등록실패");
				}
	}

}
