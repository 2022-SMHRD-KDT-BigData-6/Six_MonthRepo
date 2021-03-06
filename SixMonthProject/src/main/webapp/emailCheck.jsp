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
<title>email인증화면</title>
</head>
<body class="login">
<%
	String email=(String)request.getAttribute("email");
%>

	<div id="wrapper" align="center">
			<section id="first" class="main special">
				<header class="major">
					<h2>PW 찾기</h2>
				</header>
				
				
				
				<form action="FoundPwService" name="sendEmail">
					<ul class="features">
					<%
					if(email!=null){
					%>
					<li>
					<input type="text" id="email" name="email" placeholder="Email을 입력하세요" >
					<input type="button" id="emailCheck" value="인증번호받기" class="button fit" onclick="EmailCheck()">
					<input hidden="hidden">
					<br><br>
					<div id="number"></div>
					</li>
				
					<%}else{%>
						<h4>존재하지 않는 아이디입니다.</h4>
					<%}%>
					</ul>
				</form>
				
				
				<footer class="major">
					<ul class="actions special">
						<li><a href="findID.jsp">아이디 찾기</a></li>
						<li><a href="findPW.jsp">뒤로가기</a></li>
						
					</ul>
				</footer>
			</section>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
	</script>
	
	<script>
	
	
	function EmailCheck(){

		var email= document.getElementById('email');
		let btn=document.getElementById('emailCheck')
		let div=document.getElementById('number')
		
		if(email.value.length<1){
			alert("이메일을 입력해주세요")
		}else{
			// 사용자의 id에 연동된 email이 아닐경우
			if(email.value !="<%=email%>" ){
				alert("이메일을 잘못 입력하셨습니다.");
			}else{
			div.innerHTML='<input type="text" id="number" name="number" placeholder="인증번호를 입력하세요" >'
			div.innerHTML+='<input type="button" id="confirm" value="확인" class="button fit">'
			console.log(email.value);
			$.ajax({
		 			url :'http://172.30.1.22:3500',
		 			type : 'POST',
		 			data : {'email':email.value},
		 			dataType : 'text',
		 			async : false,
		 			success : function(res){
		 				alert('이메일이 성공적으로 발송되었습니다')
		 				console.log(res)
		 				result_data = res;
		 			},
		 			error : function(){
		 				alert('연결 실패')
		 			}
		 		});
				// 이메일 인증 여부
				  $('input#confirm').on('click', function(){
			            let input = $('input[name=number]').val();
			            let result = result_data;
						console.log("나오니"+result);	
			              if(!input){
			                 alert('인증번호를 입력해주세요')
			              } else{
			            	  if(input==result){
			            		  console.log('성공~');
			            		  // 다른 페이지로 이동하는 방법(자바스크립트)
			            		  location.replace("foundPW.jsp")
			            	  }else{
							alert("잘못된 인증번호입니다.")
			            	  }
			            }
			         });
			
			}
		}
	}
	
	
	
	</script>

</body>
</html>