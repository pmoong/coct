<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import="java.util.*, com.cw.coc.place.model.vo.*"%>
 <% 
	
	ArrayList<CultureVo> list = (ArrayList<CultureVo>)request.getAttribute("list");
%>

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
 #history{
 width:230px;
height:230px; 
 
 /*  margin:2%; */
  margin-left:2%;
  margin-bottom:2%;
  
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
                                src="/coc/images/culture.PNG"  width="500" height="400" /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                 src="/coc/images/culture2.PNG" width="500" height="400"   /></a>
                              <div class="inner"></div>
                           </section>

                        </div>
                        <div class="col-4 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="/coc/images/culture4.PNG"  width="500" height="400"   /></a>
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
                                  src="/coc/images/culture3.PNG"  width="500" height="400" /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                        <div class="col-4 col-12-medium">
                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="/coc/images/culture.PNG""  width="500" height="400"  /></a>
                              <div class="inner"></div>
                           </section>
                        </div>

                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                src="/coc/images/culture3.PNG"  width="500" height="400"  /></a>
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
                                  src="/coc/images/culture4.PNG" width="500" height="400" /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="/coc/images/culture4.PNG" width="500" height="400"  /></a>
                              <div class="inner"></div>
                           </section>
                        </div>
                        <div class="col-4 col-12-medium">

                           <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img
                                  src="/coc/images/culture4.PNG" width="500" height="400"  /></a>
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
		  <button id="bbtn"       onclick="location.href='<%=request.getContextPath() %>/culture.tot'"> 전체</button> 
				 <button id="btn"  onclick="location.href='<%=request.getContextPath() %>/culture.fes'"> 축제</button> 
				 <button id="btn"   onclick="location.href='<%=request.getContextPath() %>/culture.show'">공연</button>
				 <button id="btn"   onclick="location.href='<%=request.getContextPath() %>/culture.event'">행사</button> 
			</div>	
			</div>
		 
 </div>
<div class="container"> 
  <table align="center" id="listArea">
 <tr>
 <%  for(CultureVo c : list){   		   %> 
 					
					
					<div id="history" style="display:inline; float: left;  ">
 					<b>타이틀: </b><%= c.getCtitle() %><br> 
 				<img src="<%= c.getCfirstimage() %>"width="80%" height="80%"><br>
					<b>주소: </b><%= c.getCaddr() %> 
				     </div>
			 <%} %>
					 </tr>
 </table>
 </div></div> 


	  
</body>
</html> 
