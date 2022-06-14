package com.controller;

import java.io.IOException;
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
		
		int pnum = Integer.parseInt(request.getParameter("pnum"));
	    String id = request.getParameter("id");
	    
	    GoodVO gvo = new GoodVO();
	    gvo.setId(id);
	    gvo.setPnum(pnum);
	    
	    BoardDAO dao = new BoardDAO();
	    
	    int resultInsert = dao.boardGoodInsert(gvo);
	    
	    int goodCheck = dao.boardGoodCheck(gvo);
	    
	    String nextPage = null;
	    if(goodCheck > 0) {
	    	nextPage = "GoView?pnum="+pnum+"&cnt=0";
	    }else {
	    	if(resultInsert>0) {
	    		dao.boardGoodCount(pnum);
	    		nextPage = "GoView?pnum="+pnum+"&cnt=0";
	    	}else{
	    		nextPage = "GoView?pnum="+pnum+"&cnt=0";
	    	}
	    }
	    
	    response.sendRedirect(nextPage);

		
	}

}
