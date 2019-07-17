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

#userId, #userPwd {
	font-size:13px;
}
table{
		border:1px solid black !important;
		text-align:center;
	}
	.tableArea{
		width:100%;
		height:20%px;
		margin:0 auto;
	}
table th{
	text-align:center !important;
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


		<!-- 공지사항 -->
			<div class="container">
				<div class="row">
				
				<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>공지사항</h3>
				<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;'><a href="#">+</a></h2>
				</div>
				<hr style="border:1px solid darkgray">
				<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">글번호</th>
					<th width="100px">카테고리</th>
					<th width="100px">글제목</th>
					<th width="100px">작성자</th>
					<th width="100px">조회수</th>
					<th width="100px">작성일</th>
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
		<br><br><br>
			</div>

			<!-- Wrapper for slides -->
			

				


		<!-- Features1 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>나의 리뷰</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
				<hr style="border:1px solid darkgray">
				<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">글번호</th>
					<th width="100px">업체이름</th>
					<th width="100px">글내용</th>
					<th width="100px">작성날짜</th>
					<th width="100px">작성자</th>
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
		<br><br><br>
			</div>
			
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>이용내역</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
				<hr style="border:1px solid darkgray">
				<br>
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
		<br><br><br>
			</div>
			

			<!-- Wrapper for slides -->

				<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>나의콕</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
				<hr style="border:1px solid darkgray">
				<br>
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


		<!-- Footer -->
		<br><br><br>
	</div>
	
		<%@include file="/views/common/footerbar_customer.jsp" %>
</div>


</body>
</html>