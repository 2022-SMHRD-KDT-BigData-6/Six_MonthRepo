<%@page import="com.model.MemberVO"%>
<%@page import="com.model.BoardVO"%>
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
	// request영역에서 데이터 꺼내오기
	// 페이지에 출력하기
	BoardVO view = (BoardVO) request.getAttribute("view");
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
	
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<br><br>
			<h1>게시글 작성페이지</h1>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Content -->
			<section id="content" class="main">

			<form action="InsertService" method="post" enctype="multipart/form-data"> <!-- multipart/form-data 파일 인코딩 X!! -->
			<table id="list">
				<tr>
					<td>제목</td>
					<td>
						<input  name="title" type="text">
						<input type="hidden" name="id" value="<%=vo.getId()%>">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>
						<input type="hidden" name="nick" value="<%=vo.getNick()%>">
						<%=vo.getNick()%>
					</td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2">
					<input name="file" type="file">
					<textarea name="content" rows="10" style="resize: none;"></textarea>
					</td>
				</tr>
			</table>
				<div class="icondiv">
					<div>
						<a href = "GoFree?page=1" class="button buttonSize"> 글 목록</a>
					</div>
					<div>
						<input type="checkbox" id="demo-copy" name="demo-copy">
							<label for="demo-copy" >익명</label>
						<input type="submit" value="작성완료" class="button primary buttonSize">
					</div>
				</div>
			</form>
		
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