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
		
<%@ include file="/views/common/menubar_manager.jsp" %>





	<hr style="border-color:yellowgreen">
		<!-- 여기는 코스관리 입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-12 col-12-medium" style='text-align: left ; margin-top:1%;'>코스관리</h3>
				</div>
			</div>
			<hr style="border-color:yellowgreen">
			<!-- Wrapper for slides -->
			

				<div class="item">
					<div id="features-wrapper">
						<div class="container">

							<div class="row">
								<div class="col-12 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/gd1.PNG"  alt="" /></a>
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
							<span style="float:right; margin-top:1%;"> 
							<a href="#"><input type="button"  value="추가" ></a>
							<a  href="#"><input type="button"  value="편집" ></a>
							</span>
						</div>
					</div>

				</div>
			</div>


		

		
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>
		

	</div>

</body>
</html>