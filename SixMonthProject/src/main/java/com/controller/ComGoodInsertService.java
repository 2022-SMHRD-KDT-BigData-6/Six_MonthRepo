package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.ComGoodVO;
import com.model.GoodVO;

@WebServlet("/ComGoodInsertService")
public class ComGoodInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html; charset=UTF-8");
		
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		int cnum = Integer.parseInt(request.getParameter("cnum"));
	    String id = request.getParameter("id");
	    
	    System.out.println(pnum);
	    System.out.println(cnum);
	    System.out.println(id);
	    
	    ComGoodVO cgvo = new ComGoodVO();
	    cgvo.setId(id);
	    cgvo.setPnum(pnum);
	    cgvo.setCnum(cnum);
	    
	    BoardDAO dao = new BoardDAO();
	    
	   
	    int goodCheck = dao.commentGoodCheck(cgvo);
	    
	    // 알림창 띄우기 위해 PrintWriter 객체 선언
	    PrintWriter out = response.getWriter();
	    
	    String nextPage = "GoView?pnum="+pnum+"&cnt=0";
	    if(goodCheck > 0) {
	    	out.println("<script>");
	    	out.println("alert('이미 추천하였습니다.'); location.href='GoView?pnum="+pnum+"&cnt=0';");
	    	out.println("</script>");
	    	out.close();
	    }else {
	    	int resultInsert = dao.commentGoodInsert(cgvo);
	    	if(resultInsert>0) {
	    		dao.commentGoodCount(cgvo);
	    		response.sendRedirect(nextPage);
	    	}else{
	    		response.sendRedirect(nextPage);
	    	}
	    }
		
		
		
		
		
		
		
	}

}
