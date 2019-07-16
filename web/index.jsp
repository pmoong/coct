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
<link rel="stylesheet" href="assets/css/main.css" />
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

</head>
<body class="is-preload homepage">
   <div id="page-wrapper">

      <!-- Header -->
      <div id="header-wrapper">
         <header id="header" class="container">

            <!-- Logo -->
            <div id="logo">
               <h1 id="test"><a href="/coc/index.jsp">콕</a></h1>
               <!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
               	<h1 id="test">
               		<button type="button" style="background:none; margin:0; padding:0" onclick="location.href='/coc/views/searchPage.jsp'">
               		<i class="fa fa-search"></i>
               		</button>
               	</h1>
          
               
            </div>
            <!-- Nav -->
            <nav id="nav">
               <ul>
                  <li><a href="/coc/views/member/cs.jsp">고객센터</a></li>
                  <li><a href="/coc/views/member/login.jsp">로그인</a></li>
                  <li class="current"><a href="/coc/views/member/joinForm.jsp">회원가입</a></li>
               </ul>
               
            </nav>
            <nav id="nav" class="nav2">
               <ul>
                  <li><a href="#">계획그리기</a></li>
                  <li><a href="/coc/views/culture.jsp">문화즐기기</a></li>
                  <li><a href="/coc/views/reserve/reservation.jsp">숙소잡기</a></li>
                  <li><a href="/coc/views/seoul.jsp">서울나들이</a></li>
               </ul>
            </nav>
         </header>
         <hr>
      </div>



      <!-- Banner -->
      <div id="banner-wrapper">
         <div id="banner" class="box container">
            <div class="row">
               <div class="col-7 col-12-medium">
                  <h2>COC과 함께</h2>
                  <h2>당신의 여행의</h2>
               </div>
               <div class="col-5 col-12-medium">
                  <ul>
                     <li><a href="#" class="button large icon solid planbtn">계획 그리기</a></li>
                     <li><a href="#" class="button large icon solid planbtn">계획 추천받기</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>



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

      <!-- Features1 -->
      <div id="myCarousel2" class="carousel slide" data-ride="carousel">
         <div class="container">
            <h3>숙박</h3>
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
      
      
      
      <div id="myCarousel3" class="carousel slide" data-ride="carousel">
         <div class="container">
            <h3>추천코스</h3>
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
                        <div class="col-3 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic01.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic03.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
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
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic01.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>

                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic03.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
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
                        <div class="col-3 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic01.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic03.jpg" alt="" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-3 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="images/pic02.jpg" alt="" /></a>
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
                        <h4>Create Or Choice</h4>
                        <h5>대표 : 김채원</h5>
                        <h5>사업자 등록번호 : none</h5>
                        <h5>고객센터 : 010-8692-0000</h5>
                        <h5>이메일 : coc@kh.com</h5>
                  </section>

               </div>
               <div class="col-3 col-6-medium col-12-small">

                  <!-- Links -->
                  <section class="widget links">
                     <h3>Random Stuff</h3>
                     <ul class="style2">
                        <li><a href="/coc/views/ads.jsp">광고/제휴문의</a></li>
                        <li><a href="/coc/views/member/cs.jsp">서비스문의</a></li>
                        <li><a href="/coc/views/personalinfo.jsp">개인정보 취급방침</a></li>
                        <li><a href="/coc/views/usercontract.jsp">이용약관</a></li>
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
                     <br>
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

   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.dropotron.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

</body>
</html>