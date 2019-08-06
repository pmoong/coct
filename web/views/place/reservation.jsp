<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.place.model.vo.*"%>
<%
	ArrayList<LogmentVoYM> randomlist = (ArrayList<LogmentVoYM>) request.getAttribute("randomlist");
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="/Scripts/jquery-1.9.0.js" type="text/javascript"></script> 
<script src="/Scripts/jquery-ui-1.10.0.min.js" type="text/javascript"></script>
<script src="/Scripts/jquery.ui.datepicker-ko.js" type="text/javascript"></script>

 
<style>
body {
	background: white;
}

.max-small {
	width: auto;
	height: auto;
	max-width: 300px;
	max-height: 200px;
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


.ui-datepicker{ font-size: 13.2px; width: 293px; height:295px; z-index:100; margin:0px;}
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
         <div class="box container" style="margin-left:16%;">
            <div class="row">
            	<div class="main" style="width:100%; height:500px; background-image:url('/coc/images/banner7.jpg');
            	background-size:100% 500px; position:relative;">
	               <div style="color:white; text-shadow:1px 1px 2px lightgray; margin-top:5%; margin-left:10%; margin-right:55%; position:absolute;">
	                  <h2 style="font-size:3.5em; font-weight:600;">특색있는 숙소와</h2>
	                  <h2 style="font-size:3.5em; font-weight:600;">즐길거리를</h2>
	                  <h2 style="font-size:3.5em; font-weight:600;">검색하세요</h2>
	               </div>
               </div>
            </div>
         </div>
      </div>
		
		
		
	</div>
	<div>
		<%-- <%
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
							<div class="col-4 col-12-medium">
								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(0).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(0).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(0).getLtitle()%>"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(1).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(1).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(1).getLtitle()%>"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(2).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(2).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(2).getLtitle()%>"></div>
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
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(3).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(3).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(3).getLtitle()%>"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">
								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(4).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(4).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(4).getLtitle()%>"></div>
								</section>

							</div>

							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(5).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(5).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(5).getLtitle()%>"></div>
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
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(6).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(6).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(6).getLtitle()%>"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(7).getLtitle()%>">
									<div type="button" class="image featured"><button  style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(7).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(7).getLtitle()%>"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<form action="/coc/reserveRoomInfo" method="post">
									<input type="hidden" name="ltitle" value="<%=randomlist.get(8).getLtitle()%>">
									<div type="button" class="image featured"><button style="background:white"><img
										class="max-small"
										src="<%=randomlist.get(8).getLfirstimage()%>" alt="" /></button></div>
									</form>
									
									<div class="inner"><input type="hidden" value="<%=randomlist.get(8).getLtitle()%>"></div>
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
										<a href="/coc/searchRoom?locationName=1"
											class="image featured"><img src="/coc/images/gangnam.png"
											alt="" id="blur" style="cursor: pointer;" />
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
									<a href="/coc/searchRoom?locationName=2" class="image featured"><img
										src="/coc/images/gangdong.png" alt=""
										style="cursor: pointer; margin: center;" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=3" class="image featured"><img
										src="/coc/images/gangbuk.jfif" alt="" /></a>

								</section>
							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=4" class="image featured"><img
										src="/coc/images/gangseo.png" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=6" class="image featured"><img
										src="/coc/images/gwangjin2.png" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=5" class="image featured"><img
										src="/coc/images/gwannak.png" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=8" class="image featured"><img
										src="/coc/images/geumcheon.jfif" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=9" class="image featured"><img
										src="/coc/images/nowon.png" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=12"
										class="image featured"><img src="/coc/images/dongjak.png"
										alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=10"
										class="image featured"><img src="/coc/images/dobong.png"
										alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=11"
										class="image featured"><img
										src="/coc/images/dongdaemun.jfif" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=22"
										class="image featured"><img
										src="/coc/images/eunpyeong.png" alt="" /></a>

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
										<a href="/coc/searchRoom?locationName=13"
											class="image featured"><img src="/coc/images/mapo.png"
											alt="" id="blur" style="cursor: pointer" />
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
									<a href="/coc/searchRoom?locationName=23"
										class="image featured"><img src="/coc/images/jongno.png"
										alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=24"
										class="image featured"><img src="/coc/images/junggu.png"
										alt="" /></a>

								</section>
							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=25"
										class="image featured"><img src="/coc/images/jungnang.png"
										alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=14"
										class="image featured"><img
										src="/coc/images/seodeamoon.jfif" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=17"
										class="image featured"><img src="/coc/images/seongbuk.png"
										alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=16"
										class="image featured"><img
										src="/coc/images/seongdong.jfif" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=18"
										class="image featured"><img src="/coc/images/songpa.jfif"
										alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=19"
										class="image featured"><img
										src="/coc/images/yangcheon.jfif" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=20"
										class="image featured"><img
										src="/coc/images/yeongdeungpo.png" alt="" /></a>

								</section>

							</div>
							<div class="col-2 col-10-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="/coc/searchRoom?locationName=21"
										class="image featured"><img src="/coc/images/yongsan.jfif"
										alt="" /></a>

								</section>

							</div>

						</div>
					</div>
				</div>







				<!-- <div align="center">
						<a href="/coc/searchAll" class="image featured"> <img
							src="/coc/images/allSpot.PNG" alt=""
							style="width: 25%; height: 25%;" />
						</a>
					</div> -->
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
	
	


	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>v>

	</div>
</body>
</html>