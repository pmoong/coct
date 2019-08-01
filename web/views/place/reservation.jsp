<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.place.model.vo.*"%>
<%
	ArrayList<Place> randomlist = (ArrayList<Place>) request.getAttribute("randomlist");
%>
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

.img {
	position: relative;
	/* height: 100vh; */
	background-size: cover;
}

.img-cover {
	position: absolute;
	/* height: 100%;
       width: 100%; */
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1;
}

.img .content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 5rem;
	color: white;
	z-index: 2;
	text-align: center;
}

#blur:hover {
	opacity: 0.6 !important;
	text-align: justify !important;
	color: #ffffff !important;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<%@ include file="/views/common/menubar_customer.jsp"%>


<body class="is-preload homepage">
	<div id="page-wrapper">
		<!-- Banner -->
		<div id="banner-wrapper">
			<div id="banner" class="box container">
				<div class="row">
					<div class="col-7 col-12-medium">
						<h2>특색있는 숙소와</h2>
						<h2>즐길거리를</h2>
						<h2>검색하세요</h2>
					</div>
					<div class="col-5 col-12-medium">
						<div class="_ubzwse">
							<h1 tabindex="-1" class="_14i3z6h">
								<a href="/sitemaps/v2"
									style="color: inherit; cursor: pointer; text-decoration: none"
									tabindex="-1"></a>
							</h1>
						</div>
						<div class="_slilk2">
							<form id="MagicCarpetSearchBar" action="/s">
								<div style="margin-top: 16px; margin-bottom: 16px;">
									<div style="margin-bottom: 8px;">
										<label class="_rin72m" for="magic-carpet-koan-search-bar"><span
											class="_1ep1f1h7"></span></label>
									</div>
									<div class="_bujmdv">
										<div class="_uz7ac6">
											<div class="_1dpi2hi">
												<div dir="ltr">
													<div class="_1blc3lt">
														<label for="Koan-magic-carpet-koan-search-bar__input"
															class="_1os10fm"> <span class="_krjbj">목적지</span>
															<div class="_1u1cgx19">
																<div class="_1w14zmh"
																	style="margin-top: 16px; margin-bottom: 8px;">
																	<input type="text" autocomplete="off"
																		aria-autocomplete="list" aria-expanded="false"
																		aria-haspopup="true" class="_1mcoxpnl"
																		id="lp-geocomplete" name="location"
																		placeholder="모든 위치" role="combobox" value=""
																		aria-owns="awesomplete_list_1">
																</div>
															</div></label>
													</div>
												</div>
											</div>
										</div>
										<span aria-atomic="true" aria-live="polite" role="status"
											class="_krjbj"></span>
									</div>
								</div>
								<div style="margin-top: 16px; margin-bottom: 16px;">
									<div class="_e296pg">
										<div style="margin-top: 8px;">
											<div class="_1vbsmce">
												<div style="margin-bottom: 8px;">
													<label class="_rin72m" for="checkin_input"><span
														class="_1ep1f1h7">체크인</span></label>
												</div>
												<div data-veloute="moweb_datepicker_checkin_input"
													class="_ne4dj">
													<div class="_9hxttoo">
														<div dir="ltr">
															<div class="_fm9j1ug">
																<div class="_178faes">
																	<input class="_14fdu48d" data-veloute="checkin_input"
																		id="checkin_input" name="checkin" placeholder="년/월/일"
																		type="text" value="">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="_1vbsmce">
												<div style="margin-top: 16px; margin-bottom: 8px;">
													<label class="_rin72m" for="checkout_input"><span
														class="_1ep1f1h7">체크아웃</span></label>
												</div>
												<div data-veloute="moweb_datepicker_checkout_input"
													class="_10hp81j">
													<div class="_9hxttoo">
														<div dir="ltr">
															<div class="_fm9j1ug">
																<div class="_178faes">
																	<input class="_14fdu48d" data-veloute="checkout_input"
																		id="checkout_input" name="checkout"
																		placeholder="년/월/일" type="text" value="">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="_e296pg">


									<!-- 	인원 수정중 -->
									<div style="margin-top: 20px; margin-bottom: 24px">
										<div id="lp-guestpicker">
											<div class="_1tgv80u">
												<div style="margin-bottom: 8px">
													<label class="_rin72m" for="adults"><span
														class="_1ep1f1h7">어른</span></label>
												</div>
												<div class="_ne4dj">
													<div class="_pwhb9t">
														<div class="_9hxttoo">
															<div class="_1ib7atn3">
																<div class="_y9ev9r">
																	<select id="adults" name="adults" class="_bwyiq2l"
																		data-vars-select-name="adults"><option
																			selected="" value="1">성인 1명</option>
																		<option value="2">성인 2명</option>
																		<option value="3">성인 3명</option>
																		<option value="4">성인 4명</option>
																		<option value="5">성인 5명</option>
																		<option value="6">성인 6명</option>
																		<option value="7">성인 7명</option>
																		<option value="8">성인 8명</option>
																		<option value="9">성인 9명</option>
																		<option value="10">성인 10명</option>
																		<option value="11">성인 11명</option>
																		<option value="12">성인 12명</option>
																		<option value="13">성인 13명</option>
																		<option value="14">성인 14명</option>
																		<option value="15">성인 15명</option>
																		<option value="16">성인 16명</option></select>
																</div>
																<span class="_1idvclr"><path
																		d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																		fill-rule="evenodd"></path> </svg></span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="_1tgv80u">
												<div style="margin-top: 20px; margin-bottom: 8px">
													<label class="_rin72m" for="children"><span
														class="_1ep1f1h7">어린이</span></label>
												</div>
												<div class="_10hp81j">
													<div class="_pwhb9t">
														<div class="_9hxttoo">
															<div class="_1ib7atn3">
																<div class="_y9ev9r">
																	<select id="children" name="children" class="_bwyiq2l"
																		data-vars-select-name="children"><option
																			selected="" value="0">어린이 0명</option>
																		<option value="1">어린이 1명</option>
																		<option value="2">어린이 2명</option>
																		<option value="3">어린이 3명</option>
																		<option value="4">어린이 4명</option>
																		<option value="5">어린이 5명</option></select>
																</div>
																<span class="_1idvclr"> <path
																		d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																		fill-rule="evenodd"></path> </svg></span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>
						</div>

						<div id="lp-search-button"
							data-veloute="search_bar_small_search_button" class="_1r868w">
							<div>
								<button type="submit" class="_1vs0x720" aria-busy="false">
									<a class="_ftj2sg4">검색</a>
								</button>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div> <%-- <%
	for(Place p : randomlist) { %>
	<button type="button"><p><%System.out.println(p); %></p></button>
	<%} %> --%>
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
							<div class="col-4 col-12-medium" >
								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(0).getImage()%>" alt=""/></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium" >

								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(1).getImage()%>" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium" >

								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(2).getImage()%>" alt="" /></a>
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
							<div class="col-4 col-12-medium" >

								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(3).getImage()%>" alt=""/></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium" >
								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(4).getImage()%>" alt=""/></a>
									<div class="inner"></div>
								</section>

							</div>

							<div class="col-4 col-12-medium" >

								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(5).getImage()%>" alt=""/></a>
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
							<div class="col-4 col-12-medium" >
								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(6).getImage()%>" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium" >

								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(7).getImage()%>" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium" >

								<!-- Box -->
								<section class="box feature">
									<a href="reserv_hotelView.jsp" class="image featured"><img
										src="<%=randomlist.get(8).getImage()%>" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							
						</div>
					</div>
				</div>

			</div>
		</div>
		


							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev" style="background: white"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next" style="background: white"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
						<!-- ----------------------------- -->



						<div id="myCarousel2" class="carousel slide" data-ride="carousel">
							<div class="container">
								<h3>
									콕<small>COC</small>과 함께 서울 전체를 여행 해보세요
								</h3>
							</div>


							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel2" data-slide-to="1" class=""></li>

							</ol>


							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<div id="features-wrapper">
										<div class="container">

											<div class="row">
												<div class="col-2 col-10-medium">
													<!-- Box -->
													<section class="box feature">
														<div class="img">
															<a href="/coc/searchRoom?locationName=40"
																class="image featured"><img
																src="/coc/images/gangnam.png" alt="" id="blur"
																style="cursor: pointer" />
																<div class="content">
																	<!-- <p>Hello!</p> -->

																</div>
																<div class="img-cover"></div> </a>

														</div>
													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="/coc/searchRoom?locationName=41"
															class="image featured"><img
															src="/coc/images/seocho.gif" alt="" id="blur"
															style="cursor: pointer" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>
												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic02.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic02.jpg" alt="" /></a>

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
												<div class="col-2 col-10-medium">
													<!-- Box -->
													<section class="box feature">
														<div class="img">
															<a href="reserv_hotel.jsp" class="image featured"><img
																src="/coc/images/pic01.jpg" alt="" id="blur"
																style="cursor: pointer" />
																<div class="content">
																	<p>Hi!</p>

																</div>
																<div class="img-cover"></div> </a>

														</div>
													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic02.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>
												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>
														<div class="inner"></div>
													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic03.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic01.jpg" alt="" /></a>

													</section>

												</div>
												<div class="col-2 col-10-medium">

													<!-- Box -->
													<section class="box feature">
														<a href="reserv_hotel.jsp" class="image featured"><img
															src="/coc/images/pic01.jpg" alt="" /></a>

													</section>

												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Left and right controls -->
								<a class="left carousel-control" href="#myCarousel2"
									data-slide="prev" style="background: white"> <span
									class="glyphicon glyphicon-chevron-left"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="right carousel-control" href="#myCarousel2"
									data-slide="next" style="background: white"> <span
									class="glyphicon glyphicon-chevron-right"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>





					<div align="center">
						<a href="/coc/searchAll" class="image featured"> <img
							src="/coc/images/allSpot.PNG" alt=""
							style="width: 25%; height: 25%;" />
						</a>
					</div>
					<br> <br> <br> <br> <br>





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
					<%@include file="/views/common/footerbar_customer.jsp"%>v>

				</div>
</body>
</html>