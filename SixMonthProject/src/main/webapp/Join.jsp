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
<title>SMHRD 커뮤니티 회원가입</title>
</head>
<body class="login">
	<div id="wrapper" align="center">
		<header class="major">
			<br> <br> <a href="GoMain"><span class="logo"><img
					src="image/logo.big.png" /></span></a>
			<h2>회원가입</h2>
		</header>

		<!-- 회원가입 form -->
		<section id="first" class="main special">
			<ul class="features">
				<li>
					<h3>아이디</h3> <input type="text" id="id" name="id"
					placeholder="ID을 입력하세요"> <br>
					<p align="right" style="font-size:14px">※영문,숫자 포함 6자이내 가능</p>
					<button type="button" id="idCheck">중복 확인</button> <br> <br>
					<div id=text></div> <br>

					<h3>비밀번호</h3> <input type="password" name="pw" id="userPw"
					placeholder="PW를 입력하세요"> <br>
					<h3>비밀번호 확인</h3> <input type="password" name="pwCheck"
					id="userPwChk" placeholder="PW를 입력하세요"> <br>
					<div id=chkNotice></div> <br>

					<h3>이메일</h3> <input type="email" name="email" id="email"
					placeholder="이메일을 입력하세요"> <br>
					<button type="button" id="send">인증번호 전송</button> <br> <br>
					<div id="mailNotice"></div> <br>
					<h3>인증번호 입력</h3> <input type="text" name="input" id="emailCheck"
					placeholder="인증번호를 입력하세요"> <br>
					<button type="button" id="auth">인증 확인</button> <br> <br>
					<br>

					<h3>이름</h3> <input type="text" name="name" id="name"
					placeholder="이름을 입력하세요"> <br> <br>

					<h3>닉네임</h3> <input type="text" name="nick" id="nick"
					placeholder="닉네임을 입력하세요"> <br> <br>
					<div id="nkNotice"></div>

				</li>
			</ul>
			<footer class="major">
				<ul class="actions special">
					<!-- <li><input type="submit" value="JoinUs" id="btnSubmit" class="button fit"></li> -->
					<button id="btnSubmit">가입하기</button>
				</ul>
			</footer>
		</section>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"> </script>

	<script>	
	// 최종 submit 전에 확인되어야 할 조건들
	// submit ==> 모든 리턴 값이 1일 때 가입 가능하도록 만들어야 함
	// ==> 모든 값을 충족시켰을 때 서브밋 버튼 활성화시키기!!!!!
	// 1. 아이디 중복x --> ChkID = 1
	// 2. pw == pwCheck --> ChkPw = 1
	// 3. 이메일 인증이 되었을 때 --> ChkEm = 1
	// 4. 이름이 입력되었는지
	// 5. 닉네임 중복x --> ChkNk = 1
	let ChkID = 0;
	let ChkPw = 0;
	let ChkEm = 0;
	let ChkNk = 0;
	let ChkName = 0;
	
	
	<!-- 폼태그 -->
			$('button#btnSubmit').on('click', function(){
				
				let obj = {
						'id' :$('input[name=id]').val(),
						'name' :$('input[name=name]').val(),
						'pw':$('#userPw').val(),
						'email':$('input[name=email]').val(),
						'nick':$('input[name=nick]').val()
				}
				
				console.log(obj)
				console.log(ChkID, ChkPw, ChkEm, ChkNk, ChkName)

				if(ChkID==1 && ChkPw==1 && ChkEm==1 && ChkNk==1 && ChkName==1){
					$.ajax({
						url : 'JoinService',
						type : 'post',
						data : obj,
						success : function(){
							alert('회원가입 성공! 로그인 페이지로 이동합니다')
							location.replace('login.jsp')
						},
						error : function(){
							alert('데이터 전송에 실패하였습니다 모든 정보를 입력해주세요!')
						}
					});
				} else if(ChkID==0){
					alert("아이디를 확인해주세요")
				} else if(ChkPw==0){
					alert("패스워드를 확인해주세요")
				}else if(ChkEm==0){
					alert("이메일을 확인해주세요")
				}else if(ChkNk==0){
					alert("닉네임를 확인해주세요")
				}else if(ChkName==0){
					alert("이름을 확인해주세요")
				}
			});
	


	
	
	 <!-- 아이디 중복 체크 기능 -->
		$('button#idCheck').on('click', function(){
			let id = $('input[name=id]').val();
	        let btn = document.getElementById('idCheck')
	        let div = document.getElementById('text')
	        
	        if(!id){
	        	alert('아이디를 입력하지 않았습니다')
	        } else {
	        	$.ajax({
	        		url : 'idCheck',
	        		type : 'POST',
	        		data : {'id':id},
	        		dataType : 'text',
	        		success : function(cnt){
	        			if (cnt >= 1) {
	     					div.innerHTML = "<h5> 사용할 수 없는 아이디입니다 </h5>";
	     				} else if (cnt == 0) {
	     					div.innerHTML = "<h5> 사용 가능한 아이디입니다 </h5>";
	     					ChkID = 1;
	     				}
	        			console.log(ChkID)
	        		},
	        		error : function(){
	        			alert('연결 실패')
	        		}
	        	});
	        }
		});
		
		/* 중복체크 버튼을 누른 후에 수정이 발생하는 것을 못 잡아줌
		if(ChkID == 1){
			$('input#id').on('keyup', function(){
				let input = document.getElementById('input#id')
				let div = document.getElementById('text')
				console.log(ChkID)
				div.innerHTML = "<h5> 아이디 중복확인을 다시 진행해주십시오 </h5>";
				ChkID = 0
			});
		} 
		*/

	    
	<!-- 비밀번호 확인 기능 -->
	    $(function () {
	        $('#userPw').keyup(function () {
	            $('#chkNotice').html('');
	            console.log($('#userPw').val())
	        });

	    	$('#userPwChk').keyup(function () {
                if ($('#userPw').val() != $('#userPwChk').val()) {
                    $('#chkNotice').html('<h5>비밀번호 일치하지 않음</h5><br>'); // 불일치할 때 눈에 더 잘띄게 만들면 좋을 듯!
                    ChkPw = 0;
                } else {
                    $('#chkNotice').html('<h5>비밀번호 일치함</h5><br>');
                    ChkPw = 1
                }
                console.log(ChkPw)
            });
	    });
	
	    
	<!-- 이메일 중복 체크 -->
	<!-- 이메일 인증 -->

		$('button#send').on('click', function(){
			let email = $('input[name=email]').val();
			let div = document.getElementById('mailNotice')
			div.innerHTML = '<h5> 알림창이 뜰 때까지 잠시만 기다려주세요 </h5><br>'
			
			if(!email){
				alert('이메일을 입력해주세요')
			} else{
				// 일단 가입할 수 있는 이메일인지 판단
				$.ajax({
					url : 'emailCheck',
					type : 'POST',
					data : {'email':email},
					dataType : 'text',
					async : false,
					success : function(cnt){
						result = cnt;
						if (result >= 1) {
	     					div.innerHTML = "<h5> 가입이 되어있는 이메일입니다 </h5> <h5> 다른 이메일로 이용해주십시오 </h5>";
	     				} else if (result == 0) {
	     					div.innerHTML = "<h5> 사용 가능한 이메일입니다 </h5>";
	     				}
					},
					error : function(){
						alert('연결 실패')
					}
				});
				console.log(result)
				
				// 회원가입 가능한 이메일일 때
				if(result == 0){
					$.ajax({
			 			url :'http://172.30.1.22:3500',
			 			type : 'POST',
			 			data : {'email':email},
			 			dataType : 'text',
			 			async : false,
			 			success : function(res){
			 				alert('이메일이 성공적으로 발송되었습니다')
			 				result_data = res;
			 				console.log(res)
			 			},
			 			error : function(){
			 				alert('연결 실패')
			 			}
			 		});
				} else {
					alert('이메일을 다시 입력하세요')
				}
				
			}
		});
		

		
	<!-- 	인증번호와 입력결과를 비교하는 기능 	-->	
			$('button#auth').on('click', function(){
				let input = $('input[name=input]').val();
	     		let result = result_data;
	     		
	     		if(!input){
	     			alert('값을 입력해주세요')
	     		} else{
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
		     				if (res == 1) {
		     					confirm('이메일 인증이 확인되었습니다')
		     					ChkEm = 1;
		     				} else {
		     					confirm('인증번호가 틀렸습니다 다시 입력해주세요')
		     					ChkEm = 0;
		     					}
		     				console.log(ChkEm)
		     			},
		     			error : function(){		
		     				alert('연결 실패')
		     			}
		     		});
				}
			});
		
	<!-- 닉네임 중복 체크 기능-->
		$('#nick').on('keyup', function(){
			let nick = $('input[name=nick]').val();
			let div = document.getElementById('nkNotice')

			if(nick.length < 0){ // 닉네임을 입력하지 않음
				ChkNk = 0;
				div.innerHTML = "<h5> 닉네임을 입력해주세요 </h5>";
			} else{ // 사용 가능한 닉네임
				$.ajax({
					url : 'nickCheck',
					type : 'POST',
					data : {'nick' : nick},
					dataType : 'text',
					async : false,
					success : function(cnt){
						console.log(cnt)
						if (cnt >= 1) {
	     					div.innerHTML = "<h5> 사용할 수 없는 닉네임입니다 </h5>";
	     					ChkNk = 0;
	     				} else if (cnt == 0) {
	     					div.innerHTML = "<h5> 사용 가능한 닉네임입니다 </h5>";
	     					ChkNk = 1;
	     				}
						console.log(ChkNk)
					},
					error : function(){
						alert('실패')
					}
				});
			}
		});
		
	<!-- 이름 확인 -->
		// 이름에 값이 입력되어있는지 길이로 판단 (실명인지는 판단불가)
			$('#name').on('keyup', function(){
				let name = $('input[name=name]').val();
				if(name.length == 0){
					ChkName = 0
				} else {
					ChkName = 1
				} 
			});
		
	</script>



</body>
</html>