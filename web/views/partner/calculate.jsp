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
<link rel="stylesheet" href="../../assets/css/main.css" />
<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

.outer {
	width: 700px;
	height: 300px;
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
	<%-- <% if(loginUser == null || !loginUser.getUserId().equals("admin")){ 
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다!");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request,response);
		
	} else { 
	%> --%>
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="../common/menubar_partner.jsp"%>





		<hr style="border-color: orangered">
		<!-- 여기는 매장소개 라인입니당 -->
		<!-- Wrapper for slides -->


		<!--  -->
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>정산</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#"><input
						type="button" value="편집"></a>
				</span>

			</div>
		</div>
		<hr style="border-color: orange">
		<div class="outer" style="background: skyblue;"></div>
		<hr style="border-color: orange">
		<!-- Wrapper for slides -->




		<!--  -->
		<!--  -->
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>월 등록비</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;">
					<h5 style='text-align: auto;'>월 55,000원(부가세포함)</h5> <a href="#"><input
						type="button" value="등록하기"></a>
				</span>

			</div>
		</div>
		<hr style="border-color: orange">
		<div class="outer" style="background: skyblue;"></div>
		<hr style="border-color: orange">


		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>파워링크</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;">
					<h5 style='text-align: auto;'>월 44,000원(부가세포함)</h5> <a href="#"><input
						type="button" value="등록하기"></a>
				</span>

			</div>
		</div>
		<hr style="border-color: orange">


		<div class="outer" style="background: skyblue;"></div>



		<hr style="border-color: orangered; border-solid: 5px">
		<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>
		
		

	</div>

	<!-- Scripts -->


	<%-- <% } %> --%>
</body>
</html>