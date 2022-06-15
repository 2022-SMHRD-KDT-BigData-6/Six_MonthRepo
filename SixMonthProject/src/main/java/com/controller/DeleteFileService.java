package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;

@WebServlet("/DeleteFileService")
public class DeleteFileService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int pnum = Integer.parseInt(request.getParameter("pnum"));

			
			BoardDAO dao = new BoardDAO();
			
				
			int cnt = dao.boardFileDel(pnum);
				
			String nextPage= "GoUpdate?pnum="+pnum;
			response.sendRedirect(nextPage);
	}

}
