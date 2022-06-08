package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/InsertService")
public class InsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ���� ���� ���
		// Build������ ���ľ��� 
		// ���� OS : Linux�� �⺻ �ּ� => root/home/
		// request.getServletContext() ==> ���� ����Ǵ� ������Ʈ ���� ����
		// .getRealPath("�����̸�") ==> Ư�� ������ ���
		String savePath = request.getServletContext().getRealPath("image"); // Ȯ�强�� ������ ������ ���� ���ص���.
		
		// ���� �ִ� ũ��(���� : byte)
		int maxSize = 5 * 1024 * 1024; // 5mb
		
		// ���ڵ� ���
		String encoding = "UTF-8";
		
		// MultipartRequest ��ü ���� (writerBoard���� �Ѿ�� �ڷ� ���ڵ� type : Multipart)
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// �Ķ���� ����
		String title = multi.getParameter("title");
		String id = multi.getParameter("id");
		String content = multi.getParameter("content");
		
		// ���� �̸� ��������
		String fileName = multi.getFilesystemName("file");
		
		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setId(id);
		bvo.setContent(content);
		bvo.setFileName(fileName);
		
		// DAO�̿��ؼ� ����
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardInsert(bvo);
		
		// �������� ���� �Ŀ� ������ �̵�
		if(cnt>0) {
			response.sendRedirect("GoMain?page=1");
		}else{
			response.sendRedirect("GoWriter");
		}
	}
}
