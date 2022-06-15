package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();


		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPw(pw);

		MemberDAO dao = new MemberDAO();
		MemberVO result = dao.login(vo);

		if (result != null) {
			// �α��� ���� session�� ����
			HttpSession session = request.getSession();
			session.setAttribute("vo", result);
			out.println("<script>"); 
			out.println("alert('�α��� �Ǿ����ϴ�'); location.href='GoMain';");
			out.println("</script>"); 
			out.close();
			// �α��� �����ϸ� ������������
			response.sendRedirect("GoMain");
		} else {
			out.println("<script>"); 
			out.println("alert('���̵� �Ǵ� ��й�ȣ�� �߸��Է��߽��ϴ�.'); location.href='login.jsp';");
			out.println("</script>"); 
			out.close();
			// �α��� �����ϸ� �α�����������
			response.sendRedirect("login.jsp");
		}

	}

}
