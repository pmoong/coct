<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*, com.cw.coc.place.model.vo.*"%>
   <%
	ArrayList<LogmentVo> randomlist = (ArrayList<LogmentVo>) request.getAttribute("randomlist");
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
.carousel-control{
   width:12% !important;
}
.glyphicon-chevron-left{
   padding-left:90%;
}
.glyphicon-chevron-right{
   padding-right:90%;
}
.planbtn{
   border-radius:30px;
}
.tes{
	position:relative;
}
.fa{
	display:inline !important;
	line-height:100%;
	color:black;
	padding-left:5px;
	margin-top:10px;
}
.submit{
	float:right;
	width:5px;
	left:0;
	top:0;
	font-size: 1.2em;
	text-align: center;
	cursor: pointer;
	background-color: white;
}
.search-box-container{
	display: inline-block;
	box-sizing: content-box;
	height: 50px;
	width: 50px;
	background-color: white;
	border:3px solid black;
	border-radius:40px;
	overflow: hidden;
}
.nav2{
	margin-right:35%;
}
</style>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
</head>
<body class="is-preload homepage">
   <div id="page-wrapper">

      <!-- Header -->
      <%@ include file="/views/common/menubar_customer.jsp" %>


      <!-- Banner -->
      <div id="banner-wrapper">
         <div class="box container" style="margin-left:16%;">
            <div class="row">
            	<div class="main" style="width:100%; height:500px; background-image:url('/coc/images/banner1.jpg');
            	background-size:100% 500px; position:relative;">
	               <div style="color:white; text-shadow:1px 1px 2px lightgray; margin-top:5%; margin-left:10%; margin-right:60%; position:absolute;">
	                  <h2 style="font-size:3.5em; font-weight:600;">COC과 함께</h2>
	                  <h2 style="font-size:3.5em; font-weight:600;">당신의 여행을</h2>
	                  <h2 style="font-size:3.5em; font-weight:600;">계획해보세요</h2>
	               </div>
               <div style="float:right; margin-right:20%;">
               	 <div style="margin-top:100%;">
                     <div><a href="#" class="btn btn-default btn-lg btn-block"><label style="font-size:1.3em;">&nbsp;계획 그리기&nbsp;</label></a></div>
                     <div style="height:20px;"></div>
                     <div><a href="/coc/views/course/recommend.jsp" class="btn btn-default btn-lg btn-block"><label style="font-size:1.3em;">&nbsp;계획 추천받기&nbsp;</label></a></div>
                     <div style="height:80px;"></div>
                  </div>
               </div>
               </div>
            </div>
         </div>
      </div>


	<!-- 식당 -->
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
         <div class="container">
            <h3>식당</h3>
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
                                 src="images/pic01.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic03.jpg" alt="" /></a>
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
                                 src="images/pic02.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic01.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>

                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic03.jpg" alt="" /></a>
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
                                 src="images/pic01.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic03.jpg" alt="" /></a>
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


		<!--  숙소  -->
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
									
									<div class="inner"><%=randomlist.get(0).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(1).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(2).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(3).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(4).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(5).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(6).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(7).getLtitle()%></div>
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
									
									<div class="inner"><%=randomlist.get(8).getLtitle()%></div>
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










      <!--  추천코스 -->
      <div id="myCarousel3" class="carousel slide" data-ride="carousel">
         <div class="container">
            <h3>추천코스</h3>
         </div>
         <!-- Indicators -->
         <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
            <li data-target="#myCarousel" data-slide-to="4" class=""></li>
         </ol>

         <!-- Wrapper for slides -->
         <div class="carousel-inner">
            <div class="item">
               <div id="features-wrapper">
                  <div class="container">

                     <div class="row">
                        <div class="col-12 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/c1.jpg" alt="" /></a>
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
                        <div class="col-12 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/c2.jpg" alt="" /></a>
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
                        <div class="col-12 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/c3.jpg" alt="" /></a>
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
                        <div class="col-12 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/c4.jpg" alt="" /></a>
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
                        <div class="col-12 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/c5.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>

                     </div>
                  </div>
               </div>

            </div>
         </div>

         <!-- Left and right controls -->
         <a class="left carousel-control" href="#myCarousel3" data-slide="prev"
            style="background: white"> <span
            class="glyphicon glyphicon-chevron-left"></span> <span
            class="sr-only">Previous</span>
         </a> <a class="right carousel-control" href="#myCarousel3"
            data-slide="next" style="background: white"> <span
            class="glyphicon glyphicon-chevron-right"></span> <span
            class="sr-only">Next</span>
         </a>
      </div>
      
      <!-- Footer -->
      
      <%@include file="/views/common/footerbar_customer.jsp" %>
      

   </div>

   <!-- Scripts -->

</body>
</html>