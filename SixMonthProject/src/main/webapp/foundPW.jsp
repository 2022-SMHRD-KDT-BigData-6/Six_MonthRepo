<%@page import="com.model.MemberDAO"%>
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
<title>비밀번호 변경해주는 페이지</title>
</head>
<body class="login">
<%
	String newPW=(String)request.getAttribute("pw");
%>

	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>PW 찾기</h2>
				</header>
				
				
				
				<form action="ChangePW">
					<ul class="features">
					<li>
					<input type="password" id="pw" name="pw" placeholder="새 비밀번호"> 
					<input type="password" id="pw2" name="pw2" placeholder="새 비밀번호 확인"> 
					<div id="text"></div>
					<input type="button" id="cp" value="변경하기" class="button fit" onclick="changePW()">
					</li>
					</ul>
				</form>
				
				
			</section>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
		function changePW(){
			var pw= document.getElementById('pw');
			var pw2= document.getElementById('pw2');
			
			console.log(pw.value)
			console.log(pw2.value)
			
			if(pw.value.length<1 || pw2.value.length<1){
				alert("비밀번호를 입력해주세요")
			}else{
			
			if($('#pw').val() == $('#pw2').val()){
				alert('비밀번호가 변경되었습니다')
	        	console.log($('input#cp').attr('type','submit'))
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