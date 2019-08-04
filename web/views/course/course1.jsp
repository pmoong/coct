<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
<head>
<title>CoC</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

 
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
 #bb{
  
 padding-left:30px !important;
 	font-size:2em !important;
 	color:#000000 !important;
 	  border:none !important;
 	font-weight: bold !important;
 }
 .icono-smile {
	color : #2ba3bb;
}

.my_fontaw{
	border:2px solid black;
	background-color:black;

}
.my_fontmu{
color:white;
 
}
 
#el{
position: fixed;
top: 350px;
 font-weight:bold;
 font-size:20px;
  
 
}
#el:hover{
position: fixed;
top: 350px;
 font-weight:bold; 
  font-size:20px;
}
 
#color{
  color:black;
 
 
}#color:hover{
color:#51c4a5;
 
}
#map_ma {width:100%; height:400px; clear:both; border:solid 1px red;}

  </style>
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
</head>
  <body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp" %>
 <br>
      <div id="myCarousel2" class="carousel slide" data-ride="carousel">
         <div class="container">
   <div class="con"> 
   
 <div style="align:center;">
	 <h3><b>경리단 로얄리스트</b></h3>
	 데이트하면 경리단길, 경리단길 하면 데이트!<br>
	 경리단길 데이트를 하려면 먼저 허기진 배를 달래줘야겠는데..<br>
	 어디서 먹어야 할지 모르곘다면 먹을집 식당에서 맛있는 한식을 먼저 즐기고 난 후,<br>
	 연인과 손잡고 경리단길을 오순도순 함께 걸어봐요~<br>
	여기에 미술소품에서 아기자기한 소품까지! 역시 경리단길 데이트가 최고여
 </div>
  <br><br>

<img src="/coc/images/lline.PNG" style="width:100%; padding-bottom:80px;">
 
<div id="a1" align="center">
 <b style="font-size:30px">남산 타워</b> </div>
<img src=" /coc/images/nseoultower.PNG"  onclick="window.open('https://store.naver.com/attractions/detail?entry=plt&id=38345004&query=%EB%82%A8%EC%82%B0%EC%84%9C%EC%9A%B8%ED%83%80%EC%9B%8C','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');"  style="cursor:pointer" width="100%" height="400" /> 
     <br>
<span class="my-fontaw my-fontmu"> 
<i class="fas fa-address-card"  style="color:bluegreen;  font-size:30px; padding-left:200px"></i> 서울 용산구 남산공원길 103 서울타워우편물취급소 지번:용산동2가 산1-11 서울타워우편물취급소   <br>
<i class="far fa-clock" style="color:red; font-size:30px;  padding-left:200px"></i> 매일 10:00 - 23:00   <br>
<i class="fas fa-won-sign"  style="color:red; font-size:30px;  padding-left:200px"></i> 전망대 (대인) 11,000원 (소인) 9,000원 
 
</span>
 
<br><br><br>
<div id="a2" align="center" style="padding-top:100px;">
<b style="font-size:30px;">헬로키티 아일랜드</b> </div>
<img src=" /coc/images/nseoultower.PNG"  onclick="window.open('https://store.naver.com/attractions/detail?entry=plt&id=38345004&query=%EB%82%A8%EC%82%B0%EC%84%9C%EC%9A%B8%ED%83%80%EC%9B%8C','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');"  style="cursor:pointer" width="100%" height="400" /> 
     <br>
<span class="my-fontaw my-fontmu"> 
<i class="fas fa-address-card"  style="color:bluegreen;  font-size:30px; padding-left:200px"></i> 서울 용산구 남산공원길 103 서울타워우편물취급소 지번:용산동2가 산1-11 서울타워우편물취급소   <br>
<i class="far fa-clock" style="color:red; font-size:30px;  padding-left:200px"></i> 매일 10:00 - 23:00   <br>
<i class="fas fa-won-sign"  style="color:red; font-size:30px;  padding-left:200px"></i> 전망대 (대인) 11,000원 (소인) 9,000원 
</span>
 
<br><br><br>
<div id="a3" align="center" style="padding-top:100px;">
<b style="font-size:30px;">한복 문화 체험관</b> </div>
<img src=" /coc/images/nseoultower.PNG"  onclick="window.open('https://store.naver.com/attractions/detail?entry=plt&id=38345004&query=%EB%82%A8%EC%82%B0%EC%84%9C%EC%9A%B8%ED%83%80%EC%9B%8C','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');"  style="cursor:pointer" width="100%" height="400" /> 
     <br>
<span class="my-fontaw my-fontmu"> 
<i class="fas fa-address-card"  style=" font-size:30px; padding-left:200px"></i> 서울 용산구 남산공원길 103 서울타워우편물취급소 지번:용산동2가 산1-11 서울타워우편물취급소   <br>
<i class="far fa-clock" style="color:red; font-size:30px;  padding-left:200px"></i> 매일 10:00 - 23:00   <br>
<i class="fas fa-won-sign"  style="color:red; font-size:30px;  padding-left:200px"></i> 전망대 (대인) 11,000원 (소인) 9,000원 
</span>
 
<br><br><br>

<div id="a4" align="center" style="padding-top:100px;">
<b style="font-size:30px;">목멱산방</b> </div>
<img src=" /coc/images/nseoultower.PNG"  onclick="window.open('https://store.naver.com/attractions/detail?entry=plt&id=38345004&query=%EB%82%A8%EC%82%B0%EC%84%9C%EC%9A%B8%ED%83%80%EC%9B%8C','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');"  style="cursor:pointer" width="100%" height="400" /> 
     <br>
<span class="my-fontaw my-fontmu"> 
<i class="fas fa-address-card"  style="color:bluegreen;  font-size:30px; padding-left:200px"></i> 서울 용산구 남산공원길 103 서울타워우편물취급소 지번:용산동2가 산1-11 서울타워우편물취급소   <br>
<i class="far fa-clock" style="color:red; font-size:30px;  padding-left:200px"></i> 매일 10:00 - 23:00   <br>
<i class="fas fa-won-sign"  style="color:red; font-size:30px;  padding-left:200px"></i> 전망대 (대인) 11,000원 (소인) 9,000원 
</span>
 
<br><br><br>

<div id="a5" align="center" style="padding-top:100px;">
<b style="font-size:30px; ">안중근 의사 유묵 </b> </div>
<img src=" /coc/images/nseoultower.PNG"  onclick="window.open('https://store.naver.com/attractions/detail?entry=plt&id=38345004&query=%EB%82%A8%EC%82%B0%EC%84%9C%EC%9A%B8%ED%83%80%EC%9B%8C','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');"  style="cursor:pointer" width="100%" height="400" /> 
     <br>
<span class="my-fontaw my-fontmu"> 
<i class="fas fa-address-card"  style="color:bluegreen;  font-size:30px; padding-left:200px"></i> 서울 용산구 남산공원길 103 서울타워우편물취급소 지번:용산동2가 산1-11 서울타워우편물취급소   <br>
<i class="far fa-clock" style="color:red; font-size:30px;  padding-left:200px"></i> 매일 10:00 - 23:00   <br>
<i class="fas fa-won-sign"  style="color:red; font-size:30px;  padding-left:200px"></i> 전망대 (대인) 11,000원 (소인) 9,000원 
</span>
</div> 
</div>

</div>
</div>
<div id="el"> 
  <p ><a id="color" href="#a1" >남산 타워  </a> </p> 
  <p><a id="color" href="#a2" > 헬로키티 아일랜드 </a> </p>
   <p><a id="color" href="#a3"  >한복 문화 체험관  </a> </p>
    <p><a id="color" href="#a4" > 목멱산방 </a> </p>
     <p><a id="color" href="#a5" >안중근 의사 유묵 </a> </p>
 </div>
 
<a style="display:scroll;position:fixed;bottom:30px;right:3px;" rel="nofollow"
href="#"  style="font-size:2.0em"><button id="btn">top</button></a> 
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>  
</body>
</html> 
