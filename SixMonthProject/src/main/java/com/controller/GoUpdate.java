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
      
      
      
      //1. Pnum �Ķ���� ���� 
      int pnum = Integer.parseInt(request.getParameter("pnum"));
      //2.dao.boardView(int Pnum); ���
      BoardDAO dao = new BoardDAO();
      
      
      BoardVO view = dao.boardVO(pnum);
      
      //3.��ü���ε�
      request.setAttribute("view", view);

      
      //forward �̵� 
      String nextPage ="updateBoard.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(nextPage);
      rd.forward(request,response);
   }

}