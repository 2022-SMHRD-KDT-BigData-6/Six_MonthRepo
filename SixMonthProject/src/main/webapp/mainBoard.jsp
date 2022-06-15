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
			<a href="index.jsp"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<br><br>
			<h1>자유게시판</h1>
			
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Content -->
			<section id="content" class="main">
				<span class="image main"><img src="images/pic04.jpg" alt="" /></span>
				<h2>리스트</h2>
				<table id="list">
					<thead>

						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>시간</td>
						</tr>

					</thead>
					<tbody>
						<%--게시글 목록 출력!!!! --%>

						<tr>
							<td>1</td>
							<%--QueryString으로 Pnum을 GoView로 보내주기 --%>
							<td><a href="#">1번글입니다.</a></td>
							<td>김준성</td>
							<td>2022-06-03</td>
							<td><a href="#">X</a></td>
						</tr>
						
						
						<%
						for (int i = 0; i < list.size(); i++) {
							BoardVO bvo = list.get(i);
						%>
						<tr>
							<td><%=bvo.getPnum()%></td>
							<td><a href="GoView?pnum=<%=bvo.getPnum()%>"> 
							    <%=bvo.getTitle()%></a></td>
							<td><%=bvo.getId()%></td>
							<td><%=bvo.getPdate()%></td>
							<%-- url?name=value --%>
							<td><a href="DeleteService?pnum=<%=bvo.getPnum()%>">X</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>

					
			<% for(int i =0; i<=boards/10; i++){
			%>
			<a href="GoMain?page=<%=i*10+1%>">[<%=i+1 %>]</a>		
		
		<% }%>

			
		
		<br>		
				<div class="align-center">
				<a href="GoWriter"><button id="writer">작성하러가기</button></a>
				</div>
			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>훈민정음</h2>
				<p>나랏말쌈이 듕귁에 달아 서로 삼앗디 아니할세</p>
				<ul class="actions">
					<li><a href="#" class="button">Learn More</a></li>
				</ul>
			</section>
			<section>
				<h2>Six_month</h2>
				<dl class="alt">
					<dt>Address</dt>
					<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
					<dt>Phone</dt>
					<dd>(000) 000-0000 x 0000</dd>
					<dt>Email</dt>
					<dd>
						<a href="#">information@untitled.tld</a>
					</dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram alt"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github alt"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span
							class="label">Dribbble</span></a></li>
				</ul>
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