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
      <%@ include file="/views/common/menubar_customer.jsp" %>



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
      
      <%@include file="/views/common/footerbar_customer.jsp" %>
      

   </div>

   <!-- Scripts -->

</body>
</html>