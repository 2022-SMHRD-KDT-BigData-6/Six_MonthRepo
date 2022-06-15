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
	<div id="wrapper">
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header">
			
				<h1>취업게시판</h1>
				<p>빅데이터 분석서비스 개발과정</p>
			</header>




			<!-- Main -->
			

				<!-- Content -->
				<!--  <section id="content" class="w-btn-gra223"> -->

					<!-- Text -->
						<!--  <div class="colormain"> -->
						
							<!-- Content  -->
							<section id="content" class="w-btn w-btn-gra1">
								
								<img alt="img" src="image/soul.jpeg" id="mapping">
								<h2>채용정보</h2>

								<h1>서울 취업 정보</h1>
								<h3>WEB(프론트엔드/백엔드) 웹 / 데이터 / 개발자 채용</h3>

								<br>
								<li><a href="#content1" class="w-btn-outline w-btn-pink-outline">광주/전남 취업정보 이동</a></li><br>
								<li><a href="#content2" class="w-btn-outline w-btn-pink-outline">해외 취업정보 이동</a></li><br>
								
								<ul><a href="Main.jsp" id="buttonleft"class="button">메인 페이지 이동 </a> <button class="w-btn-neon2" id="toggle-button1" onClick="crawlling(1);">채용정보 확인하기</button></ul>
								</section>
						<!-- </div> -->
						<br><br><br>
						<div class="section collapsed div1"></div>
						<div></div>
						
 <!--</section>  -->			
			
						<div id="text"></div>
		</table>
	</div>

	<div id="wrapper">
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header"> </header>

				<!-- Main -->
			

				<!-- Content -->
				<!--  <section id="content" class="w-btn-gra223"> -->

					<!-- Text -->
						<!--  <div class="colormain"> -->
						
							
							<!-- Content  -->
							<section id="content1" class="w-btn w-btn-gra1">
								
								<img alt="img" src="image/gw.jpeg" id="mapping">
								<h2>채용정보</h2>

								<h1>광주/전남 취업 정보</h1>
								<h3>WEB(프론트엔드/백엔드) 웹 / 데이터 / 개발자 채용</h3>

		
								<br>
								<li><a href="#content" class="w-btn-outline w-btn-pink-outline">서울 취업정보 이동</a></li><br>
								<li><a href="#content2" class="w-btn-outline w-btn-pink-outline">해외 취업정보 이동</a></li><br>
								
								<ul><button class="w-btn-neon2" id="toggle-button1" onClick="crawlling(2);">채용정보 확인하기</button><br><br></ul> 
									</section>
						<!-- </div> -->
						<br><br><br>
						<div class="section collapsed div2"></div>
						
 <!--</section>  -->			
		</table>
	</div>
	<div id="wrapper">
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header"> </header>

			<!-- Main -->
			

				<!-- Content -->
				<!--  <section id="content" class="w-btn-gra223"> -->

					<!-- Text -->
						<!--  <div class="colormain"> -->
	
	
							<a href="Main.jsp" class="button">메인 페이지 이동 </a>
							<!-- Content  -->
							<section id="content2" class="w-btn w-btn-gra1">
								
								<img alt="img" src="image/img12.png" id="content12">
								
								<h2>채용정보</h2>

								<h1>해외 취업 정보</h1>
								<h3>WEB(프론트엔드/백엔드) 웹 / 데이터 / java 개발자 채용</h3>

							
								<br>
								<li><a href="#content" class="w-btn-outline w-btn-pink-outline">서울 취업정보 이동</a></li><br>
								<li><a href="#content1" class="w-btn-outline w-btn-pink-outline">광주/전남  취업정보 이동</a></li><br>
								
								<ul><button class="w-btn-neon2" id="toggle-button1" onClick="crawlling(3);">채용정보 확인하기</button><br><br></ul>
								
									</section>
						<!-- </div> -->
						<br><br><br>
						<div class="section collapsed div3"></div>
						
 <!--</section>  -->			
		</table>
	</div>
	</div>



	</secction>



	
	</code>
	</pre>
	</section>



	<!-- Table -->
	<section>
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
					<tr>
						<td colspan="2"></td>
						<td></td>
						<td>--</td>
						
					</tr>
				</tfoot>
			</table>
		</div>
		
		<div class="table-wrapper">
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
						<td></td>
						<td>--</td>
					</tr>
				</tfoot>
			</table>
		</div>
	
	<div class="table-wrapper">
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
						<td></td>
						<td>--</td>
					</tr>
				</tfoot>
			</table>
		</div>
		
		<div class="table-wrapper">
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
						<td></td>
						<td>--</td>
					</tr>
				</tfoot>
			</table>
		</div>
	
			</table>
		</div>
	</section>

	
	<!-- Form -->
	<section>
		<h2>Form</h2>
		<form method="post" action="#">
			<div class="row gtr-uniform">
				<div class="col-6 col-12-xsmall">
					<input type="text" name="demo-name" id="demo-name" value=""
						placeholder="Name" />
				</div>
				<div class="col-6 col-12-xsmall">
					<input type="email" name="demo-email" id="demo-email" value=""
						placeholder="Email" />
				</div>
				<div class="col-12">
					<select name="demo-category" id="demo-category">
						<option value="">- Category -</option>
						<option value="1">Manufacturing</option>
						<option value="1">Shipping</option>
						<option value="1">Administration</option>
						<option value="1">Human Resources</option>
					</select>
				</div>
				<div class="col-4 col-12-small">
					<input type="radio" id="demo-priority-low" name="demo-priority"
						checked> <label for="demo-priority-low">Low</label>
				</div>
				<div class="col-4 col-12-small">
					<input type="radio" id="demo-priority-normal" name="demo-priority">
					<label for="demo-priority-normal">Normal</label>
				</div>
				<div class="col-4 col-12-small">
					<input type="radio" id="demo-priority-high" name="demo-priority">
					<label for="demo-priority-high">High</label>
				</div>
				<div class="col-6 col-12-small">
					<input type="checkbox" id="demo-copy" name="demo-copy"> <label
						for="demo-copy">Email me a copy</label>
				</div>
				<div class="col-6 col-12-small">
					<input type="checkbox" id="demo-human" name="demo-human" checked>
					<label for="demo-human">Not a robot</label>
				</div>
				<div class="col-12">
					<textarea name="demo-message" id="demo-message"
						placeholder="Enter your message" rows="6"></textarea>
				</div>
				<div class="col-12">
					<ul class="actions">
						<li><input type="submit" value="Send Message" class="primary" /></li>
						<li><input type="reset" value="Reset" /></li>
					</ul>
				</div>
			</div>
		</form>
	</section>


	



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
		
         let seo = [];
        
         for(let i=0; i < json.서울.length; i++){
        	 seo[i] = json.서울[i].주소;
           	// console.log(json.서울[0].주소)        

        	 
        	 
        	// console.log('add : '+add)
        	 
             div.innerHTML += `
				

             <table>
                <h2>
                   <tr>
                      <td>
                      
              		` +json.서울[i].서울 +   ` -
               
              		<a href="" class="asas">
              		
              		
                ` +json.서울[i].내용 +` 
               </a> 
            
                      </td>


           

                   </tr>
                </h2>
               
             </table>`

             document.getElementsByClassName('asas')[i].setAttribute('href',seo[i])
       
     
          
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