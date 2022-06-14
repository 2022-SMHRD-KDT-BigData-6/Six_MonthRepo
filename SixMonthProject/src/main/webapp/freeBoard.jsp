<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.model.MemberVO"%>
<%@page import="com.model.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>자유게시판</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<% 
		//obj타입 업캐스팅 된채로 저장 
		//request에 저장해둔 list 꺼내오기
		List<BoardVO> list= (List<BoardVO>)request.getAttribute("list");
		int boards = (int)request.getAttribute("boards");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
	%>
	
	
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<br><br>
			<h1>자유게시판</h1>
			
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Content -->
			<section id="content" class="main">
				<span class="image main"><img src="images/pic04.jpg" alt="" /></span>
				<h2>글목록</h2>
				<table id="list">
					<thead>

						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>조회수</td>
							<td>작성일</td>
						</tr>

					</thead>
					<tbody>			
						
						<%
						for (int i = 0; i < list.size(); i++) {
							BoardVO bvo = list.get(i);
						%>
						<tr>
							<td><%=bvo.getPnum()%></td>
							<td><a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1">
							    <%=bvo.getTitle()%></a></td>
							<td><%=bvo.getNick()%></td>
							<td><%=bvo.getHit()%></td>
							<td><%=bvo.getPdate()%></td>
							<td><a href="DeleteService?pnum=<%=bvo.getPnum()%>">X</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
		
					<div class="align-right">
						<a href="GoWriter" class="button primary buttonSize">작성하러가기</a>
					</div>
				
				<br>
				
			<div class="align-center">
					<% for(int i =0; i<=boards/10; i++){
					%>
					<a href="GoFree?page=<%=i*10+1%>"><%=i+1 %></a>		
				
				<% }%>
			</div>

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

</body>
</html>