<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <% Member loginUser = (Member) session.getAttribute("loginUser");%>	 --%>
<!DOCTYPE HTML>

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
	<%-- <% if(loginUser == null || !loginUser.getUserId().equals("admin")){ 
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다!");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request,response);
		
	} else { 
	%> --%>
	<div id="page-wrapper">

		<!-- Header -->
	<%@ include file="/views/common/menubar_partner.jsp" %>





	<hr style="border-color:orangered">
		<!-- 여기는 예약관리 라인입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>예약현황</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:orange">
	
			<!-- Wrapper for slides -->
			

				<div class="outer">
		<br>
		<h2 align="center">예약현황</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th>예약번호</th>
					<th width="200px">요청일자</th>
					<th width="100px">예약자</th>
					<th width="100px">예약일</th>
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
					<option value="writer">예약자</option>
					<option value="title">예약번호</option>
					<option value="content">내용</option>
				</select>
				<input type="search">
				<button type="submit" style=" background:orange;">검색하기</button>
				<%-- <% if(loginUser != null && loginUser.getUserId().equals("admin")){ %> --%>
				<button onclick="location.href='views/notice/noticeInsertForm.jsp'">상태변경하기</button>
				<%-- <% } %> --%>
			</div>
		</div>
	</div>
			</div>
	<hr>
<div class="outer" style="background:skyblue;">
	
</div>		
				
				
			

		
<hr style="border-color:orangered ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>
		

	</div>

	<!-- Scripts -->


<%-- <% } %> --%>
</body>
</html>