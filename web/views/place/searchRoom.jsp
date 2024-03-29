<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*, com.cw.coc.place.model.vo.*"%>
<%
   ArrayList<LogmentVoYM> list = (ArrayList<LogmentVoYM>) request.getAttribute("list");
   String locationName = (String) request.getAttribute("locationName"); 
%>
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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
body {
   background: white;
}

#test {
   background: white !important;
   color: black !important;
}

/* .thumbnailArea {
   width: 760px;
   height: 550px;
   margin: 0 auto;
} */
.hotel {
   width: 220px;
   border: 1px solid white;
   display: inline-block;
   /* margin: 30px; */
   /* align: center; */
}

.hotel:hover {
   opacity: 0.8;
   cursor: pointer;
}

.max-small {
    width: auto; height: auto;
    max-width: 300px;
    max-height: 200px;
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
      <div class="container">

         <div align="center">
            <h2 style="margin-left: -6%;">
               <b>숙소 검색 결과</b> <small style="margin-left: 50%;"><a
                  href="#">인기순</a> <b>/</b> <a href="#"> 추천순</a></small>
            </h2>
            <div class="hotelList" style="display: inline-block;"></div>


            <!-- 썸네일 리스트 영역 -->
            <% 
                  for (int i =0; i < list.size(); i++) {
                 	LogmentVoYM l = list.get(i);
                      if(i==0 || i%4==0){
               %>
            	 <div class="row">
           			
               <%} %>
              
               <div class="col-3 col-12-medium">
                  <div class="hotel" align="center">
                   
               <form action="/coc/reserveRoomInfo" method="post">
               <input type="hidden" name="ltitle" value="<%=l.getLtitle()%>">
                     <div type="button"  class="image featured"> <input
                        type="hidden" value="<%= l.getLsigungucode()%>"><button style="background:white"> <img class="max-small"
                        src="<%=l.getLfirstimage()%>" style="width: 110%; /* margin: auto; */"></button>
                           </form>
                        <p>
                           <br> <b><%=l.getLtitle() %></b>
                        </p>
                      </div>
                        <!-- <p id="price">104,833원/1박</p> -->
               
                  </div>
                    
               </div>
            
               
            
            <% if(i%4 == 3){
               %>
              
               </div> 
                
            <%  } 
                  
                  }
               %>
         </div>




         <!-- 썸네일 리스트 영역 끝 -->
      </div>
   </div>



   <!-- ----------------------------- -->


   <!-- Footer -->
   <%@include file="/views/common/footerbar_customer.jsp"%>

   

</body>
</html>