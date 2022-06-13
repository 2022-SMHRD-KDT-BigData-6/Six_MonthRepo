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

	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>PW 찾기</h2>
				</header>
				
				
				
				<form action="ChangePW" name="changePW">
					<ul class="features">
					<li>
					<input type="password" name="pw" placeholder="새 비밀번호"> 
					<input type="password" name="confirm_pw" placeholder="새 비밀번호 확인"> 
					<div id="text"></div>
					<input type="button" id="cp" value="변경하기" class="button fit" onclick="changePW()"></a>
					</li>
					</ul>
				</form>
				
				
				<footer class="major">
					<ul class="actions special">
					
						<li><a href="login.jsp">로그인 하기</a></li>
						
					</ul>
				</footer>
			</section>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		
		function changePW(){
			
			var pw= document.changePW
			
			if(pw.pw.value.length<1){
				alert("비밀번호를 입력해주세요")
			}else{
				console.log($('input#cp').attr('type','submit'))
			}
		}
		
		$(function () {
	           $('#pw').keyup(function () {
	               $('#text').html('');
	               console.log($('#pw').val())
	           });

	          $('#confirm_pw').keyup(function () {
	                if ($('#pw').val() != $('#confirm_pw').val()) {
	                    $('#text').html('<h5>비밀번호 일치하지 않음</h5><br>'); // 불일치할 때 눈에 더 잘띄게 만들면 좋을 듯!
	                    ChkPw = 0;
	                } else {
	                    $('#text').html('<h5>비밀번호 일치함</h5><br>');
	                    $('input#pw').attr('readonly',true) // 확인되면 수정 불가
	                    $('input#confirm_pw').attr('readonly',true) // 확인되면 수정 불가
	                    ChkPw = 1
	                }
	                console.log(ChkPw)
	            });
	       });
		
		
	</script>

</body>
</html>