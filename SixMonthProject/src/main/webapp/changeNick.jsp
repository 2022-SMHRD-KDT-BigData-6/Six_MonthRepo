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
	String newNick=(String)request.getAttribute("nick");
%>

		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
		</header>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>내 정보</h2>
			</header>
			
		
			
			<form action=nickChange method="post">
					<ul class="features">
				<li>
				<span style="text-align: left" style="font-size:20px">닉네임</span>
				<input type="text" id="nick" name="nick" placeholder=<%=(String)vo.getNick()%>>
				<p align="right" style="font-size:14px">※영문,숫자,특문 포함 6자이내 변경가능</p>
				<input type="button" id="cn" value="닉네임변경"	class="button fit" onclick="changeNICK()">
				</li>
			</ul>
			
			
			</form>
			
		</section>


	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		function changeNICK(){
			var nick= document.getElementById('nick');
			
			if(nick.value.length<1 ){
				alert("변경할 닉네임을 입력해주세요")
			}else{
				alert('닉네임이 변경되었습니다')
		        console.log($('input#cn').attr('type','submit'))
			}
		}
	</script>
</body>
</html>