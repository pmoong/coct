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
<link rel="stylesheet" href="../assets/css/main.css" />
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
<%@ include file="../common/menubar_customer.jsp" %>



		<!-- Banner -->
		<div id="banner-wrapper">
			<div id="banner" class="box container">
				<div class="row">
					<div class="col-7 col-12-medium">
						<h2>특색있는 숙소와 </h2>
						<h2>즐길거리를</h2>
						<h2>검색하세요</h2>
					</div>
					<div class="col-5 col-12-medium">
						<div class="_ubzwse">
							<h1 tabindex="-1" class="_14i3z6h">
							<a href="/sitemaps/v2" style="color:inherit;cursor:pointer;text-decoration:none" tabindex="-1"></a></h1>
						</div>
						<div class="_slilk2">
							<form id="MagicCarpetSearchBar" action="/s">
							<div style="margin-top: 16px; margin-bottom: 16px;">
								<div style="margin-bottom: 8px;">
									<label class="_rin72m" for="magic-carpet-koan-search-bar"><span class="_1ep1f1h7"></span></label>
								</div>
								<div class="_bujmdv"><div class="_uz7ac6"><div class="_1dpi2hi"><div dir="ltr"><div class="_1blc3lt">
								<label for="Koan-magic-carpet-koan-search-bar__input" class="_1os10fm">
									<span class="_krjbj">목적지</span>
									<div class="_1u1cgx19"><div class="_1w14zmh">
									<input class="_up0kwni" aria-autocomplete="list" aria-expanded="false" autocomplete="off" autocorrect="off" 
											spellcheck="false" name="query" placeholder="모든 위치" role="combobox" type="text" value="">
									</div></div></label>
								</div></div></div></div>
								<span aria-atomic="true" aria-live="polite" role="status" class="_krjbj"></span></div>
							</div>
							<div style="margin-top: 16px; margin-bottom: 16px;"><div class="_e296pg">
							<div style="margin-top: 8px;"><div class="_1vbsmce"><div style="margin-bottom: 8px;">
								<label class="_rin72m" for="checkin_input"><span class="_1ep1f1h7">체크인</span></label>
								</div><div data-veloute="moweb_datepicker_checkin_input" class="_ne4dj">
								<div class="_9hxttoo"><div dir="ltr"><div class="_fm9j1ug"><div class="_178faes">
								<input class="_14fdu48d" data-veloute="checkin_input" id="checkin_input" name="checkin" placeholder="년/월/일" type="text" value="" readonly="">
								</div></div></div></div></div></div><div class="_1vbsmce"><div style="margin-bottom: 8px;">
								<label class="_rin72m" for="checkout_input"><span class="_1ep1f1h7">체크아웃</span></label>
								</div><div data-veloute="moweb_datepicker_checkout_input" class="_10hp81j">
								<div class="_9hxttoo"><div dir="ltr"><div class="_fm9j1ug"><div class="_178faes">
								<input class="_14fdu48d" data-veloute="checkout_input" id="checkout_input" name="checkout" placeholder="년/월/일" type="text" value="" readonly="">
								</div></div></div></div></div></div>
							</div></div></div>
							<div style="margin-top: 16px; margin-bottom: 16px;"><div style="margin-bottom: 8px;">
								<label class="_rin72m" for="lp-guestpicker"><span class="_1ep1f1h7">인원</span></label>
							</div><div class="_e296pg">
								<button class="_7ykwo4" type="button">인원<div class="_c75x4e">
								<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; display: block; fill: currentcolor;">
								<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path></svg></div>
								</button>
							</div></div>
							<div id="lp-search-button" data-veloute="search_bar_small_search_button" class="_1r868w"><div>
							<button type="submit" class="_1vs0x720" aria-busy="false"><span class="_ftj2sg4">검색</span></button></div></div></form>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="container">
				<h3>제휴</h3>
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
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic01.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic02.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic03.jpg" alt="" /></a>
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
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic02.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic01.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>

								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic03.jpg" alt="" /></a>
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
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic01.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic02.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotel.jsp" class="image featured"><img
											src="../images/pic03.jpg" alt="" /></a>
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
                                                                                                                                                                         

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="container">
				<h3>콕<small>COC</small>과 함께 서울 전체를 여행 해보세요</h3>
			</div>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item">
					<div id="features-wrapper">
						<div class="container">
							<div class="row">
									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotelView.jsp" class="image featured"><img src="../images/reserv.PNG" alt="" style="width:100%; height:100%;"/></a>
										<div class="inner"></div>
									</section>
							</div>
						</div>
					</div>
				</div>

				<div class="item active">
					<div id="features-wrapper">
						<div class="container">

							<div class="row">
									<!-- Box -->
									<section class="box feature">
										<a href="reserv_hotelView.jsp" class="image featured"><img src="../images/reserv.PNG" alt="" style="width:100%; height:100%;"/></a>
										<div class="inner"></div>
									</section>	
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
		
		
	<div align="center">
		<a href="../images/spot.PNG" class="image featured">
		<img src="../images/allSpot.PNG" alt="" style="width:25%; height:25%;"/>
		</a>
	</div>
	<br><br><br><br><br>
	
	
	
	
	
<!-- 
		<!-- Features2 
		<div id="features-wrapper">
			<div class="container">
				<h3>숙박</h3>
				<div class="row">
					<div class="col-4 col-12-medium">
						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic01.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic02.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic03.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
				</div>
			</div>
		</div>

		<!-- Features3 
		<div id="features-wrapper">
			<div class="container">
				<h3>추천코스</h3>
				<div class="row">
					<div class="col-3 col-12-medium">
						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic01.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic02.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic03.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box 
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="images/pic03.jpg" alt="" /></a>
							<div class="inner"></div>
						</section>

					</div>

				</div>
			</div>
		</div>
		 -->
		<!-- 		
			<!-- Main --

				<div id="main-wrapper">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-4 col-12-medium">

								Sidebar
									<div id="sidebar">
										<section class="widget thumbnails">
											<h3>Interesting stuff</h3>
											<div class="grid">
												<div class="row gtr-50">
													<div class="col-6"><a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a></div>
													<div class="col-6"><a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a></div>
													<div class="col-6"><a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a></div>
													<div class="col-6"><a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a></div>
												</div>
											</div>
											<a href="#" class="button icon fa-file-alt">More</a>
										</section>
									</div>

							</div>
							<div class="col-8 col-12-medium imp-medium">

								Content
									<div id="content">
										<section class="last">
											<h2>So what's this all about?</h2>
											<p>This is <strong>Verti</strong>, a free and fully responsive HTML5 site template by <a href="http://html5up.net">HTML5 UP</a>.
											Verti is released under the <a href="http://html5up.net/license">Creative Commons Attribution license</a>, so feel free to use it for any personal or commercial project you might have going on (just don't forget to credit us for the design!)</p>
											<p>Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus. Praesent semper bibendum ipsum, et tristique augue fringilla eu. Vivamus id risus vel dolor auctor euismod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat. Aliquam luctus mattis lectus sit amet phasellus quam turpis.</p>
											<a href="#" class="button icon solid fa-arrow-circle-right">Continue Reading</a>
										</section>
									</div>

							</div>
						</div>
					</div>
				</div>
-->
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
							<p>
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



</body>
</html>