<%@page import="com.model.GoodVO"%>
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
		List<CommentVO> list = (List<CommentVO>)request.getAttribute("list");
		MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	


	<!-- Header -->

	<header id="header">
			<a href="GoMain"><span class="logo"><img src="image/logo.big.png"/></span></a>
			<br><br>
			<h1>자유게시판</h1> 
	</header>

	<!-- 글 내용 보기 -->
	<div id="wrapper">

		<div id="main">
		<section id="content" class="main">
		<span>조회수 : <%= view.getHit() %></span>
		
		
		<!-- 수정 전 글 내용 -->
		<table id="list">
			<tr>
				<td>제목</td>
				<td>
					<%--게시글 제목 출력 --%>
					<%=view.getTitle()%>
				</td>
			</tr>
			<tr>
				<td>작성자</td>

					<td>
						<!-- 유림 : 익명 -->
						<% if(view.getAnonymous().equals("on")){%>
								익명
						<%} else { %>
								<%=view.getNick()%>
						<%} %>
					</td>
				</td>
			</tr>
			<tr>
				<td>작성일</td>
				<td>
					<%= view.getPdate() %>
				</td>
			</tr>
			<tr>
				<td colspan="2">내용</td>
			</tr>
			<tr>
				<td colspan="2">
					<%--게시글 내용 출력 --%>
					<%if(view.getFileName() != null){ %>
					<img style="width:30%" alt="" src="image/<%= view.getFileName()%>">
					<%} %>
					<br>
					<%= view.getContent() %>
				</td>
			</tr>

		</table>
		
		<!-- 공감 수 입력 --> 
			<div class="align-left">
				<form action="GoodInsertService" method="post">
					<input name="pnum" type="hidden" value="<%= view.getPnum() %>">
					<input name="id" type="hidden" value="<%= vo.getId() %>">
					<input type="image" src="image/like.png" class="like_icon" alt="제출버튼" style="width:3%">
					<%= view.getGood() %>
				</form>
				
				
				<div class="align-right">
				 <td>
					<% if(((MemberVO) session.getAttribute("vo")).getNick().equals(view.getNick())){ %>
						<a href="DeleteService?pnum=<%=view.getPnum()%>" style="font-size:15px">삭제</a>
						<% } %>	
				</td>
						
				</div>
			</div>

			<div class="icondiv">
				
				
				<div>
				</div>
				
				<div>
				<% if(((MemberVO) session.getAttribute("vo")).getNick().equals(view.getNick())){ %>
					<a href="GoUpdate?pnum=<%=view.getPnum()%>" class="button primary buttonSize">수정하기</a>
					<%} %>
				</div>
			</div>
		
		<%-- 댓글 보여주기 --%>
		<div class="comments">

               <ul class="myInfo" id="commentUl">
                <%
					for (int i = 0; i < list.size(); i++) {
					CommentVO cvo = list.get(i);
				%>
                  <li>
                  <h3 class="medium"><%=cvo.getNick() %></h3>
                  </li>
                  
                  <li>
                     <p class="medium"><%=cvo.getCdate() %></p>
                  </li>
                  
                     <li class="align-right">
                     
                     <%-- 유림 : 밑에 조건문 한 줄 추가함 --%>
					<% if(((MemberVO) session.getAttribute("vo")).getNick().equals(cvo.getNick())){ %>
                     <a href="ComDeleteService?cnum=<%=cvo.getCnum()%>&pnum=<%=view.getPnum()%>" style="font-size:15px">삭제</a>
                     <%}else{%>
                    	<br><br>
                     <% } %>
                     </li>
                     
                  <p class="commentP"><%=cvo.getComments()%></p>
                 <%
					}
				 %>
               </ul>
                  
            </div>
		
		
		<%-- 댓글 입력 --%>
		<div class="col-12" style="padding-top: 1.5em">
	        <form action="ComInsertService" method="post" class="writercomment">
	        	<div class="col-12">
						<td>
						<input name="pnum" type="hidden" value="<%= view.getPnum() %>">
						<input name="id" type="hidden"  value="<%=vo.getId()%>">
						<input name="nick" type="hidden" value="<%=vo.getNick() %>">
						</td>
					<tr>
						<td colspan="2">
						<textarea name="contents" id="demo-message" placeholder="댓글을 입력하세요." rows="6"></textarea>
						</td>
					</tr>
				</div>
	                  <div class="col-6 col-12-small align-right">
	                        <input type="checkbox" id="demo-copy" name="demo-copy">
	                        <label for="demo-copy">익명</label>
	                  <input type="submit" class="button primary buttonSize" value="댓글등록">
	                  </div>
	           
	         </form>
      	</div>
			<div>
					<a href="GoFree?page=1" class="button buttonSize">글 목록</a>
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
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>