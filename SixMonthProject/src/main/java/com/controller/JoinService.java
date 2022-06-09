package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberVO;

// ȸ������ ���
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0. ���ڵ�
		request.setCharacterEncoding("UTF-8");

		// 1. ���� ��������
		// id pw ppw email input name nick
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");

		String ppw = request.getParameter("ppw");
		String input = request.getParameter("input");
		
		// (1) �̸����� �����Ǹ� res���� 1�� �Ѿ��, 1�� �ƴ� ���� join�� �Ǹ� �ȵ�
		
		// (2) pw = ppw�� ���� ��ġ�Ǿ�� ��
		if(pw != ppw) {
			System.out.println("�н����尪 ��ġ���� ����");
		}
		// (3) ���̵��� ���� ���� �����Ϳ� �ߺ��Ǿ�� �ȵ� --> �� �� sql���� ���� �����ְ�� ����
		// (4) �г����� ���� ���� �����Ϳ� �ߺ��Ǿ�� �ȵ�
		// (5) �̸����� ���� ���� �����Ϳ� �ߺ��Ǿ�� �ȵ�
		
		
		
		
		// -> ��� ������ �������� ���� db�� �־���
		// ������ �������� ������ �� â�� �Ѱ����� �ʰ�,, ȸ������ ���� �Ǵ� ���޽��� ������
		// + ��� ���� �ԷµǾ� ���۵ƴ��� Ȯ���ϴ� ����
		// 1) ������������ �״�� �����ֱ� (Join.jsp�� �̵�)
		// 2) ȸ�����ԵǸ� �ȵǰ�
		// 3) � �����Ͱ� �Էµ����ʾҴ��� �˸�â�� ���ų� �Էµ��������� ������

		// 2. ������ ������ ���� ������ ����
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPw(pw);
		vo.setEmail(email);
		vo.setNick(nick);

		// 3. ȸ������ : db�� ������ �ֱ�
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insert(vo);

		// 4. ������ �̵�
		if (cnt > 0) {
			System.out.println("ȸ�� ���� ����");

			// ȸ������ �����ϸ� �α��� �������� �̵�
			request.setAttribute("id", id);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			System.out.println("ȸ�� ���� ����");
			response.sendRedirect("Main.jsp");
		}

	}

}
