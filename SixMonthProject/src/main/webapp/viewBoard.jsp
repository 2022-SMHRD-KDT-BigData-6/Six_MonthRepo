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
		<section id="content" class="main" >
		<div style="border: 1px solid lightgrey; padding: 10px;">
				<span>조회수 : <%= view.getHit() %></span>
			<div class="icondiv" >
				<div>
					<div class="viewBoardProfile">
						<img alt="profile" src="image/profile.png" style="width:100%">
					</div>
				<!-- 익명 -->
					<div class="viewBoardProfile2">
						<h3 class="viewBoardh3">	
						<% if(view.getAnonymous().equals("on")){%>
									익명
							<%} else { %>
									<%=view.getNick()%>
							<%} %>
						</h3>
					<p id="viewBoardp"><%= view.getPdate() %></p>
					</div>
				</div>
				<div>
					<ul class="myInfo">
						<li class="viewBoardProfile2">
							<% if(((MemberVO) session.getAttribute("vo")).getNick().equals(view.getNick())){ %>
							<a href="GoUpdate?pnum=<%=view.getPnum()%>" >수정</a>
							<%} %>
						</li>
						<li class="viewBoardProfile2">
							<% if(((MemberVO) session.getAttribute("vo")).getNick().equals(view.getNick())){ %>
							<a href="DeleteService?pnum=<%=view.getPnum()%>" style="font-size:15px">삭제</a>
							<% } %>	
							
							
						</li>
					</ul>
				</div>
				
			</div>
			
			<%--게시글 제목 출력 --%>
			<h2 class="writeTitle">		
				<%=view.getTitle()%>
			</h2>
			<p>
			<%--게시글 내용 출력 --%>
					<%if(view.getFileName() != null){ %>
					<img style="width:30%" alt="" src="image/<%= view.getFileName()%>">
					<%} %>
					<br><br>
					<%= view.getContent() %>
			</p>
			<!-- 공감수 -->
			<form action="GoodInsertService" method="post" style="margin-bottom: 0px">
					<input name="pnum" type="hidden" value="<%= view.getPnum() %>">
					<input name="id" type="hidden" value="<%= vo.getId() %>">
					<input type="image" src="image/like.png" class="like_icon" alt="제출버튼" style="width:3%">
					<%= view.getGood() %>
			<br>
			</form>
			<br>
			
		</div>
				
		 <%-- 댓글 보여주기 --%>
      <div class="comments">

               <ul class="myInfo" id="commentUl">
                <%
               for (int i = 0; i < list.size(); i++) {
               CommentVO cvo = list.get(i);
            %>
           <div class= "commentBox"style="border: 1px solid lightgrey; padding: 10px; width:100%">
           
            <article class="articlesy">

            <%-- 유림 : 닉네임 익명 수정 --%>
                  <li>
                  	<h3 class="medium"><img alt="profile" src="image/profile.png" class= "pro">
	                  	<% if(cvo.getAnony().equals("on")){ %>
	                  		익명
	                  	<%}else{ %>
	                  	<%=cvo.getNick() %>
	                  	<%} %>
                  	</h3>
                  </li>
                  <!-- -->
                   <p class="commentP">
                   <br>
                   
                     <li style="font-size:18px;"> 
                     <%=cvo.getComments()%> 
                     </li>
                     
                    <div class="align-left">
            </article>
            
            <div>
                     <p class="medium22"><%=cvo.getCdate() %> </p>
            <a href="#" class="vote231"><img src="image/like.png" class="like_icon"> 0</a>
            
                 <% if(((MemberVO) session.getAttribute("vo")).getNick().equals(cvo.getNick())){ %>
                 <a href="ComDeleteService?cnum=<%=cvo.getCnum()%>&pnum=<%=view.getPnum()%>" class="charRed">삭제</a>
                  <%}%><%else{ %><a href="#" class=" size21">공감</a>
                	<% }%>
                 </div>
            </div>
           <br>  
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
	            		<div class="icondiv">
				             <div>
								<a href="GoFree?page=1" class="button buttonSize">글 목록</a>
							 </div>
		                     <div class="col-6 col-12-small align-right">
		                           	<input type="checkbox" id="anony" name="anony">
		                           	<label for="anony">익명</label>
		                     		<input type="submit" class="button primary buttonSize3" value="댓글등록">
		                     </div>
						 </div>
	            </form>
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