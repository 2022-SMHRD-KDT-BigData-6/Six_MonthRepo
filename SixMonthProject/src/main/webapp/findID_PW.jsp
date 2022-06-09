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
<title>ID/PW찾기</title>
</head>
<body class="login">
	<%
	MemberVO vo=(MemberVO)session.getAttribute("vo");
	%>
	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>ID/PW찾기</h2>
				</header>
				
				<form action="">
					<ul class="features">
							<li>
								<h3>ID찾기</h3> 
								<input type="text" placeholder="Email을 입력하세요"> 
								<input type="submit" value="ID찾기" class="button fit">
								<%if(vo.getEmail().length()<1){ 
								
								
								}%>
								
							</li>
							<li>
								<h3>PW찾기</h3>
								<input type="text" placeholder="가입한 ID를 입력하세요">
								<input type="submit" value="PW찾기" class="button fit">
							</li>
					</ul>
				</form>
				
				<footer class="major">
					<ul class="actions special">
						<li><a href="login.jsp">뒤로가기</a></li>
					</ul>
				</footer>
			</section>
	</div>
</body>
</html>