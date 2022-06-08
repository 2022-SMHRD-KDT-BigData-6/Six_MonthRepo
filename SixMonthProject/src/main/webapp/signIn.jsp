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
<title>회원가입</title>
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
					<h2>회원가입</h2>
				</header>
				
					<form action=JoinService method="post">
				<ul class="features">
					<li><span class="id"></span>
						<h3>아이디</h3> 
						<input type="text" name="id" placeholder="ID을 입력하세요"> 
						<h3>비밀번호</h3> <input type="password" name="pw" placeholder="PW를 입력하세요">
						<h3>비밀번호확인</h3> <input type="password" name="pw" placeholder="PW를 입력하세요">
						<h3>Email</h3> <input type="text" name="email" placeholder="Email을 입력하세요">
						<a>인증번호 전송</a> <input type="text" placeholder="인증번호를 입력하세요">
						<h3>이름</h3> <input type="text" name="name" placeholder="이름을 입력하세요">
						<h3>닉네임</h3> <input type="text" name="nick" placeholder="닉네임을 입력하세요">
					</li>
				</ul>
				<footer class="major">
					<ul class="actions special">
						<li><input type="submit" value="JoinUs" class="button fit"><a href="index.jsp"></a></li>
					</ul>
				</footer>
					</form>
					
			</section>
	</div>
</body>
</html>