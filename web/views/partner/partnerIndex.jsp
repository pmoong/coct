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
	<%@ include file="../common/menubar_partner.jsp" %>





	<hr style="border-color:orangered">
		<!-- 여기는 통계 라인입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>공지사항</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:orange">
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
			</div>


		<!-- Features1 -->
		<hr style="border-color:orange">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>예약현황</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:orange">

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


		
		
		
	<hr style="border-color:orange">
		<!-- 여기는 회원관리 라인입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>리뷰</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:orange">
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
			</div>


		<!-- Features1 -->
		<hr style="border-color:orange">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>등록기간</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:orange">

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
<hr style="border-color:orange">
			<div class="container" >
				<div class="row">
					<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>게시판관리</h3>
					<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
				</div>
			</div>
			<hr style="border-color:orange">

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
				
				
				
			

		
<hr style="border-color:orangered ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<div id="footer-wrapper">
			<footer id="footer" class="container">
				<div class="row">
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>콕 / COC</h3>
							<ul class="style2">
								<li><a href="#">Create Or Choice</a></li>
								<li><a href="#">대표 : 김채원</a></li>
								<li><a href="#">사업자 등록번호 : none</a></li>
								<li><a href="#">고객센터 : 010-8692-0000</a></li>
								<li><a href="#">이메일 : coc@kh.com</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>Random Stuff</h3>
							<ul class="style2">
								<li><a href="#">광고/제휴문의</a></li>
								<li><a href="#">서비스문의</a></li>
								<li><a href="#">개인정보 취급방침</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">여행자약관</a></li>
								<li><a href="#">가이드약관</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>MADE BY</h3>
							<ul class="style2">
								<li><a href="#">YUJIN-TAK</a></li>
								<li><a href="#">YEONGMIN-PARK</a></li>
								<li><a href="#">MINHA-HWANG</a></li>
								<li><a href="#">HEEJUNG-JEE</a></li>
								<li><a href="#">HYUNSOO-KIM</a></li>
								<li><a href="#">CHAEWON-KIM</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Contact -->
						<section class="widget contact last">
							<h3>Contact Us</h3>
							<ul>
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands fa-pinterest"><span
										class="label">Pinterest</span></a></li>
							</ul>
							<p><hr>
								서울특별시 강남구 테헤란로<br /> 000빌딩, KH정보교육원<br /> 010-1234-4321
							</p>
						</section>

					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div id="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>

	</div>

	<!-- Scripts -->


<%-- <% } %> --%>
</body>
</html>