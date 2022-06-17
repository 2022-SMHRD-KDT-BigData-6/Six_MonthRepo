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

	<!-- header -->		
		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
		</header>


	<div id="wrapper" align="center" style="width:20em">
	
		<div id="main">
		
			<section id="content" class="main">
				<header class="major">
					<h2>내 정보</h2>
				</header>
			
					<section id="intro" class="main">
					<div class="spotlight">
						<div class="content align-left">
							<ul style="list-style: none !important;">
								<li style="padding-bottom:0.5em">
									<a href="changePW.jsp" style="border-bottom: none">비밀번호 변경</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="changeNick.jsp" style="border-bottom: none">닉네임 변경</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="deleteMember.jsp" style="border-bottom: none">회원탈퇴</a>
								</li>
								<li style="padding-bottom:0.5em">
									<a href="GoMain" style="border-bottom: none">메인으로</a>
								</li>
							</ul>
						</div>
					</div>
					</section>
			
			</section>
		</div>

	</div>
</body>
</html>