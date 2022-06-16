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
<title>회원탈퇴</title>

</head>
<body class="login">
<%
	MemberVO vo=(MemberVO)session.getAttribute("vo");
%>
		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
		</header>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>회원 탈퇴</h2>
			</header>
			
			<!-- 회원탈퇴 form -->
			<form action=MemberDelete method="post">
			<ul class="features">
				<li>
				<span style="text-align: left" style="font-size:20px">계정 비밀번호</span>
				<input type="password" id="pw" name="pw" placeholder="계정 비밀번호">
				<p align="right" style="font-size:14px">※탈퇴 후 개인정보 데이터가 삭제됩니다.</p>
				<input type="button" id="ip" value="회원탈퇴" class="button fit" onclick="inputPW()">
				
				<br><br>
				<a href="myPage.jsp">이전으로</a>
				</li>
			</ul>
			</form>

		</section>


	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		function inputPW(){
			var pw = document.getElementById('pw');
			
			if(pw.value.length<1){
				alert("비밀번호를 입력해주세요")
			}else{
				if(pw.value != "<%=(String)vo.getPw()%>" ){
					alert('기존 비밀번호를 잘못 입력하셨습니다')
				}else{
					alert('회원 탈퇴 되었습니다')
		        	console.log($('input#ip').attr('type','submit'))
				}
			}
		}
		
	</script>
</body>
</html>