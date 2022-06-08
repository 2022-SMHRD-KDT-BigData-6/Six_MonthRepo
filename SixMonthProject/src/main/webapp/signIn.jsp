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
<title>회원가입</title>
</head>
<body class="login">

	<div id="wrapper" align="center">
	
			<header class="major">
					<br><br>
					<a href="index.jsp"><span class="logo"><img src="image/logo.big.png"/></span></a>
					<h2>회원가입</h2>
			</header>
		
			<section id="first" class="main special">
				<ul class="features">
					<li>
						<h3>아이디</h3> 
						<input type="text" placeholder="ID을 입력하세요"> 
						<h3>비밀번호</h3> <input type="password" placeholder="PW를 입력하세요">
						<h3>비밀번호확인</h3> <input type="password" placeholder="PW를 입력하세요">
						<h3>Email</h3> <input type="text" placeholder="Email을 입력하세요">
						<a>인증번호 전송</a> <input type="text" placeholder="인증번호를 입력하세요">
						<h3>이름</h3> <input type="text" placeholder="이름을 입력하세요">
						<h3>닉네임</h3> <input type="text" placeholder="닉네임을 입력하세요">
					</li>
				</ul>
				<footer class="major">
					<ul class="actions special">
						<li><input type="submit" value="JoinUs" class="button fit"></li>
					</ul>
				</footer>
			</section>
	</div>
</body>
</html>