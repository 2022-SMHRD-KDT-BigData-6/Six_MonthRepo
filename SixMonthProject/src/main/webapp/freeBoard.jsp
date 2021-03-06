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
		List<BoardVO> list= (List<BoardVO>)request.getAttribute("list");
		int boards = (int)request.getAttribute("boards");
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		List<BoardVO> Search = (List<BoardVO>)request.getAttribute("Search");
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
				<h2>글목록</h2>
				
				
					<!-- 검색기능 -->
						<form action="GoSearch" method="post">
							<div class="icon-Div-Align-Right">
								<div>
									<select name="option" style="text-align:center" id="selectHeight">
										<option value="title">글제목</option>
										<option value="content">글내용</option>
										<option value="writer">작성자</option>
									</select>
								</div>
								<div>
									<input type="text" name="search" id="searchSize" placeholder="검색어 입력">
								</div>
								<div>
									<input type="submit" class="button buttonSize" value="검색" id="searchButtonSize">
								</div>
							</div>
						</form>
				
				<%if(Search != null){ %>
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
						for (int i = 0; i < Search.size(); i++) {
							BoardVO bvo = Search.get(i);
						%>
						<tr>
							<td><%=bvo.getPnum()%></td>
							<td><a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1">
							    <%=bvo.getTitle()%></a></td>
							<td><%=bvo.getNick()%></td>
							<td><%=bvo.getHit()%></td>
							<td><%=bvo.getPdate()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				
				<div class="icondiv">	
					<div>
						<a href = "GoMain" class="button primary buttonSize">메인으로</a>
					</div>
					
					<div class="align-right">
								<a href="GoFree?page=1" class="button">돌아가기</a>
					</div>

				</div>
				

			
				</section>
			</div>
				<%}else{ %>
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
							<td id="cc">
								<a href="GoView?pnum=<%=bvo.getPnum()%>&cnt=1"><%=bvo.getTitle()%></a>
							</td>
							<td>
								<!-- 유림 : 익명 -->
								<% if(bvo.getAnonymous().equals("on")){%>
									익명
								<%} else { %>
									<%=bvo.getNick()%>
								<%} %>
							</td>
							<td><%=bvo.getHit()%></td>
							<td><%=bvo.getPdate()%></td>
							<%-- url?name=value --%>
							<%-- <td>
							<%-- 유림 : 밑에 조건문 한 줄 추가함 
							<% if(((MemberVO) session.getAttribute("vo")).getNick().equals(bvo.getNick())){ %>
								<a href="DeleteService?pnum=<%=bvo.getPnum()%>">X</a>
							<% } %>	
							</td> --%>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				
				<div class="icondiv">	
					<div>
						<a href = "GoMain" class="button buttonSize">메인으로</a>
					</div>
					
					<div class="align-right">
						<a href="GoWriter" class="button primary buttonSize" id="btn">작성하러가기</a>
					</div>
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
		<%} %>
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
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
	$(document).ready(function(){
		console.log('뭐야')
			<% if((MemberVO)session.getAttribute("vo") ==null){ %>
				$('#cc>a').attr('href','#');
				$('#cc>a').on('click', function(){
					alert('로그인 해주세요');
					location.href="login.jsp"
				});	
			<%}%>
	});
	
	
	</script>


</body>
</html>