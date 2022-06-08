<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<title>로그인</title>
<style type="text/css">
@media screen and (min-width: 900px) {
	#forms {
		width: 25%;
	}
}

@media screen and (max-width: 899px) {
	#forms {
		width: 50%;
	}
}
</style>
</head>
<body class="login">
	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>로그인</h2>
			</header>
			<ul class="features">
				<li>
				<span class="id"></span>
				<input type="text" name="id" placeholder="ID을 입력하세요"> 
				<input type="password" name="pw" placeholder="PW를 입력하세요">
				<input type="submit" value="로그인"	class="button fit">
				</li>
			</ul>
		</section>


		<footer class="major">
			<ul class="actions special">
				<li><a href="signIn.jsp">회원가입</a></li>
			</ul>
		</footer>

	</div>
</body>
</html>