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
<title>글 내용보기</title>
</head>
<body>
	<%
		// request영역에서 데이터 꺼내오기
		// 페이지에 출력하기
		BoardVO view = (BoardVO)request.getAttribute("view");
	%>

	<div id="board">
		<table id="list">
			<tr>
				<td>제목</td>
				<td>
					<%--게시글 제목 출력 --%>
					<%=view.getTitle()%>
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					<%--작성자 출력 --%>
					<%= view.getId() %>
				</td>
			</tr>
			<tr>
				<td colspan="2">내용</td>
			</tr>
			<tr>
				<td colspan="2">
					<%--게시글 내용 출력 --%>
					<%if(view.getFileName() != null){ %>
					<img alt="" src="image/<%= view.getFileName()%>">
					<%} %>
					<br>
					<%= view.getContent() %>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="GoUpdate?pnum=<%=view.getPnum()%>"><button>수정하기</button></a>
					<a href="GoMain?page=1"><button>뒤로가기</button></a>
				</td>
			</tr>
		</table>
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