<%@page import="com.model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Smhrd커뮤니티</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link href='fullcalendar/main.css' rel='stylesheet' />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
#calendar {
	max-width: 100%;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	margin: 0 auto;
	font-size: 14px;
}
</style>
</head>
<body class="is-preload">

<%
	MemberVO vo=(MemberVO)session.getAttribute("vo");
	List<BoardVO> list = (List<BoardVO>)request.getAttribute("list");
	List<BoardVO> hotList = (List<BoardVO>)request.getAttribute("hotList");
%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<a href="GoMain">
			
			<span class="logo">
			<img src="image/logo.big.png"/>
			</span>
			
			</a>
			<h1>Smhrd커뮤니티</h1>


			<p style="color:white"> Created by Six_month </p>
			

		</header>


		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="#intro" class="active"  style="color:black !important">자유게시판</a></li>
				<li><a href="#first"  style="color:black !important">취업게시판</a></li>
				<li><a href="#second"  style="color:black !important">일정표</a></li>
				<li><a href="#cta"  style="color:black !important">Get Started</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">
		
			<!-- 로그인 및 사진 추가 -->
			<section id="intro" class="main">
			<div class="spotlight">
				<div class="content" style="padding-right:10px" style="padding-left:10px">
					<img alt="banner" src="image/banner.jpg" class="bannerimg">
				</div>
				
				<div class="content align-center" id="login" style="padding-right:10px" style="padding-left:10px">
				<form>
                  <% // 로그인 안했을때 
                  if (vo == null) {
                  %>
                  
                 	<img alt="icon" src="image/login_logo.png">
					<br>
					<a href="login.jsp" class="button primary">로그인</a>
					<br>
					<a href="Join.jsp" class="button">회원가입</a>
					

                  <%
                  } else {// 로그인 했을때
                  %>


                  <img alt="profile" src="image/profile.png">
                  		<br>
                  		<p class="school"  style="font-size:30px"><%=vo.getNick()%></p> 
                  		<p class="school"><%=vo.getName()%></p>
                  		
                  	<ul class="myInfo">
                  		<li class="myInfo_li"><a href="myPage.jsp" style="color:black">내 정보</a></li>
                  	
                  	
                  <%
                  session.setAttribute("vo", vo);
                  %>
                  
                  <!-- 로그아웃 버튼 누르면 logout.java로 넘어갔다가 메인으로 돌아옴 -->
                  		<li class="myInfo_li"><a href='logout' style="color:black"> 로그아웃 </a></li>
                  		<li class="myInfo_li"><a href='GoMyWrite?id=<%=vo.getId() %>' class="myArticle" style="color:black"> 내 글 </a></li>
                  		<li class="myInfo_li"><a href='GoMyComment?id=<%=vo.getId() %>'style="color:black"> 내 댓글 </a></li>
                  </ul>
                  <%
                  }
                  %>
               </form>
				
		
				</div>
					
			</div>
			
			</section>
			<!-- Introduction -->

			<!-- 게시판 리스트 불러오기 -->
			<section id="intro" class="main">
				<div class="spotlight">
					<div class="content" style="padding-right:10px" style="padding-left:10px">
						<header class="major">
							<h2>자유게시판</h2>
						</header>
						<table>
						<thead>
							<tr>
								<td>글번호</td>
								<td>제목</td>
								<td>작성자</td>
								<td>조회수</td>
							</tr>

						</thead>
						<tbody>		
						<%
							for(int i=0; i<5; i++){
							BoardVO bvo = list.get(i);
						%>
							<tr>
								<td><%=bvo.getPnum() %></td>
								<td><a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1" style="color:black"><%=bvo.getTitle() %></a></td>
								<!-- 유림 : 익명 -->
								<td>
									<% if(bvo.getAnonymous().equals("on")){%>
										익명
									<%} else { %>
										<%=bvo.getNick()%>
									<%} %>
								</td>
								<td><%=bvo.getHit() %></td>
							</tr>

						<%
						}
						%>
						</tbody>

						</table>
						<div class="align-center">
							<a href="GoFree?page=1" class="button">더보기</a>
						</div>
					</div>
					
					<!-- 핫게시글 table -->
					<div class="content" style="padding-right:10px" style="padding-left:10px">
						<header class="major">
							<h2>핫게시글</h2>
						</header>
						<table >
							<tr>
								<td>순위</td>
								<td>제목</td>
								<td>작성자</td>
								<td>공감수</td>
							</tr>

							<%
							for (int i = 0; i < 5; i++) {
								BoardVO bvo = hotList.get(i);
							%>
							<tr>
								<td><%=i+1 %></td>
								<td><a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1" style="color:black"><%=bvo.getTitle()%></a></td>
								<!-- 유림 : 익명 -->
								<td>
									<% if(bvo.getAnonymous().equals("on")){%>
										익명
									<%} else { %>
										<%=bvo.getNick()%>
									<%} %>
								</td>
								<td><%=bvo.getGood()%></td>
							</tr>
							<%
								}
							%> 

						</table>
						<div class="align-center">
							<a href="GoFree?page=1" class="button">더보기</a></li>
						</div>


					</div>			

				</div>
			</section>

			<!-- First Section -->
			<section id="first" class="main special">
				<header class="major">
					<h2>취업게시판</h2>
				</header>
				<ul class="features">
					<li><span><image src="image/soul.jpeg" id="mapping"></span>
						<h3>서울</h3>
						<p></p></li>
					<li><span><image src="image/gw.jpeg" id="mapping"></span>
						<h3>광주/전남</h3>
						<p></p></li>
					<li><span><image src="image/word.jpeg" id="mapping"></span>
						<h3>국외</h3>
						<p></p></li>
				</ul>
				<footer class="major">
					<ul class="actions special">
						<li><li><a href="jobBoard.jsp" class="button">더 보기</a></li></li>
					<li><li><li><li><li><li><li><li><li><li><a href="jobBoard.jsp" class="button">더 보기</a></li></li></li></li></li></li></li></li></li></li>
						<li><li><li><li><li><li><li><li><li><li><a href="jobBoard.jsp" class="button">더 보기</a></li></li></li></li></li></li></li></li></li></li>
					</ul>
				</footer>
			</section>

			<!-- Second Section -->
			<section id="second" class="main special">
				<header class="major">
					<h2>일정표</h2>
				</header>
					
					<div id='calendar' style="max-width:900px"></div>
				<!-- modal 추가 -->
				    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
				        aria-hidden="true">
				        <div class="modal-dialog" role="document">
				            <div class="modal-content">
				                <div class="modal-header">
				                    <h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
				                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                        <span aria-hidden="true">&times;</span>
				                    </button>
				                </div>
				                <div class="modal-body">
				                    <div class="form-group">
				                        <label for="taskId" class="col-form-label">일정 내용</label>
				                        <input type="text" class="form-control" id="calendar_content" name="calendar_content">
				                        <label for="taskId" class="col-form-label">시작 날짜</label>
				                        <input type="date" class="form-control" id="calendar_start_date" name="calendar_start_date">
				                        <label for="taskId" class="col-form-label">종료 날짜</label>
				                        <input type="date" class="form-control" id="calendar_end_date" name="calendar_end_date">
				                        <label for="taskId" class="col-form-label">텍스트 색상</label>
				                        <input type="color" class="form-control" id="calendar_text_color" name="calendar_end_date">
				                        <label for="taskId" class="col-form-label">배경색상</label>
				                        <input type="color" class="form-control" id="calendar_background_color" name="calendar_end_date">
				                    </div>
				                </div>
				                <div class="modal-footer">
				                    <button type="button" class="btn btn-warning" id="addCalendar">추가</button>
				                    <button type="button" class="btn btn-secondary" data-dismiss="modal"
				                        id="sprintSettingModalClose">취소</button>
				                </div>
				    
				            </div>
				        </div>
				    </div>

				
			</section>

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<h2>Congue imperdiet</h2>
					<p>
						Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
						posuere. Nulla massa urna, fermentum eget quam aliquet.
					</p>
				</header>
				<footer class="major">
					<ul class="actions special">
						<li><a href="generic.html" class="button primary">Get
								Started</a></li>
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>핵심융합프로젝트</h2>
				<p style="color:white">제작기간 : 2022.06.03~2022.06.20</p>
				<p style="color:white">발표 : 2022.06.20</p>
			</section>
			<section>
				<h2>Six_Month</h2>
				<dl class="alt" style="color:white">
					<dt>Leader</dt>
					<dd>Jae Woo Kim</dd>
					<dt>member</dt>
					<dd>Jun Seong Kim</dd>
					<dd>Na Yun Hwang</dd>
					<dd>Yu Rim Kim</dd>
					<dd>Tae Min No</dd>
				</dl>
			</section>
			<p class="copyright" style="color:white">
				&copy; Untitled. Design: <a href="https://html5up.net" style="color:white">HTML5 UP</a>.
			</p>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- fullcalendar -->
	<script src='fullcalendar/main.js'></script>
	<script src='fullcalendar/locales-all.js'></script>
	<script src='fullcalendar/ko.js'></script>
	
	<!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- bootstrap 4 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	
	<script>
	
	function date_to_str(format){    
		var year = format.getFullYear();    
		var month = format.getMonth() + 1;   
		if(month<10) month = '0' + month;    
		var date = format.getDate();    
		if(date<10) date = '0' + date;   
		/*var hour = format.getHours();    
		if(hour<10) hour = '0' + hour;    
		var min = format.getMinutes();   
		if(min<10) min = '0' + min;    
		var sec = format.getSeconds();    
		if(sec<10) sec = '0' + sec;*/        
		return year + "/" + month + "/" + date;
		}
	
	
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			initialDate : '2022-06-13', // 초기 로딩 날짜
			navLinks : false, // can click day/week names to navigate views
			selectable : true,
			selectMirror : true,
			
			// 일정등록하기
			 /*select : function(arg) {
				var title = prompt('Event Title:');
				if (title) {
					calendar.addEvent({
						title : title,
						start : arg.start,
						end : arg.end,
						allDay : arg.allDay
					})
				}
				calendar.unselect()
			},
			 */
			 
			// 삭제기능
			eventClick : function(info) {
				if (confirm(info.event.title+"일정을 삭제하시겠습니까?")) {
					
					// fullcalendar에서 제공하는 삭제 기능
					info.event.remove() 
					
					// fullcalendar의 날짜데이터 변경을 위한 객체 생성
					var sysdate = new Date(info.event._instance.range.start); 
					
					// 일정 데이터를 해당 변수로 초기화
					var title = info.event._def.title;
					var start = info.event._instance.range.start;
					var end =info.event._instance.range.end;
					
					// json형식으로 일정 데이터 객체 초기화
					var obj2 ={
							title: title,
							start: date_to_str(new Date(start)),
							end: date_to_str(new Date(end))
					}
					
					console.log(obj2);
					
				}
				// 일정(json형식)데이터 servlet으로 보내주고 받기
				$.ajax({
                	url : "CalendarDelete",
                	type : "GET",
                 	data : obj2,
                 	dataType : 'json',
                 	success : function(res){
                 		// 받기 성공한 경우!!
                		console.log('일정삭제 성공!!!');
                 	},
                	error:function(){
                		// 받기 실패한 경우!!
                		console.log('일정삭제 실패!!!');
                	}
            	})
            	
			}, 
			
			editable : false,
			locale : 'ko',
			dayMaxEvents : true, // allow "more" link when too many events
			displayEventTime: false,
			events : function(info, successCallback, failureCallback){
				$.ajax({
					type:'post',
					url:'Calendar',
					dataType: 'json',
					contentType :"application/json;charset=utf-8",
					success: function(jsonarray){
						
						var events = [];
						for(var i=0 ; i<jsonarray.length ;i++){
						events.push({
							title : jsonarray[i].caltitle,
							start : jsonarray[i].start1,
							end : jsonarray[i].end1,
							textColor : jsonarray[i].textcolor,
							backgroundColor : jsonarray[i].backgroundcolor,
							borderColor : jsonarray[i].borderColor
							});
						}
						successCallback(events);
					},
					error : function(){
						alert("실패")
					}
				});
			},
			headerToolbar: {
				center : 'addEventButton'
			},
			customButtons: {
				addEventButton: { 					// 추가한 버튼 설정
					text : "일정 추가", 				// 버튼 내용
					click : function(){ 			// 버튼 클릭시 이벤트 추가
						$("#calendarModal").modal("show"); // modal 나타내기
						
						$("#addCalendar").on("click",function(){  // modal의 추가 버튼 클릭 시
                             var content = $("#calendar_content").val();
                             var start_date = $("#calendar_start_date").val();
                             var end_date = $("#calendar_end_date").val();
                             var textcolor = $("#calendar_text_color").val();
                             var bgcolor = $("#calendar_background_color").val();
                             //내용 입력 여부 확인
                                if(content == null || content == ""){
                                    alert("내용을 입력하세요.");
                                }else if(start_date == "" || end_date ==""){
                                    alert("날짜를 입력하세요.");
                                }else if(new Date(end_date)- new Date(start_date) < 0){ // date 타입으로 변경 후 확인
                                    alert("종료일이 시작일보다 먼저입니다.");
                                }else{ 				// 정상적인 입력 시
                                    var obj = {
                                        title : content,
                                        start : start_date,
                                        end : end_date,
                                        textcolor : textcolor,
                                        backgroundcolor : bgcolor
                                    }				//전송할 객체 생성

                                    console.log(obj); //서버로 해당 객체를 전달해서 DB 연동 가능
                                   
                                }
                                
                                $.ajax({
                                    	url : "CalendarInsert",
                                    	type : "GET",
                                     	data : obj,
                                     	dataType : 'json',
                                     	success : function(res){
                                    		console.log('일정추가 성공!!!');
                                     	},
                                    	error:function(){
                                    		console.log('일정추가 실패!!!');
                                    	}
                                }),    
                                alert("일정등록성공")
                                $("#calendarModal").modal("hide");
                                location.href="GoMain";
					    });
					    
                    	}
                    	
                	}
            	}

			});
					
			calendar.render();
		});
		
</script>
</body>
</html>