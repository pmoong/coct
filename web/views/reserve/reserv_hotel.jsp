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
.hotel {
	border:1px solid lightgray;
	margin:50px;
	padding:5px 5px;
	color:green;
	width:270px;
	height:270px;
}
img {
	margin:10%;
}
img:hover {
	transform:scale(1.5);
}
#price {
	color:lightblue;
}
div {
	align:center;
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



 
<!--       Room Info
               <div class="container">
     
     <div>
         <h2 style="margin-left:3%;"><b>강남구 숙소 검색 결과</b>
         <small style="margin-left:50%;"><a href="#">인기순</a> <b>/</b> <a href="#"> 추천순</a></small></h2>
         <hr>
      
      <br> 
         <div style=" left:50%;  padding:50px; ">   
              <h2><b>역삼 Hotel The Artist</b></h2>
         </div>
      
       <div style="align:center; float:left;">
         <div style=" width:470px; padding-left:40px; float:left">   
            <a href="reserv_hotelView.jsp" class="image featured">
            <img src="../images/room.PNG" alt="" style="width:400px;"/></a>
         </div>
         
         <div style=" padding :50px;"> 
            <img src="../images/roomPrice.PNG" alt="" style="width:430px;"/>         
         </div>
         <br><br>
         
         
                  <div style=" left:50%;  padding:50px; ">   
              <h2><b>역삼 Hotel The Artist</b></h2>
         </div>
      
       <div style="align:center; float:left;">
         <div style=" width:470px; padding-left:40px; float:left">   
            <a href="reserv_hotelView.jsp" class="image featured">
            <img src="../images/room.PNG" alt="" style="width:400px;"/></a>
         </div>
         
         <div style=" padding :50px;"> 
            <img src="../images/roomPrice.PNG" alt="" style="width:430px;"/>         
         </div>
         <br><br> -->
         
         <div align="center">
         <h2 style="margin-left:3%;"><b>강남구 숙소 검색 결과</b>
         <small style="margin-left:50%;"><a href="#">인기순</a> <b>/</b> <a href="#"> 추천순</a></small></h2>
  <div class="hotelList" style="display:inline-block;">
  		<div class="hotel">
  		<a href="reserv_hotelView.jsp" class="image featured">
  			<img src="/coc/images/hotel1.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</a>
  		</div>
  		<div class="hotel">
  			<a href="reserv_hotelView.jsp" class="image featured">
  			<img src="/coc/images/hotel1.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  			</a>	
  		</div>
  		<div class="hotel">
  			<a href="reserv_hotelView.jsp" class="image featured">
  			<img src="/coc/images/hotel1.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
 			</a>	 		
  		</div>
  </div>		
  <div class="hotelList" style="display:inline-block;">
  		<div class="hotel">
  			<img src="/coc/images/hotel2.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</div>
  		<div class="hotel">
  			<img src="/coc/images/hotel2.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</div>
  		<div class="hotel">
  			<img src="/coc/images/hotel2.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</div>
  </div>	
    <div class="hotelList" style="display:inline-block;">
  		<div class="hotel">
  			<img src="/coc/images/hotel3.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</div>
  		<div class="hotel">
  			<img src="/coc/images/hotel3.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</div>
  		<div class="hotel">
  			<img src="/coc/images/hotel3.PNG" style="width:100%; margin:auto;"><hr><p><b>호텔 임페로</b></p><p id="price">104,833원/1박</p>
  		</div>
  </div>	
  </div>
  
   <div class="container" align="center">
      <ul class="pagination">
         <li><a href="#"><</a></li>
         <li><a href="#">1</a></li>
         <li><a href="#">2</a></li>
         <li><a href="#">3</a></li>
         <li><a href="#">4</a></li>
         <li><a href="#">5</a></li>
         <li><a href="#">></a></li>
      </ul>
   </div>
      

                              
<!-- ----------------------------- -->


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
<br><br><br><br><br>  

      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp" %>
	</div>


</body>
</html>