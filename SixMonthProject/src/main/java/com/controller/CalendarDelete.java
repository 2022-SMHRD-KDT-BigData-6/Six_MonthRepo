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
		
		System.out.println("���� title : " + caltitle);
		System.out.println("���� ���۳�¥ : " + start1);
		System.out.println("���� ���ᳯ¥ : " + end1);
		
		// ajax������ cvo�� �� �ֱ�
		CalendarVO cvo = new CalendarVO();
		cvo.setCaltitle(caltitle);
		cvo.setStart1(start1);
		cvo.setEnd1(end1);
		
		// cdao�� calendarDelete�޼ҵ带 �̿��� DB�� �� ������
		CalendarDAO cdao = new CalendarDAO();
		int cnt = cdao.calendarDelete(cvo);
	
		if(cnt>0) {
			System.out.println("���� ���� ����");
		}else {
			System.out.println("���� ���� ����");
			}
		
	}

}
