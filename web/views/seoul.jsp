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
  background:#fff;
  color:#1AAB8A;
}
#btn:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
   color:#1AAB8A;
  background: #1AAB8A;
  transition:400ms ease all;
}
 #btn:after{
   color:#1AAB8A;
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}  
#btn:hover:before,#btn:hover:after{
  color:#1AAB8A;
  width:100%;
  transition:800ms ease all;
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

</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1 id="test">콕</h1>
					<!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
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
					<a class="link1" href="../views/seoulafter.jsp"  ><button id="btn"> 낮</button></a>
					<a href="../views/seoulevening.jsp" ><button id="btn"> 밤 
				</button> </a>
			</div>
			

 
			<div class="btn-group" >
				 <button id="bbtn" >
					 계절 
				</button> 
		 		<a href="../views/seoulspring.jsp" ><button id="btn">
				봄</button> </a>
				   
				<a href="../views/seoulsum.jsp"  ><button id="btn">
				여름</button> </a>
				<a href="../views/seoulautumn.jsp" ><button id="btn">
				가을</button> </a>
				<a href="../views/seoulwin.jsp" ><button id="btn">
				겨울</button> </a>
				</div></div>
 </div>
</div>
<div class="container">
    <div class="con"> 
<div class="col-3 col-3-medium col-3-small">
<div id="pic"> 
      
      <img id="blur" src="../images/seoul1.PNG" width="200" height="300" 
      onclick="window.open('https://www.seoultower.co.kr/','new',
     'width=1400,height=800,left=0,top=100,scrollbars=yes');" style="cursor:pointer"> 
 
      <img  id="blur" src="../images/seoul2.PNG" width="200" height="300" > 
      
      <img id="blur" src="../images/seoul3.PNG" width="200" height="400"/>
      
      <img id="blur"  src="../images/seoul4.PNG" width="200" height="300"/>
 </div>
</div>
</div>
<br><br>
<div class="col-3 col-3-medium col-3-small">
<div id="pic"> 

      <img id="blur" src="../images/seoul5.PNG" width="400" height="400"/>
    
      <img id="blur" src="../images/seoul6.PNG" width="400" height="400"/> 
 
      <img id="blur" src="../images/seoul7.PNG" width="400" height="400"/> 
    
      <img id="blur" src="../images/seoul8.PNG" width="400" height="400"/></div>
 
  
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
		 
		 
		 
		 
		 