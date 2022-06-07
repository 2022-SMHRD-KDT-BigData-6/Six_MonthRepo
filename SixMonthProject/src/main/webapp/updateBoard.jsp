<%@page import="com.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<title>글 수정</title>
</head>
<body>
	<%
		BoardVO view = (BoardVO)request.getAttribute("view");
	%>
	<div id="board">
	<h1>게시글 수정페이지</h1>
		<form action="UpdateService" method="post">
			<table id="list">
				<tr>
					<td>제목</td>
					<td>
						<%-- hidden type 이용하면 input태그를 숨길 수 있다. --%>
						<input type="hidden" name = "pnum" value="<%=view.getPnum() %>">
						<input type="text" name = "title" value="<%=view.getTitle() %>">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<%-- 작성자를 출력하세요. --%>
					<%-- <input disabled type="text" value="<%=view.getWriter()%>"> --%>
					<%-- disabled 속성을 이용해서 수정을 방지,
						 form태그로 보내지지 않음
					 --%>
					<td><%= view.getId() %></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name = "content" rows="10" style="resize: none;"><%= view.getContent() %></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2"> 
					<input type="submit" value="수정하기">
					<a href="GoMain"><button>취소</button></a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>