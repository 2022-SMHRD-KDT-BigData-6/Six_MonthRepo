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
<title>My Page</title>

</head>
<body class="login">

<%
	MemberVO vo=(MemberVO)session.getAttribute("vo");
%>

		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
		</header>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>내 정보</h2>
			</header>
			
			<a href="changePW.jsp">비밀번호 변경</a>
			<br><br>
			<a href="changeNick.jsp">닉네임 변경</a>
			<br><br>
			<a href="deleteMember.jsp">회원탈퇴</a>
			<br><br>
			<a href="GoMain" class="button">메인으로</a>

		</section>


	</div>
</body>
</html>