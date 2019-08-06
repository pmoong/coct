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
         <div class="box container" style="margin-left:16%;">
            <div class="row">
            	<div class="main" style="width:100%; height:500px; background-image:url('/coc/images/banner2.PNG');
            	background-size:100% 500px; position:relative;">
	               <div style="color:white; text-shadow:1px 1px 2px lightgray; margin-top:5%; margin-left:10%; margin-right:60%; position:absolute;">
	                  <h2 style="font-size:3.5em; font-weight:600;">지금 바로</h2>
	                  <h2 style="font-size:3.5em; font-weight:600;">계획을</h2>
	                  <h2 style="font-size:3.5em; font-weight:600;">세워보세요</h2>
	               </div>
               <div style="float:right; margin-right:20%;">
               	 <div style="margin-top:100%;">
                     <div><a href="/coc/plan" class="btn btn-default btn-lg btn-block"><label style="font-size:1.3em;">&nbsp;계획 그리기&nbsp;</label></a></div>
                     <div style="height:20px;"></div>
                     <div><a href="/coc/views/course/recommend.jsp" class="btn btn-default btn-lg btn-block"><label style="font-size:1.3em;">&nbsp;계획 추천받기&nbsp;</label></a></div>
                     <div style="height:80px;"></div>
                  </div>
               </div>
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