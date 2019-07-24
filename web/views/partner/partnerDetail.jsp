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

#userId, #userPwd {
   font-size: 13px;
}

#cocInfo {
   width: 800px;
   height: 300px;
}

.left-box {
   background: white;
   float: left;
   width: 50%;
}

.right-box {
   float: right;
   width: 50%;
   background: white;
   color: black;
   border: none;
   position: relative;
   height: 60px;
   font-size: 1 em;
   padding: 0 2em;
   transition: 800ms ease all;
   outline: none;
   font-weight: bold;
}

#bbtn {
   background: #fcfcfc;
   font-size: 1.5em;
   font-weight: bold;
}

#btn {
   background: #fcfcfc;
   color: #1AAB8A;
   border: none;
   position: relative;
   height: 60px;
   font-size: 1 em;
   padding: 0 2em;
   cursor: pointer;
   transition: 800ms ease all;
   outline: none;
   font-weight: bold;
   /* padding: 0px 10px 0px 10px;
  margin: 5px 0px 5px 0px; */
}

#btn:hover {
   background: #fff !important;
   color: #1AAB8A !important;
}

#btn:before, button:after {
   content: '' !important;
   position: absolute !important;
   top: 0 !important;
   right: 0 !important;
   height: 2px !important;
   width: 0 !important;
   color: #1AAB8A !important;
   background: #1AAB8A !important;
   transition: 400ms ease all !important;
}

#btn:after {
   color: #1AAB8A !important;
   right: inherit !important;
   top: inherit !important;
   left: 0 !important;
   bottom: 0 !important;
}

#btn:hover:before, #btn:hover:after {
   color: #1AAB8A !important;
   width: 100% !important;
   transition: 800ms ease all !important;
}

.btn-group {
   padding-left: 150px !important;
}

#image {
   float: left;
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
      <%@ include file="/views/common/menubar_customer.jsp"%>

      <div class="container" align="center">
         <div class="cocInfo" id="cocInfo" align="center">
            <div class="left-box">
               <img src="/coc/images/seoul1.PNG" width="400" height="300" />
            </div>
            <div class="right-box">
               <br>
               <p align="center">채원이네 김치찌개 역삼본점</p>
               <br>
               <div id="image">
                  <img src="/coc/images/telephone.png" width="20" height="20" />
               </div>
               <p>02-123-4567</p>
               <br>
               <div id="image">
                  <img src="/coc/images/placeholder.png" width="20" height="20" />
               </div>
               <p>서울시 강남구 역삼동</p>
               <br>
               <div id="image">
                  <img src="/coc/images/wall-clock.png" width="20" height="20" />
               </div>
               <p>11 : 00 ~ 21 : 00 (연중무휴)</p>
               <br>
               <div id="image">
                  <img src="/coc/images/house.png" width="20" height="20" />
               </div>
               <p>http://www.cweda.com</p>
            </div>
         </div>

         <div class="container-fluid">
            <div class="row">
               <div class="col-md-12">
                  <div class="progress-bar w-75"></div>
               </div>

               <div class="btn-group">
                  <a href=""><button id="btn">주요 정보</button> </a> 
                  <a href=""><button id="btn">가격</button> </a> 
                  <a href=""><button id="btn">리뷰</button> </a> 
                  <a href=""><button id="btn">기타</button> </a> 
                  <a href=""><button id="btn">위치</button> </a>
               </div>
            </div>
         </div>
      </div>


      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp"%>

   </div>



</body>
</html>