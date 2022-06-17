<%@page import="com.model.MemberVO"%>
<%@page import="com.model.CommentVO"%>
<%@page import="java.util.List"%>
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
<title>글 내용보기</title>
</head>
<body class="is-preload">

	<%
		BoardVO view = (BoardVO)request.getAttribute("view");
		List<CommentVO> myCommentList = (List<CommentVO>)request.getAttribute("myCommentList");
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	

	<div id="wrapper">
	<!-- Header -->

	<header id="header">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<br><br>
			<h1>자유게시판</h1>
	</header>
		
		<%-- 댓글 보여주기 --%>
		<div class="comments main">
			<div id="main">
			<section id="comment" class="main">
			<div>
				<h2>내가 쓴 댓글</h2>
				
			<table id="list">
               <ul class="myInfo" id="commentUl">
                <%
				for (int i = 0; i < myCommentList.size(); i++) {
					CommentVO cvo = myCommentList.get(i);
				%>
				<tr>
                  <td>
                  	<h3 class="medium"><%=cvo.getNick() %></h3>
                  </td>
                  <td>
                     <p class="medium"><%=cvo.getCdate() %></p>
                  </td>
                  <td>
                   	  <a href="GoView?pnum=<%=cvo.getPnum()%>&cnt=1">
                  	  <p class="commentP"><%=cvo.getComments()%></p>
                  </td>
                 <%
					}
				 %>
               	 </ul>
               	 <tr>
              </table>
              
              <div class="icondiv">
					<div >
						<a href="GoMain" class="button buttonSize">돌아가기</a>
					</div>
			  </div>
              
              </div>
             </section>
             </div>
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