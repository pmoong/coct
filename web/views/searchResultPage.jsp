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

.carousel-control {
	width: 12% !important;
}

.glyphicon-chevron-left {
	padding-left: 90%;
}

.glyphicon-chevron-right {
	padding-right: 90%;
}

.planbtn {
	border-radius: 30px;
}

.tes {
	position: relative;
}

.field-container {
	position: relative;
	border: 1px solid skyblue;
	width: 100%;
	height: 20%;
	align: center !important;
}

.icons-container {
	position: absolute;
	top: 11px;
	right: -25px;
	width: 35px;
	height: 35px;
	overflow: hidden;
}

.icon-search {
	position: relative;
	top: 5px;
	left: 8px;
	width: 50%;
	height: 50%;
	opacity: 1;
	border-radius: 50%;
	border: 3px solid mix(#6078EA, white, 35%);
	transition: opacity 0.25s ease, transform 0.43s
		cubic-bezier(0.694, 0.048, 0.335, 1.000);
	place-horder: remove;
}

.field {
	border: 0;
	width: 100%;
	height: 100%;
	padding: 10px 20px;
	background: white;
	border-radius: 3px;
}

.tagBtn {
	width: 15% !important;
	align: center !important;
	margin-left: 20% !important;
	height: 10% !important;
	background: darkgray !important;
}
.col-12-medium{
	padding:30px 20px 10px 20px;
	radius:5px;
}
#banner-wrapper .feature{
	border:3px solid #FFD700;
	border-radius:5px;
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
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1 id="test"><a href="../index.jsp">콕</a></h1>
				</div>

				<div id="logo">
					<fieldset class="field-container" style="width: 160%">
						<input type="text" placeholder="Search..." class="field" />
						<div class="icons-container">
							<div class="icon-search"></div>
						</div>
					</fieldset>
				</div>
			</header>
			<header class="container">
				<input class="tagBtn" type="button" value="태그추가하기"
					onclick="addTag();" style="font-size: small;">
			</header>
		</div>





		<!-- Banner -->
		<div id="banner-wrapper">
			<div class="box container">
			<h3>파워링크</h3>
				<div class="row" style="background:skyblue">
					<div class="col-3 col-12-medium">
						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>		
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div>
			</div>
		</div>



		<div id="features-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
								
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div>
				
				
				
				<div class="row">
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
								
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div>
				
				
				<div class="row">
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
								
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div>
			</div>
		</div>


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
								<br> 서울특별시 강남구 테헤란로<br /> 000빌딩, KH정보교육원<br />
								010-1234-4321
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

	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>

</body>
</html>