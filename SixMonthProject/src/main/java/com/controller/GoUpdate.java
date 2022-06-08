package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;

@WebServlet("/GoUpdate")
public class GoUpdate extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      
      
      //1. Pnum 파라미터 수집 
      int pnum = Integer.parseInt(request.getParameter("pnum"));
      //2.dao.boardView(int Pnum); 사용
      BoardDAO dao = new BoardDAO();
      
      
      BoardVO view = dao.boardVO(pnum);
      
      //3.객체바인딩
      request.setAttribute("view", view);

      
      //forward 이동 
      String nextPage ="updateBoard.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(nextPage);
      rd.forward(request,response);
   }

}