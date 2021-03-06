package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;
import com.model.CommentVO;


@WebServlet("/ComInsertService")
public class ComInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String nick = request.getParameter("nick");
		String id = request.getParameter("id");
		String contents = request.getParameter("contents");
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		String anony = request.getParameter("anony");
		
		if(anony == null) {
			anony = "off";
		}
		
		System.out.println(anony);
		
		CommentVO cvo = new CommentVO();
		cvo.setPnum(pnum);
		cvo.setNick(nick);
		cvo.setId(id);
		cvo.setComments(contents);
		cvo.setAnony(anony);
		
		System.out.println(cvo);
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.commentInsert(cvo);
		
		String nextPage = "GoView?pnum="+pnum+"&cnt=0";
		if(cnt>0) {
			response.sendRedirect(nextPage);
		}else{
			response.sendRedirect(nextPage);
		}
		
	}

}
