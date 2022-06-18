<%@page import="com.model.MemberVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE HTML>
<!--
   Stellar by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>  
<head>


<title>취업게시판</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/noscript.css" />


</head>

<body class="is-preload">



	<!-- Wrapper -->
	<div></div>
	<div id="wrapper">
	
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header">
			<a href="GoMain">
			<span class="logo">
			<img src="image/logo.big.png">
			</span>
			
			</a>
			
				<h1>취업게시판</h1>
				<p>빅데이터 분석서비스 개발과정</p>
			</header>



				<br>
				<br>
				<br>
				<br>
				
			<!-- Main -->
			

				<!-- Content -->
				<!--  <section id="content" class="w-btn-gra223"> -->

					<!-- Text -->
						<!--  <div class="colormain"> -->
						
							<!-- Content  -->
							<section id="content" class="w-btn w-btn-gra1">
								
								<img alt="img" src="image/img12.png" id="content12">
								
								<h2>채용정보</h2>

								<h1>해외 취업 정보</h1>
								<h3>WEB(프론트엔드/백엔드) 웹 / 데이터 / java 개발자 채용</h3>

							
								<br>
								<li><a href="jobBoard.jsp" class="w-btn-outline w-btn-pink-outline">서울 취업정보 이동</a></li><br>
								<li><a href="gwjobBoard.jsp" class="w-btn-outline w-btn-pink-outline">광주/전남  취업정보 이동</a></li><br>
								
								<ul><a href="GoMain" id="buttonleft"class="button">메인 페이지 이동 </a> <button class="w-btn-neon2" id="toggle-button1" onClick="crawlling(1);">채용정보 확인하기</button></ul>
								<div class="section collapsed div1"></div>
								</section>
						<!-- </div> -->
						<br><br><br>
						
						<div></div>
						-
 <!--</section>  -->			
		<!--</section>  -->			


	<!-- Table -->
	
	
		<br><br><br><br>
		<h2>나와 어울리는 직업은 어떤 직업이 있을까?</h2>
		
		<div class="table-wrapper">
		
			<table>
				<thead>
					<tr>
						<th>프론트엔드</th>
						<th>내용</th>
						<th>상세내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>프론트엔드란?</td>
						<td>프론트엔드 개발자는 프론트엔드, 백엔드의 완전한 분리 구조를 지향하는 업무 스타일의 개발 방식으로 프론트단의 비지니스 로직과 사용자 영역의 개발을 담당</td>
						<td><a href="https://namu.wiki/w/%ED%94%84%EB%A1%A0%ED%8A%B8%EC%97%94%EB%93%9C"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>어떤 프레임워크와 언어를 사용할까?</td>
						<td>HTML / CSS /Javascript /리액트(React)/ 뷰(Vue.js) /앵귤러(Angular)  </td>
						<td><a href="https://authorkim0921.tistory.com/14"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>연봉은 얼마일까?</td>
						<td>윈티드에 공개된 프론트 연봉 테이블 </td>
						<td><a href="https://www.wanted.co.kr/salary/669"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>프론트엔드 공부 순서는 어떻게?</td>
						<td>컴퓨터 공학 기초 >html/css/js에 대한 깊은 이해와 실력 >React.js & Redux </td>
						<td><a href="https://brunch.co.kr/@ssimone/52"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>프론드엔드 전망+</td>
						<td>프론트엔드 요약 정보 </td>
						<td><a href="https://wkdus0608.tistory.com/entry/%ED%94%84%EB%A1%A0%ED%8A%B8%EC%97%94%EB%93%9C-%EA%B0%9C%EB%B0%9C%EC%9E%90-%ED%98%84%EC%8B%A4-%EC%A0%84%EB%A7%9D-%EC%B2%98%EC%9A%B0-%EC%97%B0%EB%B4%89-%ED%95%98%EB%8A%94-%EC%9D%BC-ITs"class="button">자세히 알아보기</a></td>
					</tr>
				</tbody>
				<tfoot>
				</table>
					<tr>
						<td colspan="2"></td>
						<td></td>
						
						
					</tr>
				</tfoot>
			</table>
			
			<table>
				<thead>
					<tr>
						<th>백엔드</th>
						<th>내용</th>
						<th>상세내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>백엔드란?</td>
						<td>백엔드 개발자는 프론트엔드, 백엔드의 완전한 분리 구조를 지향하는 업무 스타일의 개발 방식으로 백엔드의 DB와 API 서버 개발을 맡는다</td>
						<td><a href="https://namu.wiki/w/%EB%B0%B1%EC%97%94%EB%93%9C"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>어떤 프레임워크와 언어를 사용할까?</td>
						<td>NodeJS (JavaScript, TypeScript), Ruby On Rails, Python Django, Spring Boot(Java, Kotlin), golang </td>
						<td><a href="https://www.howcooliscoding.com/backend/things-to-know-for-backend-developer-basic/"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>연봉은 얼마일까?</td>
						<td>윈티드에 공개된 백엔드 연봉 테이블 </td>
						<td><a href="https://www.wanted.co.kr/salary/895"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>백엔드 공부 순서는 어떻게?</td>
						<td>컴퓨터 공학 기초 >java>database> git > spring </td>
						<td><a href="https://zero-base.co.kr/event/media_BE_school_roadmap?gclid=Cj0KCQjwwJuVBhCAARIsAOPwGAThub07GNG6DysSfAvV0oXYkvfyPVeGQvNz8468f0Abd9vKPQOpxOMaAr_eEALw_wcB"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>백엔드 전망+</td>
						<td>백엔드 요약 정보 </td>
						<td><a href="https://wkdus0608.tistory.com/entry/%EB%B0%B1%EC%97%94%EB%93%9C-%EA%B0%9C%EB%B0%9C%EC%9E%90-%EA%B3%B5%EB%B6%80-%EC%88%9C%EC%84%9C-%ED%95%98%EB%8A%94-%EC%9D%BC-%EC%97%B0%EB%B4%89-%EC%A0%84%EB%A7%9D-ITs"class="button">자세히 알아보기</a></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
				</tr>
				</tbody>
				<tfoot>
				</table>
					<tr>
			<table>
				<thead>
					<tr>
						<th>데이터 엔지니어</th>
						<th>내용</th>
						<th>상세내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>데이터엔지니어란?</td>
						<td>데이터 엔지니어는 데이터의 수집 및 관리를 담당하는 직무예요. 데이터 영역을 전문으로 담당하는 소프트웨어 엔지니어라고 볼 수 있어요. 데이터 엔지니어는 S/W 엔지니어, 데이터 엔지니어, DBA라고 불리기도 해요</td>
						<td><a href="https://brunch.co.kr/@13335218e68a4e8/96"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>어떤 언어를 사용할까?</td>
						<td>sql / ptyhon / R bash / c++ / java</td>
						<td><a href="https://post.naver.com/viewer/postView.naver?volumeNo=32913111&memberNo=29566044"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>연봉은 얼마일까?</td>
						<td>윈티드에 공개된 데이터엔지니어 연봉 테이블 </td>
						<td><a href="https://www.wanted.co.kr/salary/655"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>데이터엔지니어 공부 순서는 어떻게?</td>
						<td>현대 데이터 엔지니어링 환경의 완전체와도 같은 그림이며 열정적인 데이터 엔지니어들의 학습 가이드 역할을 하는 것을 목표</td>
						<td><a href="https://velog.io/@dlawlrb/%EB%8D%B0%EC%9D%B4%ED%84%B0-%EC%97%94%EC%A7%80%EB%8B%88%EC%96%B4-%EB%A1%9C%EB%93%9C%EB%A7%B5%EC%9D%84-%EC%95%8C%EC%95%84%EB%B3%B4%EC%9E%90"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>데이터 직무 더 알아보기 +</td>
						<td>데이터 관련 직무 정보 </td>
						<td><a href="https://wendi-learning.tistory.com/entry/%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A5%EB%A8%B8%EC%8B%A0%EB%9F%AC%EB%8B%9D-%EB%B6%84%EC%95%BC-%EB%B9%85%EB%8D%B0%EC%9D%B4%ED%84%B0-%EC%A7%81%EB%AC%B4%EC%97%90-%EB%8C%80%ED%95%9C-%EA%B3%A0%EC%B0%B0"class="button">자세히 알아보기</a></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
					</tr>
				</tbody>
				<tfoot>
				</table>
					<tr>
			
			<table>
				<thead>
					<tr>
						<th>자바 개발자</th>
						<th>내용</th>
						<th>상세내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>자바 개발자란?</td>
						<td>자바(java)개발은 웹 개발,게임 개발, 어플 개발, 데이터베이스 관리 운용 등 활용도가 높은 분야  프로그램 직군 개발자중 가장 수요가 높습니다.</td>
						<td><a href="https://blog.daum.net/razer9899/199"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>어떤 프레임워크를 사용할까?</td>
						<td>Quarkus / Grails / Hibernate / Vaadin /Apache Struts</td>
						<td><a href="https://www.redhat.com/ko/topics/cloud-native-apps/what-is-a-Java-framework"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>연봉은 얼마일까?</td>
						<td>윈티드에 공개된 자바개발자 연봉 테이블 </td>
						<td><a href="https://www.wanted.co.kr/salary/660"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>자바 개발자 공부 순서는 어떻게?</td>
						<td>자바 개발자 공부순서에 대한 로드맵입니다.</td>
						<td><a href="https://loosie.tistory.com/676"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>자바개발 직무 더 알아보기 +</td>
						<td>자바개발 관련 직무 정보 </td>
						<td><a href="https://kgood.tistory.com/821"class="button">자세히 알아보기</a></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
					</tr>
				</tbody>
				<tfoot>
				</table>
					<tr>
		
		
		<table>
				<thead>
					<tr>
						<th>파이썬 개발자</th>
						<th>내용</th>
						<th>상세내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>파이썬 개발자란?</td>
						<td>파이썬 전망 분야 업무내용 에 대한 정보</td>
						<td><a href="https://tagilog.tistory.com/679"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
					<td>어떤 프레임워크를 사용할까?</td>
						<td>큐빅웹 / 장고 / 웹투파이 / 웨피 / 조프 </td>
						<td><a href="https://www.ciokorea.com/news/178939"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>연봉은 얼마일까?</td>
						<td>윈티드에 공개된 파이썬개발자 연봉 테이블 </td>
						<td><a href="https://www.wanted.co.kr/salary/899"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>파이썬 개발자 공부 순서는 어떻게?</td>
						<td>파이썬 개발자 공부순서에 대한 로드맵입니다.</td>
						<td><a href="https://armin.tistory.com/entry/python-%EA%B0%9C%EB%B0%9C%EC%9E%90-%EB%A1%9C%EB%93%9C%EB%A7%B5-developer-roadmap-%EC%97%90-%EB%94%B0%EB%9D%BC%EC%84%9C-%EA%B0%9C%EB%B0%9C%EA%B3%B5%EB%B6%80%ED%95%98%EA%B8%B0"class="button">자세히 알아보기</a></td>
					</tr>
					<tr>
						<td>파이썬 +</td>
						<td>파이썬 공부 왜 필요할까요? </td>
						<td><a href="https://lazymatlab.tistory.com/75"class="button">자세히 알아보기</a></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
					</tr>
				</tbody>
				<tfoot>
				</table>
					<tr>
		
			
		</div>
		
			
		
	
	
			
		
		
		


	<!-- Scripts -->
	
	<script>
	
	
                              
	
    function crawlling(number){
        // click Enter 
        
       
     //=====
    $.ajax({
				//요청할 서버의 url
				url : 'JsonServer',
				type : 'GET',
				
				/* //반드시 키값을 달아서 데이터를 전송해줄것 
				data : {
					name : obj,
					content : obj,
					value : obj
					
				}, */
				dataType : 'json',
				
				success : function(res) {
					/* 서울/광주/ 객체 . -> 배열 [0] */
					/* console.log(res.서울[0]); */
					getname(res,number)
				},
				//res---> 서버페이지에서 받아온 결과값

				error : function() {
					alert("요청실패!");
				
				}
			})
			
			
     }; 
     
     
     function getname(json,number){
         /* console.log('getname 함수 내 json',json.서울[0])
         console.log('getname 함수 내 json',json.광주[0]) */
         
         let div = document.querySelector('.div' + number)
		
         let word = [];
        
         for(let i=0; i < json.해외.length; i++){
        	 word[i] = json.해외[i].주소;
           	// console.log(json.서울[0].주소)        

        	 
        	 
        	// console.log('add : '+add)
        	 
             div.innerHTML += `
				

             <table>
                <h2>
                   <tr>
                   ` +json.해외[i].해외 +   ` 
                      <td>
                      
              		
               
              		<a href="" class="wordd"><button>
              		
              		
                ` +json.해외[i].내용 +` 
                </button>
               </a> 
            
                      </td>


           

                   </tr>
                </h2>
               
             </table>`

             document.getElementsByClassName('wordd')[i].setAttribute('href',word[i])
       
     
          
         }
         
            div.classList.toggle('collapsed');
            
    }
   
  </script>
   

  
   <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	      
                 
</body>
</html>