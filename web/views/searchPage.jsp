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
      <%@ include file="/views/common/menubar_customer.jsp" %>
            
          
               


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
      <%@include file="/views/common/footerbar_customer.jsp" %>

   </div>

   <!-- Scripts -->

	

</body>
</html>