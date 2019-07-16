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
	<%@ include file="../common/menubar_manager.jsp" %>





	<hr style="border-color:yellowgreen">
		<!-- 여기는 통계 라인입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>통계</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:yellowgreen">
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


		<!-- Features1 -->
		<hr style="border-color:yellowgreen">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>예약관리</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:yellowgreen">

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


		
		
		
	<hr style="border-color:yellowgreen">
		<!-- 여기는 회원관리 라인입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>회원관리</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:yellowgreen">
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


		<!-- Features1 -->
		<hr style="border-color:yellowgreen">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>제휴사관리</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:yellowgreen">

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

<!-- 게시판관리 -->
<hr style="border-color:yellowgreen">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>게시판관리</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:yellowgreen">

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
				
				
				
				<!-- 정산내역  -->
				<hr style="border-color:yellowgreen">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>정산내역</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:yellowgreen">

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

		
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="../common/footerbar_customer.jsp" %>
		

	</div>

	<!-- Scripts -->


<%-- <% } %> --%>
</body>
</html>