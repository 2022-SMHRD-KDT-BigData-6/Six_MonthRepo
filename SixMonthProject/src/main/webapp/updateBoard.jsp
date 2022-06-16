<%@page import="com.model.MemberVO"%>
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
		BoardVO view = (BoardVO) request.getAttribute("view");
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->

		<header id="header"> <a href="GoMain"><span class="logo"><img
				src="image/logo.big.png" /></span></a> <br>
		<br>
		<h1>자유게시판</h1>
		</header>

		<!-- Main -->
		<div id="main">
			<section id="content" class="main">
			<form action="UpdateService" method="post"
				enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>제목</td>
						<td>
							<%-- hidden type 이용하면 input태그를 숨길 수 있다. --%> 
							<input type="hidden" name="pnum" value="<%=view.getPnum()%>"> 
							<input type="text" name="title" value="<%=view.getTitle()%>">
						</td>
					</tr>
					<tr>
						<td>작성자</td>
						<%-- 작성자를 출력하세요. --%>
						<%-- <input disabled type="text" value="<%=view.getWriter()%>"> --%>
<<<<<<< HEAD
						<%-- disabled 속성을 이용해서 수정을 방지, form태그로 보내지지 않음 --%>
						<!-- 유림 : 익명 -->
						<td>
							<% if(view.getAnonymous().equals("on")){%>
								익명
							<%} else { %>
								<%=view.getNick()%>
							<%} %>
						</td>
=======
						<%-- disabled 속성을 이용해서 수정을 방지,
						 form태그로 보내지지 않음
					 --%>

						<td><%=view.getNick()%></td>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-6/Six_MonthRepo.git
					</tr>
					<tr>
						<td colspan="2">
						<div><input name="file" type="file"></div>
					 <%
					 if (view.getFileName() != null) {
					 %> 
					 <div><img alt="" src="image/<%=view.getFileName()%>"></div>
					 
					 <div class="align-right">
					 <a href="DeleteFileService?pnum=<%=view.getPnum() %>"><img src="image/deleteUI.png"></a>
					 </div>
					 <%
					 }
					 %></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2"><textarea name="content" rows="10"
								style="resize: none;"><%=view.getContent()%></textarea></td>
					</tr>
				</table>
				<div class="col-6 col-12-small align-center icondiv">
					<div>
						<a href="GoFree?page=1"	class="button buttonSize">글 목록</a>
					</div>
					<div>
						<input type="submit" value="수정하기" class="button primary buttonSize">
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
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>