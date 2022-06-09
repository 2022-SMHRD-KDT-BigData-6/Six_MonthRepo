<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<html>
<head>

<title>취업게시판</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no"/>
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css"/>
</noscript>
<style>
#main {
	higth: "500px";
	width: "500px";
}
</style>
</head>
<body class="is-preload">



	<!-- Wrapper -->
	<div id="wrapper">
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header">
				<h1>취업게시판</h1>
				<p>빅데이터 분석서비스 개발과정</p>
			</header>




			<!-- Main -->
			<div id="main">

				<!-- Content -->
				<section id="content" class="main">

					<!-- Text -->
					<section>

						<div id="main">
							<!-- Content  -->
							<secction id="content" class="main">
							<h2>채용정보</h2>
							<h1>서울 취업 정보</h1>
							<h3>WEB(프론트엔드/백엔드) 웹 / 데이터 / 개발자 채용</h3>
							<button id ="button1">더보기</button>
							<br>
							<li><a href="#content1">광주/전남 채용정보</a></li>
							<li><a href="#content2">해외 채용정보</a></li>
							
								<!--1번 취업글 
								<h2>
								<tr>

									<td><a
										href="https://www.jobkorea.co.kr/Recruit/GI_Read/38606405?Oem_Code=C1&logpath=1&stext=%EA%B0%9C%EB%B0%9C%EC%9E%90&listno=2">
											㈜비즈테크파트너스 </a></td>

									<td>


										<h2>
											 <A
												HREF="마우스를 올려놓을때와 내려놓을때 이미지가 바뀝니다." onclickOver="up()"
												onclickOut="down()"> <img NAME="mypic" BORDER=0>
												 <>[LG그룹] JAVA 기반 개발자 및 소프트웨어 Architecture 육성 인재 채용 
												 <script>
													function up() {
														
													}
													function down() {
														document.mypic
													}
													
												</script>
												</span>
										</h2>
									</td>
								</tr>
							</h2>
									-->

					
							<h2>
								<tr>
									
									
											
											<div id = "text"></div>
							
							<script>
							let div= document.getElementById("text");
							let btn= document.querySelector("#button1");
							
							
							
							btn.addEventListener('click',function(){
							//=====
							// 가데이터 만드는것 나중에 지울 것 
							let json = []
							for(let i = 0; i < 5; i++)
							json.push({
								name : "리치앤코" + i,
								content : "[본사] 서버/백엔드 개발자 채용" + i,
								value:"내용 내용 내용 내용내용 "+ i
							})
							//=======
							console.log(json)
							for(let i=1; i < json.length; i++){
							    div.innerHTML += `
							    <table>
								    <h2>
									    <tr>
										    <td>
											    <a href="https://www.jobkorea.co.kr/Recruit/GI_Read/38630129?Oem_Code=C1&logpath=1&stext=%EA%B0%9C%EB%B0%9C%EC%9E%90&listno=`+i+`">
											  
											    	` + json[i].name + `
											    </a>
										    </td>
										    <td>` + json[i].content + `</td>
										    <td>` + json[i].value + `</td>
									    </tr>
								    </h2>
							    </table>`;
							    
							}
							});
						</script>
						
											
										
					
							
						</div>



						</button>
						<div id="text"></div>
		</table>
	</div>

	<div id="wrapper">
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header"> </header>

			<!-- Main -->
			<div id="main">

				<!-- Content -->
				<section id="content" class="main">

					<!-- Text -->
					<section>

						<div id="main">
							<!-- Content  -->
							<secction id="content1" class="main">
							<h2>공고</h2>
							<h1>광주/전남 취업 정보.</h1>
							
							<li><a href="#content" class="active"><button">서울채용정보</button></a></li>
							
							<li><a href="#content2">해외 채용정보</a></li>
							
							<button id ="button1">더보기</button>
						</div>
						
						

						<div id="text"></div>
		</table>
	</div>
	<div id="wrapper">
		<table higth="1000px" width="1000px">
			<!-- Header -->
			<header id="header"> </header>

			<!-- Main -->
			<div id="main">

				<!-- Content -->
				<section id="content" class="main">

					<!-- Text -->
					<section>

						<div id="main">
							<!-- Content  -->
							<secction id="content2" class="main">
							<h2>공고</h2>
							<h1>해외 취업 정보</h1>
							<li><a href="#content" class="active">서울 채용정보</a></li>
							<li><a href="#content1">광주/전남 채용정보</a></li>
						</div>

						</button>
						<div id="text"></div>
		</table>
	</div>



	</secction>
	while (!deck.isInOrder()) { print 'Iteration ' + i; deck.shuffle();
	i++; } print 'It took ' + i + ' iterations to sort the deck.';
	</code>
	</pre>
	</section>

	<!-- Lists -->
	<section>
		<h2>Lists</h2>
		<div class="row">
			<div class="col-6 col-12-medium">
				<h3>Unordered</h3>
				<ul>
					<li>Dolor pulvinar magna etiam.</li>
					<li>Sagittis sed lorem adipiscing.</li>
					<li>Felis enim etiam feugiat.</li>
					<li>Ipsum lorem nullam consequat.</li>
				</ul>
				<h3>Alternate</h3>
				<ul class="alt">
					<li>Dolor pulvinar magna etiam.</li>
					<li>Sagittis sed lorem adipiscing.</li>
					<li>Felis enim etiam feugiat.</li>
					<li>Ipsum lorem nullam consequat.</li>
				</ul>
			</div>
			<div class="col-6 col-12-medium">
				<h3>Ordered</h3>
				<ol>
					<li>Dolor pulvinar etiam.</li>
					<li>Etiam vel felis viverra.</li>
					<li>Felis enim feugiat.</li>
					<li>Dolor pulvinar etiam.</li>
					<li>Etiam vel felis lorem.</li>
					<li>Felis enim et feugiat.</li>
				</ol>
				<h3>Icons</h3>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble"><span
							class="label">Dribbble</span></a></li>
				</ul>
				<ul class="icons">
					<li><a href="#" class="icon brands alt fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands alt fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands alt fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands alt fa-github"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands alt fa-dribbble"><span
							class="label">Dribbble</span></a></li>
				</ul>
			</div>
		</div>
		<h2>Actions</h2>
		<div class="row">
			<div class="col-6 col-12-medium">
				<ul class="actions">
					<li><a href="#" class="button primary">Default</a></li>
					<li><a href="#" class="button">Default</a></li>
				</ul>
				<ul class="actions small">
					<li><a href="#" class="button primary small">Small</a></li>
					<li><a href="#" class="button small">Small</a></li>
				</ul>
				<ul class="actions stacked">
					<li><a href="#" class="button primary">Default</a></li>
					<li><a href="#" class="button">Default</a></li>
				</ul>
				<ul class="actions stacked">
					<li><a href="#" class="button primary small">Small</a></li>
					<li><a href="#" class="button small">Small</a></li>
				</ul>
			</div>
			<div class="col-6 col-12-medium">
				<ul class="actions stacked">
					<li><a href="#" class="button primary fit">Default</a></li>
					<li><a href="#" class="button fit">Default</a></li>
				</ul>
				<ul class="actions stacked">
					<li><a href="#" class="button primary small fit">Small</a></li>
					<li><a href="#" class="button small fit">Small</a></li>
				</ul>
			</div>
		</div>
	</section>

	<!-- Table -->
	<section>
		<h2>Table</h2>
		<h3>Default</h3>
		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Item One</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Two</td>
						<td>Vis ac commodo adipiscing arcu aliquet.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Three</td>
						<td>Morbi faucibus arcu accumsan lorem.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Four</td>
						<td>Vitae integer tempus condimentum.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Five</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
						<td>100.00</td>
					</tr>
				</tfoot>
			</table>
		</div>

		<h3>Alternate</h3>
		<div class="table-wrapper">
			<table class="alt">
				<thead>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Item One</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Two</td>
						<td>Vis ac commodo adipiscing arcu aliquet.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Three</td>
						<td>Morbi faucibus arcu accumsan lorem.</td>
						<td>29.99</td>
					</tr>
					<tr>
						<td>Item Four</td>
						<td>Vitae integer tempus condimentum.</td>
						<td>19.99</td>
					</tr>
					<tr>
						<td>Item Five</td>
						<td>Ante turpis integer aliquet porttitor.</td>
						<td>29.99</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"></td>
						<td>100.00</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</section>

	<!-- Buttons -->
	<section>
		<h3>Buttons</h3>
		<ul class="actions">
			<li><a href="#" class="button primary">Primary</a></li>
			<li><a href="#" class="button">Default</a></li>
		</ul>
		<ul class="actions">
			<li><a href="#" class="button large">Large</a></li>
			<li><a href="#" class="button">Default</a></li>
			<li><a href="#" class="button small">Small</a></li>
		</ul>
		<ul class="actions fit">
			<li><a href="#" class="button primary fit">Fit</a></li>
			<li><a href="#" class="button fit">Fit</a></li>
			<li><a href="#" class="button fit">Fit</a></li>
		</ul>
		<ul class="actions fit small">
			<li><a href="#" class="button primary fit small">Fit + Small</a></li>
			<li><a href="#" class="button fit small">Fit + Small</a></li>
			<li><a href="#" class="button fit small">Fit + Small</a></li>
		</ul>
		<ul class="actions">
			<li><a href="#" class="button primary icon solidfa-download">Icon</a></li>
			<li><a href="#" class="button icon solid fa-upload">Icon</a></li>
			<li><a href="#" class="button icon solid fa-save">Icon</a></li>
		</ul>
		<ul class="actions">
			<li><span class="button primary disabled">Disabled</span></li>
			<li><span class="button disabled">Disabled</span></li>
		</ul>
	</section>

	<!-- Form -->
	<section>
		<h2>Form</h2>
		<form method="post" action="#">
			<div class="row gtr-uniform">
				<div class="col-6 col-12-xsmall">
					<input type="text" name="demo-name" id="demo-name" value=""
						placeholder="Name" />
				</div>
				<div class="col-6 col-12-xsmall">
					<input type="email" name="demo-email" id="demo-email" value=""
						placeholder="Email" />
				</div>
				<div class="col-12">
					<select name="demo-category" id="demo-category">
						<option value="">- Category -</option>
						<option value="1">Manufacturing</option>
						<option value="1">Shipping</option>
						<option value="1">Administration</option>
						<option value="1">Human Resources</option>
					</select>
				</div>
				<div class="col-4 col-12-small">
					<input type="radio" id="demo-priority-low" name="demo-priority"
						checked> <label for="demo-priority-low">Low</label>
				</div>
				<div class="col-4 col-12-small">
					<input type="radio" id="demo-priority-normal" name="demo-priority">
					<label for="demo-priority-normal">Normal</label>
				</div>
				<div class="col-4 col-12-small">
					<input type="radio" id="demo-priority-high" name="demo-priority">
					<label for="demo-priority-high">High</label>
				</div>
				<div class="col-6 col-12-small">
					<input type="checkbox" id="demo-copy" name="demo-copy"> <label
						for="demo-copy">Email me a copy</label>
				</div>
				<div class="col-6 col-12-small">
					<input type="checkbox" id="demo-human" name="demo-human" checked>
					<label for="demo-human">Not a robot</label>
				</div>
				<div class="col-12">
					<textarea name="demo-message" id="demo-message"
						placeholder="Enter your message" rows="6"></textarea>
				</div>
				<div class="col-12">
					<ul class="actions">
						<li><input type="submit" value="Send Message" class="primary" /></li>
						<li><input type="reset" value="Reset" /></li>
					</ul>
				</div>
			</div>
		</form>
	</section>

	<!-- Image -->
	<section>
		<h2>Image</h2>
		<h3>Fit</h3>
		<div class="box alt">
			<div class="row gtr-uniform">
				<div class="col-12">
					<span class="image fit"><img src="images/pic04.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic01.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic02.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic03.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic03.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic01.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic02.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic02.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic03.jpg" alt="" /></span>
				</div>
				<div class="col-4">
					<span class="image fit"><img src="images/pic01.jpg" alt="" /></span>
				</div>
			</div>
		</div>
		<h3>Left &amp; Right</h3>
		<p>
			<span class="image left"><img src="images/pic05.jpg" alt="" /></span>Fringilla
			nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis
			eget. tempus euismod. Vestibulum ante ipsum primis in faucibus
			vestibulum. Blandit adipiscing eu felis iaculis volutpat ac
			adipiscing accumsan eu faucibus. Integer ac pellentesque praesent
			tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum
			primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis
			volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque
			praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis
			eget. tempus euismod. Vestibulum ante ipsum primis in faucibus
			vestibulum. Blandit adipiscing eu felis iaculis volutpat ac
			adipiscing accumsan eu faucibus. Integer ac pellentesque praesent
			tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum
			primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis
			volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque
			praesent. Blandit adipiscing eu felis iaculis volutpat ac adipiscing
			accumsan eu faucibus. Integer ac pellentesque praesent tincidunt
			felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in
			faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac
			adipiscing accumsan eu faucibus. Integer ac pellentesque praesent
			lorem ipsum dolor sit amet veroeros consequat. Etiam tempus lorem
			ipsum.
		</p>
		<p>
			<span class="image right"><img src="images/pic06.jpg" alt="" /></span>Fringilla
			nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis
			eget. tempus euismod. Vestibulum ante ipsum primis in faucibus
			vestibulum. Blandit adipiscing eu felis iaculis volutpat ac
			adipiscing accumsan eu faucibus. Integer ac pellentesque praesent
			tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum
			primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis
			volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque
			praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis
			eget. tempus euismod. Vestibulum ante ipsum primis in faucibus
			vestibulum. Blandit adipiscing eu felis iaculis volutpat ac
			adipiscing accumsan eu faucibus. Integer ac pellentesque praesent
			tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum
			primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis
			volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque
			praesent. Blandit adipiscing eu felis iaculis volutpat ac adipiscing
			accumsan eu faucibus. Integer ac pellentesque praesent tincidunt
			felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in
			faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac
			adipiscing accumsan eu faucibus..
		</p>
	</section>

	</section>

	</div>

	<!-- Footer -->
	<footer id="footer">
		<section>
			<h2>Aliquam sed mauris</h2>
			<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat
				consequat magna adipiscing tempus etiam dolore veroeros. eget
				dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula
				erat egestas velit, vitae tincidunt odio.</p>
			<ul class="actions">
				<li><a href="#" class="button">Learn More</a></li>
			</ul>
		</section>
		<section>
			<h2>Etiam feugiat</h2>
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