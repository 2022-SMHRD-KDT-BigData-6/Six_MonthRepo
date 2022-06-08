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
		<header id="header" class="alt">
			<a href="index.jsp"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<h1>Smhrd커뮤니티</h1>
			<p> 빅데이터 분석서비스 개발자과정 </p>
		</header>



	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>로그인</h2>
			</header>
			<ul class="features">
				<li>
				<input type="text"	placeholder="ID을 입력하세요"> 
				<input type="password"	placeholder="PW를 입력하세요">
				<input type="submit" value="로그인"	class="button fit">
				</li>
			</ul>
		</section>


		<footer class="major">
			<ul class="actions special">
				<li>
				<a href="findID_PW.jsp">ID/PW 찾기</a>
				</li>
				<li>
				<a href="signIn.jsp">회원가입</a>
				</li>
			</ul>
		</footer>

	</div>
</body>
</html>