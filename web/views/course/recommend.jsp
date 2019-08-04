<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
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
 
 #bb{
  
 padding-left:30px !important;
 	font-size:1.5em !important;
 	color:#000000 !important;
 	  border:none !important;
 	font-weight: bold !important;
 }  
  
 
 .pic1{  
     background-image:url(/coc/images/nseoultower.PNG) !important;
      background-size:100% 100% !important;
    }
    
   .text1{ 
     background-size:100% 100% !important; 
    background:#000000; opacity:0;  
    font-size:5em !important; }  
    
   .text1 p{ 
    padding  :10%  !important;
   text-align:center; 
   font-weight: bold !important;
	 } 
   .pic1:hover .text1 { opacity:0.6; text-align:center; color:#e6e1e1;
   }
   
   
   
 .pic2{  
     background-image:url(/coc/images/nseoultower.PNG) !important;
      background-size:100% 100% !important;
    }
    
   .text2{ 
     background-size:100% 100% !important; 
    background:#000000; opacity:0;  
    font-size:5em !important; }  
    
   .text2 p{ 
    padding  :10%  !important;
   text-align:center; 
   font-weight: bold !important;
	 } 
   .pic2:hover .text2 { opacity:0.6; text-align:center; color:#e6e1e1;
   }
   
   
    .pic3{  
     background-image:url(/coc/images/nseoultower.PNG) !important;
      background-size:100% 100% !important;
    }
    
   .text3{ 
     background-size:100% 100% !important; 
    background:#000000; opacity:0;  
    font-size:5em !important; }  
    
   .text3 p{ 
    padding  :10%  !important;
   text-align:center; 
   font-weight: bold !important;
	 } 
   .pic3:hover .text3 { opacity:0.6; text-align:center; color:#e6e1e1;
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
 
 
         <div class="container">
            <h1><b>당신에게 맞는 여행을 콕 찍어보세요~~</b></h1>
 <br>
<a id="bb" href="#">인기 </a>
<a id="bb"> |</a> 
<a id="bb" href="#">신규</a>
<br><br>
   
   <a href="/coc/views/course/course1.jsp">  <div class="pic1"> 
   <div class="text1"  > 
      <p>남산 주변 관광 즐기기 </p>
   </div> 
</div></a>

 <div class="pic2" > 
   <div class="text2"> 
      <p>남산 타워 </p>
   </div> 
</div>
 <div class="pic3"> 
   <div class="text3"> 
      <p>남산 타워 </p>
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
     