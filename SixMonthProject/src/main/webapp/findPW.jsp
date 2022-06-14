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
	String id=(String)request.getAttribute("id");
%>
	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>PW찾기</h2>
				</header>
				
				<!-- 비밀번호 찾는곳 -->
				<form action="ConfirmEmail" name="pwfind">
					<ul class="features">
							<li>
								<h3>비밀번호 찾기</h3>
								<input type="text" id="id" name="id" placeholder="가입한 ID를 입력하세요">
								<input type="button" id="pw" value="PW찾기" class="button fit" onclick="pw_search()">
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
		
		function pw_search(){
			
			var id= document.pwfind
			
			if(id.id.value.length<1){
				alert("아이디를 입력해주세요")
			}else{
				// html 코드에 button속성으로 주었기 때문에 script안 메소드에 id가 pw인 input태그 type에 submit속성 추가함
				console.log($('input#pw').attr('type','submit'))
			}
		}
		
		
		
	</script>
		
	
</body>
</html>