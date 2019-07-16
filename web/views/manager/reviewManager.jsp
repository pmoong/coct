<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>CoC</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../assets/css/main.css" />
<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

ul {
  list-style-type: none !important;
  margin: 0 !important;
  padding: 0 !important;
  overflow: hidden !important;
  background-color: white !important;
}

li {
  float: left !important;
}

li a {
  display: block !important;
  text-align: center !important;
  padding: 14px 16px !important;
  text-decoration: none !important;
}

li a:hover:not(.active) {
  background-color: yellowgreen !important;
}

li a.active {
  color: white;
  background-color: yellowgreen !important;
}

	.outer {
		width:800px;
		height:500px;
		background:white;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	table {
		border:1px solid green !important;
		text-align:center;
	}
	.tableArea {
		width:650px;
		height:350px;
		margin:0 auto;
	}
	.searchArea {
		width:650px;
		margin:0 auto;
	}
	

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1 id="test">콕</h1>
					<!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
				</div>
					<ul id="logo">
						<li style='color:yellowgreen' >관리자</li>
					</ul>

				<!-- Nav -->
				<nav id="nav" style='left: 20%'>
					<ul>
						<li><a href="../manager/managerIndex.jsp">홈</a></li>
						<li><a href="../manager/statistics.jsp">통계</a></li>
						<li><a href="../manager/rm.jsp">예약관리</a></li>
						<li><a href="../manager/memberManagement.jsp">회원관리</a></li>
						<li><a href="../manager/partnerManagement.jsp">제휴사관리</a></li>
						<li><a href="../manager/bm.jsp">게시판관리</a></li>
						<li><a href="../manager/settlementManagement.jsp">정산내역</a></li>
						<li><a href="../manager/courseManagement.jsp">코스</a></li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li>
						<li><a href="../../index.jsp" style='color:#088A08;'>로그아웃</a></li>
					</ul>
				</nav>
			</header>
			<hr style="border-color:green">
		</div>






	<hr style="border-color:yellowgreen">
		<!-- 여기는 예약관리 입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-12 col-12-medium" style='text-align: left ; margin-top:1%;'>리뷰관리</h3>
				</div>
			</div>
			<hr style="border-color:yellowgreen">
			<!-- Wrapper for slides -->
			

							<div class="outer">
		<br>
		<h2 align="center">리뷰</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th>글번호</th>
					<th width="300px">글제목</th>
					<th width="100px">작성자</th>
					<th>조회수</th>
					<th width="100px">작성일</th>
				</tr>
			<%-- 	<% for(Notice n : list){ %>
				<tr>
					<td><%= n.getNno() %></td>
					<td><%= n.getnTitle() %></td>
					<td><%= n.getnWriter() %></td>
					<td><%= n.getnCount() %></td>
					<td><%= n.getnDate() %></td>
				</tr>
				<% } %> --%>
			</table>
			<div class="searchArea" align="center">
				<select id="searchCondition" name="searchCondition">
					<option value="writer">작성자</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="search">
				<button type="submit" style=" background:yellowgreen;">검색하기</button>
				<%-- <% if(loginUser != null && loginUser.getUserId().equals("admin")){ %> --%>
				<button onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
				<%-- <% } %> --%>
			</div>
		</div>
	</div>
			</div>


		

		
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<div id="footer-wrapper">
			<footer id="footer" class="container">
				<div class="row">
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>콕 / COC</h3>
							<ul class="style2">
								<li><a href="#">Create Or Choice</a></li>
								<li><a href="#">대표 : 김채원</a></li>
								<li><a href="#">사업자 등록번호 : none</a></li>
								<li><a href="#">고객센터 : 010-8692-0000</a></li>
								<li><a href="#">이메일 : coc@kh.com</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>Random Stuff</h3>
							<ul class="style2">
								<li><a href="#">광고/제휴문의</a></li>
								<li><a href="#">서비스문의</a></li>
								<li><a href="#">개인정보 취급방침</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">여행자약관</a></li>
								<li><a href="#">가이드약관</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>MADE BY</h3>
							<ul class="style2">
								<li><a href="#">YUJIN-TAK</a></li>
								<li><a href="#">YEONGMIN-PARK</a></li>
								<li><a href="#">MINHA-HWANG</a></li>
								<li><a href="#">HEEJUNG-JEE</a></li>
								<li><a href="#">HYUNSOO-KIM</a></li>
								<li><a href="#">CHAEWON-KIM</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Contact -->
						<section class="widget contact last">
							<h3>Contact Us</h3>
							<ul>
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands fa-pinterest"><span
										class="label">Pinterest</span></a></li>
							</ul>
							<p><hr>
								서울특별시 강남구 테헤란로<br /> 000빌딩, KH정보교육원<br /> 010-1234-4321
							</p>
						</section>

					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div id="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>

	</div>

	<!-- Scripts -->

	<script src="../../assets/js/jquery.min.js"></script>
	<script src="../../assets/js/jquery.dropotron.min.js"></script>
	<script src="../../assets/js/browser.min.js"></script>
	<script src="../../assets/js/breakpoints.min.js"></script>
	<script src="../../assets/js/util.js"></script>
	<script src="../../assets/js/main.js"></script>

</body>
</html>