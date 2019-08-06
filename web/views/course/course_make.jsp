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

<!-- <link rel="stylesheet" href="/coc/assets/css/main.css" /> -->
<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

.outer {
	width: 400px;
	height: 300px;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}
</style>




</head>
<%@ include file="/views/common/menubar_customer.jsp"%> 


<body class="is-preload homepage">
	<div id="page-wrapper">
		<!-- Banner -->
		<div id="banner-wrapper">
			<div id="banner" class="box container">
				<div class="row">
					<div class="col-7 col-12-medium" align="center">
						<h2 align="center">콕과 함께 당신의</h2>
						<br> <br><br><br>
						<span style="float: left; width: 200px; height: 200px;">
							<a href="/coc/plan" class="button  icon solid planbtn" align="center">계획 그리기</a>
						</span>
						<span style="float: right; width: 200px; height: 200px;">
							<a href="/coc/views/course/recommend.jsp" class="button icon solid planbtn"align="center">계획 추천받기</a>
						</span> <br>
					</div>
					<div class="col-5 col-12-medium">
						<div class="outer" style="background: skyblue;"></div>

					</div>
				</div>
			</div>
		</div>
		<br>


		<hr style="border-color: skyblue">
		<div class="container">
			<div class="row">
				<h3 class="col-12 col-12-medium"
					style='text-align: left; margin-top: 1%;'>인기루트, 지금 바로 확인하세요</h3>
			</div>
		</div>
		<hr style="border-color: skyblue">
		<div>
			<div class="col-12 col-12-medium" style="margin-left:17%; margin-right:14%;">
				<!-- Box -->
				<section class="box feature">
					<a href="/coc/views/course/course1.jsp" class="image featured"><img
						src="../../images/c1.jpg" alt="" /></a>
				</section>

			</div>
		</div>

		<hr style="border-color: skyblue">
		<div class="container">
			<div class="row">
				<h3 class="col-12 col-12-medium"
					style='text-align: left; margin-top: 1%;'>추천 여행</h3>
			</div>
		</div>
		<hr style="border-color: skyblue">
		<!-- Wrapper for slides -->


		<div class="item">
			<div id="features-wrapper">
				<div class="container">

					<div class="row">
						<div class="col-12 col-12-medium" style="margin-left:8%; margin-right:8%;">

							<!-- Box -->
							<section class="box feature">
								<a href="/coc/views/course/course2.jsp" class="image featured"><img
									src="../../images/c2.jpg" alt="" /></a>
							</section>

						</div>
						<div class="col-12 col-12-medium" style="margin-left:8%; margin-right:8%;">

							<!-- Box -->
							<section class="box feature">
								<a href="/coc/views/course/course3.jsp" class="image featured"><img
									src="../../images/c3.jpg" alt="" /></a>
							</section>

						</div>
						<div class="col-12 col-12-medium" style="margin-left:8%; margin-right:8%;">
							<!-- Box -->
							<section class="box feature">
								<a href="/coc/views/course/course1.jsp" class="image featured"><img
									src="../../images/c1.jpg" alt="" /></a>
							</section>

						</div>
						<div class="col-12 col-12-medium" style="margin-left:8%; margin-right:8%;">

							<!-- Box -->
							<section class="box feature">
								<a href="/coc/views/course/course3.jsp" class="image featured"><img
									src="../../images/c5.jpg" alt="" /></a>
							</section>

						</div>
						<div class="col-12 col-12-medium" style="margin-left:8%; margin-right:8%;">

							<!-- Box -->
							<section class="box feature">
								<a href="/coc/views/course/course1.jsp" class="image featured"><img
									src="../../images/c4.jpg" alt="" /></a>
							</section>

						</div>
					</div>

				</div>
			</div>

		</div>
	</div>


	<div align="center">
		<a href="../images/spot.PNG" class="image featured"> <img
			src="../images/allSpot.PNG" alt="" style="width: 25%; height: 25%;" />
		</a>
	</div>
	<br>
	<br>
	<br>

	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>

	
</body>
</html>