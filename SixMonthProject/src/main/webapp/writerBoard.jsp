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
		<header id="header" class="alt">
			<a href="index.jsp"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<h1>Smhrd커뮤니티</h1>
			<p> 빅데이터 분석서비스 개발자과정 </p>
		</header>
	
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1>게시글 작성페이지</h1>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Content -->
			<section>
			<form action="InsertService" method="post" enctype="multipart/form-data"> <!-- multipart/form-data 파일 인코딩 X!! -->
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input  name="title" type="text"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input name="id" type="text" ></td>
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
				<tr class="align-center">
					<td colspan="2">
					<input type="image" src="image/check_box.png" alt="제출">
					</td>
				</tr>
			</table>
		</form>
		
		<table id="list">
		<tr>
			<td class="align-right">
			<a style="text-align:right" href = "GoMain?page=1"><image src="image/back.png" alt="뒤로가기"></image></a>
			</td>
		</tr>
		</table>
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