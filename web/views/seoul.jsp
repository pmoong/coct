<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>CoC</title>
<script>
/* $(function(){
	$("#seoulBtn").click(function(){
		$.ajax({
			url:"seouldata.do",
			type:"get",
			/* data:{"name":"임동호"}, */
/* 			success:function(data){
				//$("#p1").text("JJJJJLK");
				console.log("성공");
			},
			error:function(){
				console.log("패!");
			}
		});
	})
}); */ 

</script>
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
 
 *{margin:0;padding:0;}
  ul,li{list-style:none;}
  #slide{height:300px;position:relative;overflow:hidden;}
  #slide ul{width:400%;height:100%;transition:1s;}
  #slide ul:after{content:"";display:block;clear:both;}
  #slide li{float:left;width:25%;height:100%;}
  #slide input{display:none;}
  #slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;border:2px solid #666;background:#fff;transition:0.3s;border-radius:50%;cursor:pointer;}
  #slide .pos{text-align:center;position:absolute;bottom:10px;left:0;width:100%;text-align:center;}
     #pos1:checked~ul{margin-left:0%;}
  #pos2:checked~ul{margin-left:-100%;}
  #pos3:checked~ul{margin-left:-200%;}
  #pos4:checked~ul{margin-left:-300%;} 
   #pos1:checked~.pos>label:nth-child(1){background:#666;}
  #pos2:checked~.pos>label:nth-child(2){background:#666;}
  #pos3:checked~.pos>label:nth-child(3){background:#666;}
  #pos4:checked~.pos>label:nth-child(4){background:#666;}
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

 #blur{
 width:280px; height:280px;
 }
#blur:hover{ opacity:0.6; text-align:justify; color:#ffffff;  }
   
#bbtn{
  background:#fcfcfc;
 font-size:1.5em;
font-weight: bold;
}

  #btn{
  background:#fcfcfc;
  color:#1AAB8A;
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
  background:#fff !important;
  color:#1AAB8A !important;
}
#btn:before,button:after{
  content:'' !important;
  position:absolute !important;
  top:0 !important;
  right:0 !important;
  height:2px !important;
  width:0 !important;
   color:#1AAB8A !important;
  background: #1AAB8A !important;
  transition:400ms ease all !important;
}
 #btn:after{
   color:#1AAB8A !important;
  right:inherit !important;
  top:inherit !important;
  left:0 !important;
  bottom:0 !important;
}  
#btn:hover:before,#btn:hover:after{
  color:#1AAB8A !important;
  width:100% !important;
  transition:800ms ease all !important;
}
.con{
padding-left:5px;
}
  </style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script> 
	

</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp" %>

 <br>
  <div class="container">
<div id="slide">
  <input type="radio" name="pos" id="pos1" checked>
  <input type="radio" name="pos" id="pos2" >
  <input type="radio" name="pos" id="pos3">
  <input type="radio" name="pos" id="pos4">
  <ul>
   
    <li><img src=" ../images/pic08.PNG" width="1400" height="300"  
      onclick="window.open('http://www.royalpalace.go.kr','new',
 'width=1400,height=900,left=0,top=100,scrollbars=yes');" style="cursor:pointer" /></li>
    <li><img src=" ../images/pic08.PNG"  width="1600" height="300"    /></li>
    <li><img src=" ../images/pic08.PNG"   width="1600" height="300"   /></li>
    <li><img src=" ../images/pic08.PNG"  width="1600" height="300"    /></li>
 
  </ul>
  <p class="pos">
    <label for="pos1">  </label>
    <label for="pos2"></label>
    <label for="pos3"></label>
    <label for="pos4"></label>
  </p>
</div>
 </div>
 <br>
		<div class="container-fluid">
	 <div class="row"> 
		<div class="col-md-12">
 				<div class="progress-bar w-75">
				</div>
			</div>
			<div class="container">
					  <div class="btn-group" >
				 <button id="bbtn" class="link1">
					 시간대 
				</button>
				 <button id="btn" class="btn_day"> 낮</button> 
				 <button id="btn" class="btn_night"> 밤 
				</button> 
			</div>
  		 
</div>
</div>
 
<div class="container">
 <div id="Parse_Area"></div>
			<div class="btn-group" >
				 <button id="bbtn" >
					 계절 
				</button> 
		 	 <button id="btn" class="btn_spring">
				봄</button> 
				   
				 <button id="btn" class="btn_summer">
				여름</button> 
				 <button id="btn" class="btn_autumn">
				가을</button>  
			 <button id="btn" class="btn_winter">
				겨울</button>  
				</div></div>
 </div>
</div>
<div class="container">
    <div class="con"> 
<div class="col-2 col-2-medium col-2-small">
<div id="pic"> 
      <div class="btn_1">
      <img id="blur"  src="../images/seoul1.PNG" width="30%" height="30%" 
      onclick="window.open('https://www.seoultower.co.kr/','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
      <img id="blur"  src="../images/seoul6.PNG" width="400" height="400"/> 
      </div>
      
     
   <div class="btn_2">
         <img  id="blur"  src="../images/seoul2.PNG" width="200" height="300" > 
        <img id="blur"   src="../images/seoul7.PNG" width="400" height="400"/> 
      <img id="blur"  src="../images/seoul8.PNG" width="400" height="400"/> 
      <img id="blur"  src="../images/seoul3.PNG" width="200" height="400"/>
   </div>
   
 
     <div class="btn_3">
        <img id="blur"  src="../images/seoul4.PNG" width="200" height="300"/>
      <img id="blur"  src="../images/seoul5.PNG" width="400" height="400"/>
      <img id="blur"  src="../images/seoul6.PNG" width="400" height="400"/> 
      
      </div>
      </div>
      </div>
      </div>
      

<a style="display:scroll;position:fixed;bottom:30px;right:3px;" rel="nofollow"
href="#"  style="font-size:2.0em"><button id="btn">top</button></a> 
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>

<script>
$(function(){
	  $('.btn_day').click(function(){
		  $('.btn_1').show();
		    $('.btn_2').hide();
		    $('.btn_3').hide();
		    $('.btn_4').hide();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  });
	  $('.btn_night').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').show();
		    $('.btn_3').hide();
		    $('.btn_4').hide();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  });
	  $('.btn_spring').click(function(){
	    $('.btn_1').show();
	    $('.btn_2').hide();
	    $('.btn_3').hide();
	    $('.btn_4').hide();
	    $('.btn_5').hide();
	    $('.btn_6').hide();
	  });
	  $('.btn_summer').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').show();
		    $('.btn_3').hide();
		    $('.btn_4').hide();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  });
	  $('.btn_autumn').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').hide();
		    $('.btn_3').show();
		    $('.btn_4').hide();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  });
	  $('.btn_winter').click(function(){
		  $('.btn_1').hide();
		    $('.btn_2').hide();
		    $('.btn_3').hide();
		    $('.btn_4').show();
		    $('.btn_5').hide();
		    $('.btn_6').hide();
	  }); 
	
	});
	
	
	
</script>
</body>
</html> 
		 
		 
		 
		 
		 