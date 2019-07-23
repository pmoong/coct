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
  
   
 
.carousel-control{
   width:12% !important;
}

.con{
padding-left:30px !important;
}
/* #blur{
 width:270px; height:270px !important;
 }
#blur:hover{ opacity:0.6 !important; text-align:justify !important; color:#ffffff !important; }
  */
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
  
      <div id="myCarousel2" class="carousel slide" data-ride="carousel">
         <div class="container">
            <h2>상세일정보기</h2>
          <hr>
   <div class="con"> 
<div class="col-6 col-6-medium col-6-small">
<div id="pic"> 
      
 	 <img src="/coc/images/pic9.PNG"width="100%" height="70%" > 
 	 <br><br>
 	 
      <img src="/coc/images/map1.PNG" width="30%" height="50%" padding="20%;">
      <img  src="/coc/images/map2.PNG" width="50%" height="80%" padding="20%;" >  
       </div>
       </div>
       </div>
          </div>
          </div>
          </div>
          

<a style="display:scroll;position:fixed;bottom:30px;right:3px;" rel="nofollow"
href="#"  style="font-size:2.0em"><button id="btn">top</button></a> 
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>
		
</body>
</html> 
