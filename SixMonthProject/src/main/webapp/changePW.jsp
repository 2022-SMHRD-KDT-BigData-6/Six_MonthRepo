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
	String newPW=(String)request.getAttribute("pw");
%>
		<header id="header" class="alt">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
		</header>


	<div id="wrapper" align="center">

		<section id="first" class="main special">
			<header class="major">
				<h2>내 정보</h2>
			</header>
			
			<!-- 로그인 form -->
			<form action=pwChange method="post">
			<ul class="features">
				<li>
				<span style="text-align: left">새 비밀번호</span>
				<input type="password" id="pw" name="pw" placeholder="새 비밀번호">
				<input type="password" id="pw2" name="pw2" placeholder="새 비밀번호 확인">
				<div id="text"></div>
				
				<span style="text-align: left">기존 비밀번호</span>
				<input type="password" id="pw3" name="pw3" placeholder="기존 비밀번호">
				
				<input type="button" id="cp" value="비밀번호변경" class="button fit" onclick="changePW()">
				</li>
			</ul>
			</form>

			
			</form>
			
		</section>


	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		function changePW(){
			var pw = document.getElementById('pw');
			var pw2= document.getElementById('pw2');
			var pw3= document.getElementById('pw3');
			
			if(pw.value.length<1 || pw2.value.length<1){
				alert("비밀번호를 입력해주세요")
			}else{
			
			if(pw.value == pw2.value){
				if(pw3.value != "<%=(String)vo.getPw()%>" ){
					alert('기존 비밀번호를 잘못 입력하셨습니다')
				}else{
					alert('비밀번호가 변경되었습니다')
		        	console.log($('input#cp').attr('type','submit'))
				}
	         }else{
	        	alert('비밀번호를 다시 입력해주세요')
	         }
			
			
			}
			
		}
		 
		// 입력한 비밀번호가 서로 같은지
		$(function () {
	           $('#pw').keyup(function () {
	               $('#text').html('');
	               console.log($('#pw').val())
	           });

	          $('#pw2').keyup(function () {
	                if ($('#pw').val() != $('#pw2').val()) {
	                    $('#text').html('<h5>비밀번호 일치하지 않음</h5><br>');
	                } else {
	                    $('#text').html('<h5>비밀번호 일치함</h5><br>');
	                }
	            });
	          
	          
	       });

	</script>
</body>
</html>