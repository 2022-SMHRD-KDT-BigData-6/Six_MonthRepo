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

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		String savePath = request.getServletContext().getRealPath("image");
		
		int maxSize = 5 * 1024 * 1024;
		
		String encoding = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// 0. ���ڵ�
		request.setCharacterEncoding("UTF-8");
		
		// 1. �Ķ���� ����
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		int pnum = Integer.parseInt(multi.getParameter("pnum"));
		
		// ���� �̸� ��������
		String fileName = multi.getFilesystemName("file");

		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setContent(content);
		bvo.setPnum(pnum);
		bvo.setFileName(fileName);

		// 2. DAO�޼��� �̿��ؼ� DB�� ����
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardUpdate(bvo);

		// 3. ���� ���� ����
		String nextPage = "";
		if (cnt > 0) {
			nextPage = "GoView?pnum="+pnum+"&cnt=1";
		} else {
			nextPage = "GoUpdate?pnum="+pnum+"&cnt=1";
		}
		response.sendRedirect(nextPage);

	}

}
