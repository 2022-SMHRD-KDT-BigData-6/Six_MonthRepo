package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.GoodVO;

@WebServlet("/GoodInsertService")
public class GoodInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		int pnum = Integer.parseInt(request.getParameter("pnum"));
	    String id = request.getParameter("id");
	    
	    System.out.println(pnum);
	    System.out.println(id);
	    
	    GoodVO gvo = new GoodVO();
	    gvo.setId(id);
	    gvo.setPnum(pnum);
	    
	    BoardDAO dao = new BoardDAO();
	    
	   
	    int goodCheck = dao.boardGoodCheck(gvo);
	    
	    // 알림창 띄우기 위해 PrintWriter 객체 선언
	    PrintWriter out = response.getWriter();
	    
	    String nextPage = "GoView?pnum="+pnum+"&cnt=0";
	    if(goodCheck > 0) {
	    	out.println("<script>");
	    	out.println("alert('이미 추천하였습니다.'); location.href='GoView?pnum="+pnum+"&cnt=0';");
	    	out.println("</script>");
	    	out.close();
	    }else {
	    	int resultInsert = dao.boardGoodInsert(gvo);
	    	if(resultInsert>0) {
	    		dao.boardGoodCount(pnum);
	    		response.sendRedirect(nextPage);
	    	}else{
	    		response.sendRedirect(nextPage);
	    	}
	    }
	    
	    
	    
	   

		
	}

}
