<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<title>회원가입</title>
</head>
<body class="login">

	<div id="wrapper" align="center">
	
			<header class="major">
					<br><br>
					<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
					<h2>회원가입</h2>
				</header>
				
				<!-- 회원가입 form -->
					<form action=JoinService method="post">
					<section id="first" class="main special">
				<ul class="features">
				
				<!-- id pw ppw email input name nick -->
					<li>
						<h3>아이디</h3> <input type="text" name="id" placeholder="ID을 입력하세요"> <br>
						<button type="button" id="idCheck"> 중복 확인 </button>
						
						<h3>비밀번호</h3> <input type="password" name="pw" placeholder="PW를 입력하세요"><br>
						<h3>비밀번호 확인</h3> <input type="password" name="ppw" placeholder="PW를 입력하세요"><br>

						<h3>이메일 </h3><input type="email" name="email" placeholder="이메일을 입력하세요" ><br>
    					<button type="button" id="send"> 인증번호 전송 </button><br><br>
    					<div id="text"></div>
    					
    					<h3>인증번호 입력 </h3> <input type="text" name="input" placeholder="인증번호를 입력하세요"> <br>
						<button type="button" id="auth"> 입력하기 </button><br><br>
						
						<h3>이름</h3> <input type="text" name="name" placeholder="이름을 입력하세요"><br>
						<h3>닉네임</h3> <input type="text" name="nick" placeholder="닉네임을 입력하세요"><br>
					</li>
				</ul>
				<footer class="major">
					<ul class="actions special">
						<li><input type="submit" value="JoinUs" class="button fit"></li>
					</ul>
				</footer>
					</form>

			</section>
	</div>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
    </script>
	
	
<!--	 이메일 인증 기능 	-->
	<script>
	$('button#idCheck').on('click', function()){
		$('input[name=id]').val();
	}
	
	$('button#send').on('click', function(){
		let email = $('input[name=email]').val();			
		$.ajax({
 			url :'http://172.30.1.22:3500/',
 			type : 'POST',
 			data : {'email':email},
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
	});
		
		$('button#auth').on('click', function(){
			let input = $('input[name=input]').val();
     		let result = result_data;
			$.ajax({
     			url : 'ConfirmService',
     			type : 'POST',
     			data : {
     				'input' : input,
     				'result' : result_data
     			},
     			dataType : 'text',
     			async : false,
     			success : function(res){
     				console.log(res)
     				if (res == 1) {confirm('이메일 인증이 확인되었습니다')
     				} else {confirm('입력값이 틀렸습니다 다시 입력해주세요')}
     			},
     			error : function(){		
     				alert('연결 실패')
     			}
     		});
		});
		
		// 입력값이 틀려도 지금은 가입됨! == 이메일이 인증되면 res값이 1로 넘어옴, 1이 아닌 값은 join이 되면 안됨
		// pw = ppw의 값이 일치되어야 함
		// 아이디의 값이 기존 데이터와 중복되어서는 안됨 --> 셋 다 sql문을 통해 막아주고는 있음
		// 닉네임의 값이 기존 데이터와 중복되어서는 안됨
		// 이메일의 값이 기존 데이터와 중복되어서는 안됨
		
	</script>



</body>
</html>