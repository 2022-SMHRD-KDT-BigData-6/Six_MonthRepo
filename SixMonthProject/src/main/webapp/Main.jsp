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


			<p> Created by Six_month </p>
			

		</header>


		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="#intro" class="active">자유게시판</a></li>
				<li><a href="#first">취업게시판</a></li>
				<li><a href="#second">일정표</a></li>
				<li><a href="#cta">Get Started</a></li>
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
                  		<li class="myInfo_li"><a href="myPage.jsp">내 정보</a></li>
                  	
                  	
                  <%
                  session.setAttribute("vo", vo);
                  %>
                  
                  <!-- 로그아웃 버튼 누르면 logout.java로 넘어갔다가 메인으로 돌아옴 -->
                  		<li class="myInfo_li"><a href='logout'> 로그아웃 </a></li>
                  		<li class="myInfo_li"><a href='myWrite.jsp' class="myArticle"> 내 글 </a></li>
                  		<li class="myInfo_li"><a href='myComment.jsp' > 내 댓글 </a></li>
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
								<td><a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1">
								<%=bvo.getTitle() %></a></td>
								<td><%=bvo.getNick() %></td>
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
								<td><a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1">
								<%=bvo.getTitle()%></a></td>
								<td><%=bvo.getNick()%></td>
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
				
					<div id='calendar'></div>
				
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
				<p>제작기간 : 2022.06.03~2022.06.20</p>
				<p>발표 : 2022.06.20</p>
			</section>
			<section>
				<h2>Six_Month</h2>
				<dl class="alt">
					<dt>Leader</dt>
					<dd>Jae Woo Kim</dd>
					<dt>member</dt>
					<dd>Jun Seong Kim</dd>
					<dd>Na Yun Hwang</dd>
					<dd>Yu Rim Kim</dd>
					<dd>Tae Min No</dd>
				</dl>
			</section>
			<p class="copyright">
				&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
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
	<script src='fullcalendar/main.js'></script>
	<script src='fullcalendar/locales-all.js'></script>
	<script src='fullcalendar/ko.js'></script>
	<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			initialDate : '2022-06-13', // 초기 로딩 날짜
			navLinks : true, // can click day/week names to navigate views
			selectable : true,
			selectMirror : true,
			
			// 이벤트명 : function(){} : 각 날짜에 대한 이벤트를 통해 처리할 내용
			/* select : function(arg) {
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
			/* eventClick : function(arg) {
				if (confirm('Are you sure you want to delete this event?')) {
					arg.event.remove()
				}
			}, */
			editable : false,
			locale : 'ko',
			dayMaxEvents : true, // allow "more" link when too many events
			events : function(info, successCallback, failureCallback){
				$.ajax({
					type:'post',
					url:'Calendar',
					dataType: 'json',
					contentType :"application/json;charset=utf-8",
					success: function(jsonarray){
						console.log(jsonarray);	
						
						var events = [];
						for(var i=0 ; i<jsonarray.length ;i++){
						events.push({
							title : jsonarray[i].caltitle,
							start : jsonarray[i].start1,
							end : jsonarray[i].end1
							});
						}
						console.log(events);
						successCallback(events);
					},
					error : function(){
						alert("실패")
					}
				});
			}
			});
					
			calendar.render();
		});
</script>
</body>
</html>