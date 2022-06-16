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

				// Ajax�� ������ ������ ��������
				String id = "junseong";
				String caltitle = request.getParameter("title");
				String start1 = request.getParameter("start");
				String end1 = request.getParameter("end");
				String textcolor = request.getParameter("textcolor");
				String backgroundcolor = request.getParameter("backgroundcolor");
				String bordercolor = request.getParameter("backgroundcolor");
				
				System.out.println("���� �޾ƿ� title : " + caltitle);
				System.out.println("���� �޾ƿ� start : " + start1);
				System.out.println("���� �޾ƿ� end : " + end1);
				System.out.println("���� �޾ƿ� textcolor : " + textcolor);
				System.out.println("���� �޾ƿ� bgcolor : " + backgroundcolor);
				
				
				// �޾ƿ� �����͸� vo�� �ʱ�ȭ
				CalendarVO cvo = new CalendarVO();
				cvo.setId(id);
				cvo.setCaltitle(caltitle);
				cvo.setStart1(start1);
				cvo.setEnd1(end1);
				cvo.setBackgroundcolor(backgroundcolor);
				cvo.setBordercolor(bordercolor);
				cvo.setTextcolor(textcolor);
				
				// DAO�� �̿��ؼ� DB�� �����ϴ� �޼ҵ� ����
				CalendarDAO cdao = new CalendarDAO();
				int cnt = cdao.calendarInsert(cvo);
				
				// cnt ����� Ȯ��
				if(cnt>0) {
					System.out.println("������ϼ���");
				}else {
					System.out.println("������Ͻ���");
				}
	}

}
