<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="com.cw.coc.place.controller.SearchKeyword, com.cw.coc.place.model.vo.RestaurantVo, java.util.*, com.cw.coc.choice.model.vo.Coc, 
   com.cw.coc.place.model.vo.LogmentVoYM, com.cw.coc.place.model.vo.CultureVoYM, com.cw.coc.place.model.vo.SeoulVoYM" %>
<%
   String keyWord = (String) request.getAttribute("keyWord");

   ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) request.getAttribute("list");
   ArrayList<Coc> cocList = (ArrayList<Coc>) request.getAttribute("cocList");
   ArrayList<LogmentVoYM> logList = (ArrayList<LogmentVoYM>) request.getAttribute("logList");
   ArrayList<CultureVoYM> cList = (ArrayList<CultureVoYM>) request.getAttribute("cList");
   ArrayList<SeoulVoYM> sList = (ArrayList<SeoulVoYM>) request.getAttribute("sList");
   /* String[] title = (String[]) request.getAttribute("title");
   String[] link = (String[]) request.getAttribute("link");
   String[] category = (String[]) request.getAttribute("category");
   String[] description = (String[]) request.getAttribute("description");
   String[] telephone = (String[]) request.getAttribute("telephone");
   String[] address = (String[]) request.getAttribute("address");
   String[] mapx = (String[]) request.getAttribute("mapx");
   String[] mapy = (String[]) request.getAttribute("mapy"); */
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
<style>
body {
   background: white !important;
}

#test {
   background: white !important;
   color: black !important;
}

.carousel-control {
   width: 12% !important;
}

.glyphicon-chevron-left {
   padding-left: 90% !important;
}

.glyphicon-chevron-right {
   padding-right: 90% !important;
}

.planbtn {
   border-radius: 30px !important;
}

.tes {
   position: relative !important;
}

.icons-container {
   position: absolute !important;
   top: 11px !important;
   right: -25px !important;
   width: 35px !important;
   height: 35px !important;
   overflow: hidden !important;
}

.icon-search {
   position: relative !important;
   top: 5px !important;
   left: 8px !important;
   width: 50% !important;
   height: 50% !important;
   opacity: 1 !important;
   border-radius: 50% !important;
   border: 3px solid mix(#6078EA, white, 35%) !important;
   transition: opacity 0.25s ease, transform 0.43s
      cubic-bezier(0.694, 0.048, 0.335, 1.000) !important;
   place-horder: remove !important;
}

.field {
   border: 0 !important;
   width: 100% !important;
   height: 100% !important;
   padding: 10px 20px !important;
   background: white !important;
   border-radius: 3px !important;
}

.tagBtn {
   width: 15% !important;
   align: center !important;
   margin-left: 20% !important;
   height: 10% !important;
   background: darkgray !important;
}
.col-12-medium{
   padding:30px 20px 10px 20px !important;
   radius:5px !important;
}
#banner-wrapper .feature{
   border:3px solid #FFD700 !important;
   border-radius:5px !important;
}
#searchTitle{
   color:green;
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
      <%@ include file="/views/common/menubar_customer.jsp" %>
      <div class="container">
         <div id="logo">
         <form action="<%= request.getContextPath() %>/search.kw" method="post">
             <fieldset class="field-container" style="border-radius:20px;">
             <input type="hidden" name="userNo" value="<%=loginUser.getUno() %>">
                <input type="search" name="searchKeyword" class="form-control" placeholder="<%=keyWord %>" class="field"  style="border-radius:20px;"/>
                <button type="submit" style="float:right; background:darkgray" >검색하기</button>
             </fieldset>
             </form>
         </div>

         <header class="container">
            <input class="tagBtn" type="button" value="태그추가하기"
               onclick="addTag();" style="font-size: small;">
         </header>
      </div>


      <div id="features-wrapper">
         <div class="container"><h1 id="searchTitle">식당</h1>
         <hr>
         <% 
                  int i=0;
               for (RestaurantVo r : rt) {
               %>
            <% if(i%4==0){ %>
            <div class="row">
               <%} int cnt=0; %>
               <%-- <form action="<%=request.getContextPath() %>/cocPlus" method="post"> --%>
               <div class="col-3 col-12-medium">
               <%for(int j=0; j<cocList.size(); j++){ %>
               <%  if(cocList.get(j).getcCode() == r.getcCode()) {%>
               <%  cnt++;%>
               
               <%}else{ %>
                 <% } %>
                 <%} %>
                 <%if(cnt!=0){ %>
               <div style="float:right">
               		<%-- <button type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)" style="background:yellow">콕</button> --%>
               		<div class="glyphicon glyphicon-heart" type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)"></div>
               </div>
                 <%}else{ %>
                 <div style="float:right">
                 	<%-- <button type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)" style="background:darkgray">콕</button> --%>
              		<div class="glyphicon glyphicon-heart" type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)"></div>
                 </div>
                 <%} %>
                     <img src="<%=r.getRfirstimage() %>" style="width: 110%; margin: auto;">
                     <div class="inner">
                     <h2><%=r.getRtitle() %></h2>
                     <p><%=r.getRaddr() %></p>
                     <p><%=r.getRtel() %></p>
                     <input type="hidden" id="cCode<%=i %>" name="cCode<%=i %>" value="<%= r.getcCode() %>">
                       <%-- <input type="hidden" name="loginUserNo" value="<%=loginUser.getUno() %>"> --%>
                  </div>
               </div>
               <!-- </form> -->
               <% if(i%4==3){ %>
            </div>
            <%} %>
               <%   i++; %>
            <%} %>

                 </div>
      </div>
      
      <div id="features-wrapper">
         <div class="container"><h1 id="searchTitle">숙박</h1>
         <hr>
         <% if(i%4!=0){
               i++;
            }
         if(i%4!=0){
            i++;
         }
         if(i%4!=0){
            i++;
         }
               
               for (LogmentVoYM lm : logList) {
               %>
            <% if(i%4==0){ %>
            <div class="row">
               <%} int cnt=0; %>
               <%-- <form action="<%=request.getContextPath() %>/cocPlus" method="post"> --%>
               <div class="col-3 col-12-medium">
               <%for(int j=0; j<cocList.size(); j++){ %>
               <%  if(cocList.get(j).getcCode() == lm.getcCode()) {%>
               <%  cnt++;%>
               
               <%}else{ %>
                 <% } %>
                 <%} %>
                                 <%if(cnt!=0){ %>
               <div style="float:right">
               		<%-- <button type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)" style="background:yellow">콕</button> --%>
               		<div class="glyphicon glyphicon-heart" type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)"></div>
               </div>
                 <%}else{ %>
                 <div style="float:right">
                 	<%-- <button type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)" style="background:darkgray">콕</button> --%>
              		<div class="glyphicon glyphicon-heart" type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)"></div>
                 </div>
                 <%} %>
                     <img src="<%=lm.getLfirstimage() %>" style="width: 110%; margin: auto;">
                     <div class="inner">
                     <h2><%=lm.getLtitle() %></h2>
                     <p><%=lm.getLaddr() %></p>
                     <p><%=lm.getLtel() %></p>
                     <input type="hidden" id="cCode<%=i %>" name="cCode<%=i %>" value="<%= lm.getcCode() %>">
                       <%-- <input type="hidden" name="loginUserNo" value="<%=loginUser.getUno() %>"> --%>
                  </div>
               </div>
               <!-- </form> -->
               <% if(i%4==3){ %>
            </div>
            <%} %>
               <%   i++; %>
            <%} %>

                 </div>
      </div>
      
      <div id="features-wrapper">
         <div class="container"><h1 id="searchTitle">서울즐기기</h1>
         <hr>
         <% if(i%4!=0){
               i++;
            }
         if(i%4!=0){
            i++;
         }
         if(i%4!=0){
            i++;
         }
               
               for (SeoulVoYM so : sList) {
               %>
            <% if(i%4==0){ %>
            <div class="row">
               <%} int cnt=0; %>
               <%-- <form action="<%=request.getContextPath() %>/cocPlus" method="post"> --%>
               <div class="col-3 col-12-medium">
               <%for(int j=0; j<cocList.size(); j++){ %>
               <%  if(cocList.get(j).getcCode() == so.getcCode()) {%>
               <%  cnt++;%>
               
               <%}else{ %>
                 <% } %>
                 <%} %>
                                 <%if(cnt!=0){ %>
               <div style="float:right">
               		<%-- <button type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)" style="background:yellow">콕</button> --%>
               		<div class="glyphicon glyphicon-heart" type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)"></div>
               </div>
                 <%}else{ %>
                 <div style="float:right">
                 	<%-- <button type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)" style="background:darkgray">콕</button> --%>
              		<div class="glyphicon glyphicon-heart" type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)"></div>
                 </div>
                 <%} %>
                     <img src="<%=so.getFirstimage() %>" style="width: 110%; margin: auto;">
                     <div class="inner">
                     <h2><%=so.getTitle() %></h2>
                     <p><%=so.getAddr1() %></p>
                     <input type="hidden" id="cCode<%=i %>" name="cCode<%=i %>" value="<%= so.getcCode() %>">
                       <%-- <input type="hidden" name="loginUserNo" value="<%=loginUser.getUno() %>"> --%>
                  </div>
               </div>
               <!-- </form> -->
               <% if(i%4==3){ %>
            </div>
            <%} %>
               <%   i++; %>
            <%} %>

                 </div>
      </div>
      
      
      <div id="features-wrapper">
         <div class="container"><h1 id="searchTitle">문화즐기기</h1>
         <hr>
         <% if(i%4!=0){
               i++;
            }
         if(i%4!=0){
            i++;
         }
         if(i%4!=0){
            i++;
         }
               
               for (CultureVoYM ct : cList) {
               %>
            <% if(i%4==0){ %>
            <div class="row">
               <%} int cnt=0; %>
               <%-- <form action="<%=request.getContextPath() %>/cocPlus" method="post"> --%>
               <div class="col-3 col-12-medium">
               <%for(int j=0; j<cocList.size(); j++){ %>
               <%  if(cocList.get(j).getcCode() == ct.getcCode()) {%>
               <%  cnt++;%>
               
               <%}else{ %>
                 <% } %>
                 <%} %>
                               <%if(cnt!=0){ %>
               <div style="float:right">
               		<%-- <button type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)" style="background:yellow">콕</button> --%>
               		<div class="glyphicon glyphicon-heart-empty" type="submit" id="minusCoc<%=i %>" 
               			onclick="minusCoc(<%=i %>)"></div>
               </div>
                 <%}else{ %>
                 <div style="float:right">
                 	<%-- <button type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)" style="background:darkgray">콕</button> --%>
              		<div class="glyphicon glyphicon-heart" type="submit" id="plusCoc<%=i %>" onclick="plusCoc(<%=i %>)"></div>
                 </div>
                 <%} %>
                     <img src="<%=ct.getFirstimage() %>" style="width: 110%; margin: auto;">
                     <div class="inner">
                     <h2><%=ct.getCtitle() %></h2>
                     <p><%=ct.getCaddr() %></p>
                     <input type="hidden" id="cCode<%=i %>" name="cCode<%=i %>" value="<%= ct.getcCode() %>">
                       <%-- <input type="hidden" name="loginUserNo" value="<%=loginUser.getUno() %>"> --%>
                  </div>
               </div>
               <!-- </form> -->
               <% if(i%4==3){ %>
            </div>
            <%} %>
               <%   i++; %>
            <%} %>

                 </div>
      </div>
      
            
      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp" %>

   </div>

   <!-- Scripts -->
   <script>
      function plusCoc(id){   
         var cCode = $("#cCode"+id).val();
         var uno = <%=loginUser.getUno()%>;
         $.ajax({
            url:"cocPlus",
            type:"post",
            data:{cCode:cCode, uno:uno},
            success:function(data){
               $("#plusCoc"+id).css("color", "black");
               $("#plusCoc"+id).attr("onclick","minusCoc("+id+")").unbind('click');
               $("#plusCoc"+id).attr('id','minusCoc'+id);
            }
         });   
      }
      
      function minusCoc(id){   
         var cCode = $("#cCode"+id).val();
         var uno = <%=loginUser.getUno()%>;
         $.ajax({
            url:"cocMinus",
            type:"post",
            data:{cCode:cCode, uno:uno},
            success:function(data){
               $("#minusCoc"+id).css("color", "red");
               $("#minusCoc"+id).attr("onclick","plusCoc("+id+")").unbind('click');
               $("#minusCoc"+id).attr('id','plusCoc'+id);
            }
         });   
      }
   </script>

   
</body>
</html>