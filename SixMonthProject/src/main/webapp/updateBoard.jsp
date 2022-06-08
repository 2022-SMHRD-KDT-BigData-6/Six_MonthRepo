<%@page import="com.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<title>자유게시판</title>
</head>
<body>
	<%
		BoardVO view = (BoardVO)request.getAttribute("view");
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
		<form action="UpdateService" method="post" enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>제목</td>
					<td>
						<%-- hidden type 이용하면 input태그를 숨길 수 있다. --%>
						<input type="hidden" name = "pnum" value="<%=view.getPnum() %>">
						<input type="text" name = "title" value="<%=view.getTitle() %>">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<%-- 작성자를 출력하세요. --%>
					<%-- <input disabled type="text" value="<%=view.getWriter()%>"> --%>
					<%-- disabled 속성을 이용해서 수정을 방지,
						 form태그로 보내지지 않음
					 --%>
					<td><%= view.getId() %></td>
				</tr>
				<tr>
					<td colspan="2">
					<input name="file" type="file">
					<%if(view.getFileName() != null){ %>
					<img alt="" src="image/<%= view.getFileName()%>">
					<%} %>
					<br>
					</td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name = "content" rows="10" style="resize: none;"><%= view.getContent() %></textarea>
					</td>
				</tr>
				<tr>
					<td class="align-right" colspan="2">
					<input type="image" src="image/check_box.png" alt="수정하기">
					</td>
				</tr>
				<tr>
					<td class="align-right" colspan="2"> 
					<a href="GoFree?page=1" class="back"><button>뒤로가기</button></a>
					</td>
				</tr>
			</table>
		</form>
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
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>