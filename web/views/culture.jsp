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
 
 .btn-group{ 
            padding: 10px;
}  
 
 .btn-plus {
  position:absolute !important;
  top:100px !important;
  left:100px !important;
  border-radius:50% !important;
  text-align:center !important;
   opacity:0 !important;
  transform:scale(2) !important;
  transition:all .3s linear !important;
}
 
.btn-plus span {
  font-size:9em !important;
  color:#ffffff !important;
   user-select:none !important; 
}
  .img-wrapper:hover .darkness{
  opacity:0.4 !important;
}

.img-wrapper:hover .btn-plus {
  opacity:1 !important;
  transform:scale(1) !important;
}  
 
 #pic1:hover { opacity:0.6 !important; text-align:justify !important; color:#ffffff !important; font-size: 40px !important; font-weight:700 !important; font-family:"맑은 고딕" !important; padding:30px !important; }
  
   
#bbtn{
  background:#fcfcfc !important;
 font-size:1.5em !important;
font-weight: bold !important;
}

  #btn{
  background:#fcfcfc !important;
  color:#852d7a !important;
  border:none !important;
  position:relative !important;
  height:60px !important;
  font-size:1 em !important;
  padding:0 2em !important;
  cursor:pointer !important;
  transition:800ms ease all;
  outline:none !important;
  font-weight: bold !important;
}
#btn:hover{
  background:#fff !important;
  color:#852d7a !important;
}
#btn:before,button:after{
  content:'' !important;
  position:absolute !important;
  top:0 !important;
  right:0 !important;
  height:2px !important;
  width:0 !important;
   color:#852d7a !important;
  background: #852d7a !important;
  transition:400ms ease all !important;
}
 #btn:after{
   color:#852d7a !important;
  right:inherit !important;
  top:inherit !important;
  left:0 !important;
  bottom:0 !important;
}  
#btn:hover:before,#btn:hover:after{
  color:#852d7a !important;
  width:100% !important;
  transition:800ms ease all !important;
}
.carousel-control{
   width:12% !important;
}

.con{
padding-left:30px !important;
}
#blur{
 width:270px; height:270px !important;
 }
#blur:hover{ opacity:0.6 !important; text-align:justify !important; color:#ffffff !important; }
 
 #bb{
  
 padding-left:30px !important;
 	font-size:2em !important;
 	color:#000000 !important;
 	  border:none !important;
 	font-weight: bold !important;
 	
 	
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
		   <button id="bbtn" class="total" > 전체</button>
					 <button id="btn" class="btn_theater" > 연극</button> 
					 <button id="btn" class="btn_musical" > 뮤지컬				</button> 
				 <button id="btn" class="btn_consert" > 콘서트				</button> 
				 <button id="btn" class="btn_show" > 전시회				</button>  
				 <button id="btn" class="btn_fest" > 페스티벌				</button>  
				 <button id="btn" class="btn_fam" > 아동/가족				</button >
			</div>
			
 		   <div class="container">
			<div class="btn-group" >
				 <button id="bbtn" >					 월
				</button> 
		 		 <button id="btn" class="btn1" >				1월</button> 
				 <button id="btn" class="btn2" >				2월</button>  
				 <button id="btn" class="btn3">				3월</button> 
				<button id="btn" class="btn4">				4월</button> 
				 <button id="btn" class="btn5">				5월</button>  
				 <button id="btn" class="btn6">				6월</button>  
				 <button id="btn" class="btn7">				7월</button>  
				 <button id="btn" class="btn8">				8월</button> 
				 <button id="btn" class="btn9">				9월</button> 
				 <button id="btn"class="btn10">				10월</button> 
				 <button id="btn"class="btn11">				11월</button> 
				 <button id="btn" class="btn12">				12월</button> 
 </div>
</div>
</div>
  <div class="container">

<a id="bb" href="#">인기 </a>
<a id="bb" href="#">신규</a>
</div>
		  <%--  <div class="container">

<div class="col-4 col-4-medium col-4-small">
<div id="pic"> 
<div class="imgtotal" > 


</div>

       <div class="category" id="btn_1"> 
  <img id="blur" src="../images/culture/theater cat.PNG"width="400" height="400"  onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture.PNG"width="400" height="400"  onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture.PNG"width="400" height="400"  onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">  
  <img id="blur" src="../images/culture.PNG"width="400" height="400" onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
 <div class="category" id="btn_2"> 
      <img id="blur" src="../images/culture/musical1.PNG"width="200" height="200"  onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       <img id="blur" src="../images/culture.PNG"width="200" height="200" onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       <img id="blur" src="../images/culture.PNG"width="200" height="200"   onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       <img id="blur" src="../images/culture.PNG"width="200" height="200"  onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
       <div class="category" id="btn_3"> 
      <img id="blur" src="../images/culture/kpop.PNG"width="200" height=200" onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
      
      <!-- <div class="btn_4" id="category"> --> 
       <div class="category" id="btn_4"> 
      <img id="blur" src="../images/culture/international.PNG"width="200" height="200" onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
      
      <!-- <div class="btn_5" id="category"> --> 
       <div class="category" id="btn_5"> 
      <img id="blur" src="../images/culture/desertfair.PNG" width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 
      <img id="blur" src="../images/culture/musicfestival.PNG" width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture/Traditional Music.PNG" width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture/wood.PNG" width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
     <!--  btn_6 category -->
            <div class="category" id="btn_6"> 
      <img id="blur" src="../images/culture/Firstfullmoon.PNG"width="400" height="400"  onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new','width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
    <img id="blur" src="../images/culture/Gyeongbokgung.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
    <img id="blur" src="../images/culture/kpop.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture/Moonlight.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 <img id="blur" src="../images/culture/walking.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 <img id="blur" src="../images/culture/win1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 <img id="blur" src="../images/culture/walking.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
   <img id="blur" src="../images/culture/YiSunShin.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
      </div>
      
      
      
     <div class="btn1_1" id="season">
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 
      </div>
      
      <div class="btn1_2" id="season">
        <img id="blur" src="../images/culture/Firstfullmoon.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
      <div class="btn1_3" id="season">
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      <div class="btn1_4" id="season">
       <img id="blur" src="../images/culture/Moonlight.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      <div class="btn1_5" id="season">
        <img id="blur" src="../images/culture/kpop.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
    <img id="blur" src="../images/culture/Moonlight.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
      <div class="btn1_6" id="season">
             <img id="blur" src="../images/culture/desertfair.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
         <img id="blur" src="../images/culture/international.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture/kpop.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">  
  <img id="blur" src="../images/culture/Moonlight.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 
      </div>
      <div class="btn1_7" id="season">
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      <div class="btn1_8" id="season">
        <img id="blur" src="../images/culture/desertfair.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      <div class="btn1_9" id="season">
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      <div class="btn1_10" id="season">
      
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>-->
    <!--   <div class="btn1_11" id="season"> -->
      <div class="season" id="btn1_11">
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
     <!--  <div class="btn1_12" id="season"> -->
    
     <div class="season" id="btn1_12">
      <img id="blur" src="../images/culture.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       
      <img id="blur"src="../images/culture2.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
    
      <img id="blur" src="../images/culture3.PNG"width="400" height="400"      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
     
      <img id="blur" src="../images/culture4.PNG" width="400" height="400"      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
   
  </div> 
  
  
  <div class="image" >
      <img id="blur" src="../images/culture.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      <img id="blur"src="../images/culture2.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      <img id="blur" src="../images/culture3.PNG"width="400" height="400"      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
      <img id="blur" src="../images/culture4.PNG" width="400" height="400"      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=800,height=600,left=0,top=100,scrollbars=yes');" style="cursor:pointer"/>
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400"       onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new', 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
       </div>
 </div></div></div></div> 
<br><br>
 
<a style="display:scroll;position:fixed;bottom:30px;right:3px;" rel="nofollow"
href="#"  style="font-size:2.0em"><button id="btn">top</button></a> 
		<!-- Footer -->
		
		<%@include file="/views/common/footerbar_customer.jsp" %>
		<script>
		$('.season').hide(); 
		  $('.category').hide(); 
$(function(){

	  $('.btn_theater').click(function(){
	 $('#btn_1').show (); $('#btn_2').hide(); $('#btn_3').hide();  $('#btn_4').hide(); $('#btn_5').hide(); $('#btn_6').hide();   $('.season').hide();
	  }); $('.imgtotal').hide(); $('.season').hide()
	  
	  $('.btn_musical').click(function(){
		  $('#btn_1').hide();
		    $('#btn_2').show();
		    $('#btn_3').hide();
		    $('#btn_4').hide();
		    $('#btn_5').hide();
		    $('#btn_6').hide(); $('.imgtotal').hide();
		    $('.season').hide();

	  });
	  $('.btn_consert').click(function(){
	    $('.btn_1').hide();
	    $('.btn_2').hide();
	    $('.btn_3').show();
	    $('.btn_4').hide();
	    $('.btn_5').hide();
	    $('.btn_6').hide();
	    $('#season').hide();

	  });
	  $('.btn_show').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').hide();
		    $('.btn_3').hide();
		    $('.btn_4').show();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  });
	  $('.btn_fest').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').hide();
		    $('.btn_3').hide();
		    $('.btn_4').hide();
		    $('.btn_5').show();
		    $('.btn_6').hide();
		    $('#season').hide();
	  });
	  $('.btn_fam').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').hide();
		    $('.btn_3').hide();
		    $('.btn_4').hide();
		    $('.btn_5').hide();
		    $('.btn_6').show();
		    $('#season').hide();
	  }); 
	
	});
	
</script> --%>
	   <div class="container">
   <div id="con"> 
<div class="col-4 col-4-medium col-4-small">
<div id="pic"> 
	        <div class="imgtotal" > 
      <img id="blur" src="../images/culture/theater cat.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
     <img id="blur" src="../images/culture/theater cat.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
     <img id="blur" src="../images/culture/theater cat.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 </div>
      <!-- <div class="btn_1" id="category">  -->
      
       <div class="category" id="btn_1"> 
      <img id="blur" src="../images/culture/theater cat.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
  <img id="blur" src="../images/culture.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
   
      </div>
      
<!--       <div class="btn_2" id="category"> --> 
 <div class="category" id="btn_2"> 
      <img id="blur" src="../images/culture/musical1.PNG"width="200" height="200" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       <img id="blur" src="../images/culture.PNG"width="200" height="200" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       <img id="blur" src="../images/culture.PNG"width="200" height="200" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
       <img id="blur" src="../images/culture.PNG"width="200" height="200" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
   

          <div class="season" id="btn1_1">
      <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 
      </div>

            <div class="season" id="btn1_2">
        <img id="blur" src="../images/culture/Firstfullmoon.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
       <div class="season" id="btn1_3">
       <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
      
      <div class="season" id="btn1_4">
      
       <img id="blur" src="../images/culture/Moonlight.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer">
 <img id="blur" src="../images/culture/musical1.PNG"width="400" height="400" 
      onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%BD%95%EC%A1%B1','new',
 'width=1000,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      </div>
  
  </div> 
  
   
 </div></div> </div>
<br><br>
 
		<script>
	/* 	imgtotal */
			$('.season').hide(); 
			  $('.category').hide(); 
			  
$(function(){
	  $('.total').click(function(){
		$('.season').hide(); 
		  $('.category').hide();
		  $('.imgtotal').show(); 
	}); 
	  $('.btn_theater').click(function(){
		  $('#btn_1').show();
		    $('.btn_2').hide();
		    $('.imgtotal').hide();
		    $('.category').hide();
	  });    
	  $('.btn_musical').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').show();
		    $('.btn_3').hide();
		    $('.btn_4').hide();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  });
	   
	  $('.btn3').click(function(){
		  $('#btn1_1').hide();
		    $('#btn1_2').hide();
		    $('#btn1_3').show();
	 
		    $('.imgtotal').hide();  
			  $('.category').hide();

	  });
	});

	  </script>
</body>
</html> 
