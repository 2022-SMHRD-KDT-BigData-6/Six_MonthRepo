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
<%-- 
<%
	MemberVO vo=(MemberVO)session.getAttribute("vo");
%>
 --%>
		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
		</header>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>내 정보</h2>
			</header>
			
			<!-- 로그인 form -->
			<form action=pwChange method="post">
			<ul class="features">
				<li>
				<span style="text-align: left">새 비밀번호</span>
				<input type="password" name="pw" placeholder="새 비밀번호">
				<input type="password" name="pw" placeholder="새 비밀번호 확인">
				<span style="text-align: left">현재 비밀번호</span>
				<input type="password" name="pw" <%=(String)session.getAttribute("pw") %>placeholder="현재 비밀번호">
				<input type="submit" value="비밀번호변경"	class="button fit">
				</li>
			</ul>
			</form>
			
			<form action=nickChange method="post">
			<ul class="features">
				<li>
				<span style="text-align: left">닉네임</span>
				<input type="text" name="text" placeholder="기존아이디">
				<input type="submit" value="닉네임변경"	class="button fit">
				</li>
			</ul>
			
			
			</form>
			
			<ul class="features">
				<li>
				<a href="GoMain" class="button fit">메인으로</a>
				</li>
			</ul>
			
		</section>


	</div>
</body>
</html>