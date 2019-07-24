<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.board.model.vo.*"%>
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
%>
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

#userId, #userPwd {
	font-size:13px;
}
select{
	-webkit-appearance: menulist !important;
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
		<%@ include file="/views/common/menubar_customer.jsp" %>

		<div class="container" align="center">
			<div class="outer">
		<br>
		<h2 align="center">공지사항</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th>글번호</th>
					<th width="300px">글제목</th>
					<th width="100px">작성자</th>
					<th>조회수</th>
					<th width="100px">작성일</th>
				</tr>
				<tr>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
				</tr>
				<tr>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
				</tr>
				<tr>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
				</tr>
				<tr>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
				</tr>
				<tr>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
					<td>값받아오기</td>
				</tr>
				<% for(Board b : list){ %>
				<tr>

					<td><%= b.getbCode() %></td>
					<td><%= b.getbType()%></td>
					<td><%= b.getbTitle() %></td>
					<td>??</td>
					<td>??</td>
					<td><%= b.getBdate() %></td>
				</tr>
				<%} %>
			</table>
			<div class="searchArea" align="center">
				<select id="searchCondition" name="searchCondition">
					<option value="wirter">작성자</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="search">
				<button type="submit" style="background:darkgray">검색하기</button>
				<% if(loginUser!=null&&loginUser.getUserId().equals("admin")){ %>
				<button onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
				<%} %>
			</div>
		</div>
	</div>
		</div>

		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>



</body>
</html>