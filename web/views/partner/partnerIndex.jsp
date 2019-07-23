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
table {
	border: 1px solid lightgray !important;
	text-align: center;
}

.tableArea {
	width: 100%;
	height: 20% px;
	margin: 0 auto;
}

table th {
	text-align: center !important;
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
		<%@ include file="/views/common/menubar_partner.jsp"%>





		<hr style="border-color: orangered">
		<!-- 여기는 통계 라인입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>공지사항</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: orange">
		<!-- Wrapper for slides -->


		<div class="container">
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="100px">글번호</th>
						<th width="100px">공지내용</th>
						<th width="100px">작성날짜</th>
						<th width="100px">작성자</th>
						<th width="100px">??</th>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㄴㄴ</td>
						<td>ㄹㄹ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㄴㄴ</td>
						<td>ㅇㅇ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
				</table>
			</div>
		</div>
	</div>


	<!-- Features1 -->
	<hr style="border-color: orange">
	<div class="container">
		<div class="row">
			<h3 class="col-8 col-12-medium"
				style='text-align: left; margin-top: 1%;'>예약현황</h3>
			<h2 class="col-4 col-12-medium"
				style='text-align: right; margin-top: 1%;'>
				<a href="#">+</a>
			</h2>
		</div>
	</div>
	<hr style="border-color: orange">

	<!-- Wrapper for slides -->

	<div class="container">
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">예약번호</th>
					<th width="100px">방이름</th>
					<th width="100px">회원번호</th>
					<th width="100px">예약한날짜</th>
					<th width="100px">예약한상품날짜</th>
					<th width="100px">??</th>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
			</table>
		</div>

	</div>





	<hr style="border-color: orange">
	<!-- 여기는 리뷰 라인입니당 -->
	<div class="container">
		<div class="row">
			<h3 class="col-8 col-12-medium"
				style='text-align: left; margin-top: 1%;'>리뷰</h3>
			<h2 class="col-4 col-12-medium"
				style='text-align: right; margin-top: 1%;'>
				<a href="#">+</a>
			</h2>
		</div>
	</div>
	<hr style="border-color: orange">
	<!-- Wrapper for slides -->


	<div class="container">
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="100px">글번호</th>
						<th width="100px">글내용</th>
						<th width="100px">작성날짜</th>
						<th width="100px">작성자</th>
						<th width="100px">??</th>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㄴㄴ</td>
						<td>ㅇㅇ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㅇㅇ</td>
						<td>ㄹㄹ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
				</table>
			</div>
	</div>


	<!-- Features1 -->
	<hr style="border-color: orange">
	<div class="container">
		<div class="row">
			<h3 class="col-8 col-12-medium"
				style='text-align: left; margin-top: 1%;'>등록기간</h3>
			<h2 class="col-4 col-12-medium"
				style='text-align: right; margin-top: 1%;'>
				<a href="#">+</a>
			</h2>
		</div>
	</div>
	<hr style="border-color: orange">

	<!-- Wrapper for slides -->

	<div class="container">
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="100px">제휴번호</th>
						<th width="100px">구분</th>
						<th width="100px">가입일자</th>
						<th width="100px">해지예정일</th>
						<th width="100px">??</th>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㄴㄴ</td>
						<td>ㅇㅇ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㅇㅇ</td>
						<td>ㄹㄹ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
				</table>
			</div>
		</div>

	</div>

	<!-- 게시판관리 -->
	<hr style="border-color: orange">
	<div class="container">
		<div class="row">
			<h3 class="col-8 col-12-medium"
				style='text-align: left; margin-top: 1%;'>게시판관리</h3>
			<h2 class="col-4 col-12-medium"
				style='text-align: right; margin-top: 1%;'>
				<a href="#">+</a>
			</h2>
		</div>
	</div>
	<hr style="border-color: orange">

	<!-- Wrapper for slides -->

	<div class="item">
		<div id="features-wrapper">
			<div class="container">

				<div class="row">
					<div class="col-4 col-12-medium">
						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../../images/pic01.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../../images/pic02.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../../images/pic03.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
				</div>
			</div>
		</div>

	</div>






	<hr style="border-color: orangered; border-solid: 5px">
	<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>


	</div>

	<!-- Scripts -->


	<%-- <% } %> --%>
</body>
</html>