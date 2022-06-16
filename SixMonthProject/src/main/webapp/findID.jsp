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

	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>ID찾기</h2>
				</header>
				
				<!-- 아이디 찾는곳 -->
				<form action="FindIdService" name="idfind">
					<ul class="features">
							<li>
								<h3>아이디 찾기</h3> 
								<input type="text" id="email" name="email" placeholder="Email을 입력하세요"> 
								<input type="button" id="searchId" value="ID찾기" class="button fit" onclick="id_search()">
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
	
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		// 이메일을 입력하지 않고 버튼을 눌렀을때 알림창이 뜨게함 
		function id_search(){
			
			var email= document.idfind
			
			if(email.email.value.length<1){
				alert("이메일을 입력해주세요")
			}else{
				// html 코드에 button속성으로 주었기 때문에 script안 메소드에 id가 id인 input태그 type에 submit속성 추가함
				console.log($('input#searchId').attr('type','submit'))
			}
		}
		
		
	</script>
		
	
</body>
</html>