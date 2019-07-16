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
 
 .btn-group{ 
            padding: 10px;
}  
 
 .btn-plus {
  position:absolute;
  top:100px;
  left:100px;
  border-radius:50%;
  text-align:center;
   opacity:0;
  transform:scale(2);
  transition:all .3s linear;
}
 
.btn-plus span {
  font-size:9em;
  color:#ffffff;
   user-select:none; 
}
  .img-wrapper:hover .darkness{
  opacity:0.4;
}

.img-wrapper:hover .btn-plus {
  opacity:1;
  transform:scale(1);
}  
 
 #pic1:hover { opacity:0.6; text-align:justify; color:#ffffff; font-size: 40px; font-weight:700; font-family:"맑은 고딕"; padding:30px; }
  
   
#bbtn{
  background:#fcfcfc;
 font-size:1.5em;
font-weight: bold;
}

  #btn{
  background:#fcfcfc;
  color:#852d7a;
  border:none;
  position:relative;
  height:60px;
  font-size:1 em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
  font-weight: bold;
}
#btn:hover{
  background:#fff;
  color:#852d7a;
}
#btn:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
   color:#852d7a;
  background: #852d7a;
  transition:400ms ease all;
}
 #btn:after{
   color:#852d7a;
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}  
#btn:hover:before,#btn:hover:after{
  color:#852d7a;
  width:100%;
  transition:800ms ease all;
}
.carousel-control{
   width:12% !important;
}

.con{
padding-left:30px;
}
#blur{
 width:270px; height:270px;
 }
#blur:hover{ opacity:0.6; text-align:justify; color:#ffffff; }
 
 #bb{
  
 padding-left:30px;
 	font-size:2em;
 	color:#000000;
 	  border:none;
 	font-weight: bold;
 	
 	
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
					<h1 id="test">콕</h1>
					<input type="search" id="search" placeholder="검색어를 입력하세요">
				</div>
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="#">고객센터</a></li>
						<li><a href="#">로그인</a></li>
						<li class="current"><a href="#">회원가입</a></li>
					</ul>
				</nav>
				<nav id="nav" style='left: 30%'>
					<ul>
						<li><a href="#">계획그리기</a></li>
						<li><a href="#">문화즐기기</a></li>
						<li><a href="#">숙소잡기</a></li>
						<li><a href="#">서울나들이</a></li>
					</ul>
				</nav>
			</header>
			<hr>
		</div>
 <br>
      <div id="myCarousel2" class="carousel slide" data-ride="carousel">
         <div class="container">
            <h1>문화</h1>
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
                                src="../images/culture.PNG"  width="500" height="400" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="../images/culture2.PNG" width="500" height="400"   /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="../images/culture4.PNG"  width="500" height="400"   /></a>
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
                                  src="../images/culture3.PNG"  width="500" height="400" /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                        <div class="col-4 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="../images/culture.PNG""  width="500" height="400"  /></a>
                              <div class="inner"></div>
                           </section>
                        </div>

                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                src="../images/culture3.PNG"  width="500" height="400"  /></a>
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
                                  src="../images/culture4.PNG" width="500" height="400" /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="../images/culture4.PNG" width="500" height="400"  /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="../images/culture4.PNG" width="500" height="400"  /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <!-- Left and right controls -->
         <a class="left carousel-control" href="#myCarousel2" data-slide="prev"
            style="background: white"> <span
            class="glyphicon glyphicon-chevron-left"></span> <span
            class="sr-only">Previous</span>
         </a> <a class="right carousel-control" href="#myCarousel2"
            data-slide="next" style="background: white"> <span
            class="glyphicon glyphicon-chevron-right"></span> <span
            class="sr-only">Next</span>
         </a>
      </div>
 <br>
		   <div class="container">
		  <div class="btn-group" >
		   <button id="bbtn" > 전체</button>
					<a class="link1" href="../views/seoulafter.jsp"  ><button id="btn"> 연극</button></a>
					<a href="../views/seoulevening.jsp" ><button id="btn"> 뮤지컬
				</button> </a>
				<a href="../views/seoulevening.jsp" ><button id="btn"> 콘서트
				</button> </a>
				<a href="../views/seoulevening.jsp" ><button id="btn"> 전시회
				</button> </a>
				<a href="../views/seoulevening.jsp" ><button id="btn"> 페스티벌
				</button> </a>
				<a href="../views/seoulevening.jsp" ><button id="btn"> 아동/가족
				</button> </a>
			</div>
			
 		   <div class="container">
			<div class="btn-group" >
				 <button id="bbtn" >
					 월
				</button> 
   
		 		<a href="../views/seoulspring.jsp" ><button id="btn">
				1월</button> </a>
				<a href="../views/seoulsum.jsp"  ><button id="btn">
				2월</button> </a>
				<a href="../views/seoulautumn.jsp" ><button id="btn">
				3월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				4월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				5월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				6월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				7월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				8월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				9월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				10월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				11월</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				12월</button> </a>
 </div>
</div>
</div>
  <div class="container">

<a id="bb" href="#">인기 </a>
<a id="bb" href="#">신규</a>
</div>
		   <div class="container">
   <div class="con"> 
<div class="col-4 col-4-medium col-4-small">
<div id="pic"> 
      
      <img id="blur" src="../images/culture.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"></a>
      
 
       
      <img id="blur"src="../images/culture2.PNG"width="400" height="400"
       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"></a> 
    
      <img id="blur" src="../images/culture3.PNG"width="400" height="400"
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
     
      <img id="blur" src="../images/culture4.PNG" width="400" height="400"
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
       </div>
 </div>
</div>
</div>
<br><br>
		   <div class="container">
		      <div class="con"> 
		   
<div class="col-3 col-3-medium col-3-small">
<div id="pic"> 
      <img id="blur" src="../images/culture.PNG" width="400" height="400"
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
      <img id="blur" src="../images/culture2.PNG" width="400" height="400"
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
      <img id="blur" src="../images/culture3.PNG" width="400" height="400"
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
      <img id="blur" src="../images/culture4.PNG" width="400" height="400"
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
 </div>
 </div>
</div>
</div>
 
<a style="display:scroll;position:fixed;bottom:30px;right:3px;" rel="nofollow"
href="#"  style="font-size:2.0em"><button id="btn">top</button></a> 
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

	<!-- Scripts -->

	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>

</body>
</html> 
