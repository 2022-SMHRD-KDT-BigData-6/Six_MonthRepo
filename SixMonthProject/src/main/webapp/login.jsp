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
<title>로그인</title>

</head>
<body class="login">
<%
	MemberVO vo=(MemberVO)session.getAttribute("vo");
%>
		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<h1>Smhrd커뮤니티</h1>
			<p> 빅데이터 분석서비스 개발자과정 </p>
		</header>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>로그인</h2>
			</header>
			
			<!-- 로그인 form -->
			<form action=LoginService method="post">
			<ul class="features">
				<li>
				<span class="id"></span>
				<input type="text" id="id" name="id" placeholder="ID을 입력하세요"> 
				<input type="password" id="pw" name="pw" placeholder="PW를 입력하세요">
				<input type="submit" value="로그인" class="button fit" >
				</li>
			</ul>
			</form>
		</section>

		<footer class="major">
			<ul class="actions special">
				<li>
				<a href="findID.jsp">ID찾기</a>
				</li>
				<li>
				<a href="findPW.jsp">PW찾기</a>
				</li>
				<li>
				<a href="Join.jsp">회원가입</a>
				</li>
			</ul>
		</footer>

	</div>

	
</body>
</html>