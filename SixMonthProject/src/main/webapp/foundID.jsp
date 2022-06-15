<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/login.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<title>ID찾아주는 화면</title>
</head>
<body class="login">
<%
	String id=(String)request.getAttribute("id");
%>
	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>ID 찾기</h2>
				</header>
				
				
				<!-- 아이디 찾아주는 곳 -->
				<form action="FindIdService">
					<ul class="features">
					<li>
					<%
					if(id!=null){
					%>
						<h4>회원님의 아이디는</h4>
						<h4>"<%=id%>"</h4>
						<h4>입니다.</h4>
					<%}else{%>
						<h4>아이디 찾기를 실패하였습니다.</h4>
					<%}%>
					</li>
					</ul>
				</form>
				
				
				<footer class="major">
					<ul class="actions special">
						<li><a href="login.jsp">로그인하기</a></li>
						<li><a href="findID.jsp">아이디찾기</a></li>
					</ul>
				</footer>
			</section>
	</div>
	

</body>
</html>