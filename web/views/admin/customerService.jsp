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
<link rel="stylesheet" href="/coc/assets/css/main.css" />
<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

.outer {
	width: 800px;
	height: 500px;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

table {
	border: 1px solid green !important;
	text-align: center;
}

.tableArea {
	width: 650px;
	height: 350px;
	margin: 0 auto;
}

.searchArea {
	width: 650px;
	margin: 0 auto;
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


		<%@ include file="/views/common/menubar_manager.jsp"%>




		<hr style="border-color: yellowgreen">
		<!-- 여기는 고객센터 입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-12 col-12-medium"
					style='text-align: left; margin-top: 1%;'>고객센터</h3>
			</div>
		</div>
		<hr style="border-color: yellowgreen">
		<!-- Wrapper for slides -->


		<div class="outer">
			<br>
			<h2 align="center">고객센터</h2>
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="100px">게시물번호</th>
						<th width="100px">게시내용</th>
						<th width="100px">게시날짜</th>
						<th width="100px">??</th>
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
					</select> <input type="search">
					<button type="submit" style="background: yellowgreen;">검색하기</button>
					<%-- <% if(loginUser != null && loginUser.getUserId().equals("admin")){ %> --%>
					<button onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
					<%-- <% } %> --%>
				</div>
			</div>
		</div>
	</div>





	<hr style="border-color: yellowgreen; border-solid: 5px">
	<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>


	</div>


</body>
</html>