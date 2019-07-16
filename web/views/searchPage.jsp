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

input[type="checkbox"] {
	display: inline-block;
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
.field-container {
  position: relative;
  border:1px solid skyblue;
  width: 70%;
  height: 15%;
  align:center !important;
  
}

.icons-container {
  position: absolute;
  top: 11px;
  right: -25px;
  width: 35px;
  height: 35px;
  overflow: hidden;
}

.icon-search {
  position: relative;
  top: 5px;
  left: 8px;
  width: 50%;
  height: 50%;
  opacity: 1;
  border-radius: 50%;
  border: 3px solid mix(#6078EA, white, 35%);
  transition: opacity 0.25s ease, transform 0.43s cubic-bezier(0.694,  0.048, 0.335, 1.000);
  place-horder:remove;
}
.field {
  border: 0;
  width: 100%;
  height: 100%;
  padding: 10px 20px;
  background: white;
  border-radius: 3px;

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
               <h1 id="test">콕
               
               </h1>
               <!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
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
            </div>
            </header>
            </div>
            
          
               


      <!-- Banner -->
         <div class="container">
         
         <br>
         </div>

        
             
         <!-- Main -->

            <div id="main-wrapper">
               <div class="container">
               
               
               <div style="padding-left:20%">
             <fieldset class="field-container" style="border-radius:20px;">
             	<input type="text" placeholder="Search..." class="field"  style="border-radius:20px;"/>
             		<a href="searchResultPage.jsp">test버튼</a>
             	<div class="icons-container">
             		<div class="icon-search"></div>
             	</div>
             </fieldset>
         </div>
         <br>
         <br>
               <div style="padding-left:24%;">
         	<div class="">
         		<table id="board" style="width:64%; height:70%; border:1px solid skyblue">
         			<tbody>
         			<tr>
         				<th>분류</th>
         				<th>상세분류</th>
         			</tr>
         			<tr>
         				<td id="test1">테스트1</td>
         				<td id="test1v"></td>
         			</tr>
         			<tr>
         				<td id="test2" onclick="showKk();">테스트2</td>
         				<td id="test2v"></td>
         			</tr>
         			<tr>
         				<td id="test3" onclick="showJj();">테스트3</td>
         				<td id="test3v"><input type="checkbox" checked name="aa" value="1">1명</td>
         			</tr>
         			</tbody>
         		</table>
         	</div>
         </div>
         <script>
         	$(function(){
         		$("#test1").click(function(){
         			$('<td><input type="radio" value="1" style="width:10px; height:10px; border:1px solid black">1명</td>'
         					+'<td><input type="checkbox" value="2" style="width:10px; height:10px; border:1px solid black">2명</td>'
         					+'<td><input type="checkbox" value="3" style="width:10px; height:10px; border:1px solid black">3~4명</td>'
         					+'<td><input type="checkbox" value="4" style="width:10px; height:10px; border:1px solid black">단체</td>').appendTo("#test1v");
         		});
         	})
         
         </script>
               
               
               </div>
            </div>
            
            
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

   <script src="../assets/js/jquery.min.js"></script>
   <script src="../assets/js/jquery.dropotron.min.js"></script>
   <script src="../assets/js/browser.min.js"></script>
   <script src="../assets/js/breakpoints.min.js"></script>
   <script src="../assets/js/util.js"></script>
   <script src="../assets/js/main.js"></script>

</body>
</html>