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


		<!-- Wrapper for slides -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="container">
				<h3>인기루트로 여행시작하기</h3>
			</div>
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item">
					<div id="features-wrapper">
						<div class="container">

							<div class="row">
								<div class="col-4 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root1.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root2.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root3.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="item active">
					<div id="features-wrapper">
						<div class="container">

							<div class="row">
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root1.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root2.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root3.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="item">
					<div id="features-wrapper">
						<div class="container">

							<div class="row">
								<div class="col-4 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root1.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root2.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/root3.PNG" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"
				style="background: white"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next" style="background: white"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<!-- ----------------------------- -->


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
						<div class="col-12 col-12-medium">
							<!-- Box -->
							<section class="box feature">
								<a href="#" class="image featured"><img
									src="../../images/gd1.PNG" alt="" /></a>
								<div class="inner"></div>
							</section>

						</div>
						<div class="col-12 col-12-medium">

							<!-- Box -->
							<section class="box feature">
								<a href="#" class="image featured"><img
									src="../../images/gd2.PNG" alt="" /></a>
								<div class="inner"></div>
							</section>

						</div>
						<div class="col-12 col-12-medium">

							<!-- Box -->
							<section class="box feature">
								<a href="#" class="image featured"><img
									src="../../images/gd3.png" alt="" /></a>
								<div class="inner"></div>
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
	<br>
	<br>




	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>

	
</body>
</html>