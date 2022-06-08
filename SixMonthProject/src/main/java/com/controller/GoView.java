package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;

@WebServlet("/GoView")
public class GoView extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //1.Pnum �Ķ���� ����
      int pnum = Integer.parseInt(request.getParameter("pnum"));
      
      //2DA�� boardView()�޼��带 ���
      BoardDAO dao = new BoardDAO();
      BoardVO view = dao.boardVO(pnum);
      
      // 3, 1���� �� ������ ==> BoardVO�� ��ü ���ε�
       //List<BoardVO>list = dvo.boardList();
      request.setAttribute("view",view);
      
      
      //forward ������� �̵� 
      String nextPage ="viewBoard.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(nextPage);
      rd.forward(request,response);
      
   }

}