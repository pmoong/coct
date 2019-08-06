<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.place.model.vo.*, com.cw.coc.room.model.vo.*"%>
<%
	ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) request.getAttribute("lm");
	ArrayList<Room> rm = (ArrayList<Room>) request.getAttribute("rm");
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
#el a{
/* top: 350px; */
 font-weight:bold;
 font-size:23px;
 color:black;
 margin-left:30px;
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

		<div class="container" align="center">
         <div class="cocInfo" id="cocInfo" align="center">
            <div class="left-box">
               <img src="<%=lm.get(0).getLfirstimage() %>" width="400" height="300" />
            </div>
            <div class="right-box">
            	<br><br>
               <br>
               <p align="center"><%=lm.get(0).getLtitle() %></p>
               <br><br>
               <div id="image">
                  <img src="/coc/images/telephone.png" width="20" height="20" />
               </div>
               <p><%=lm.get(0).getLtel() %></p>
               <br>
               <div id="image">
                  <img src="/coc/images/placeholder.png" width="20" height="20" />
               </div>
               <p><%=lm.get(0).getLaddr() %></p>
               <br>
               <!-- <div id="image">
                  <img src="/coc/images/wall-clock.png" width="20" height="20" />
               </div>
               <p>11 : 00 ~ 21 : 00 (연중무휴)</p>
               <br>
               <div id="image">
                  <img src="/coc/images/house.png" width="20" height="20" />
               </div>
               <p>http://www.cweda.com</p> -->
            </div>
         </div>
<br><br>
<div class="container">
<div id="el"> 
<a  href="#intro" >호텔 소개  </a> 
<a href="#roominf" >룸 정보  </a> 
<a href="#room" >숙소 시설  </a> 
<a href="#hotelpolicy" >호텔 정책 </a> 
<a href="#map" >위치  </a> 
<a href="#information" >이용정보  </a>
</div>
 </div><br><br>
 				<!--  -->
		<div class="container">
			<div class="row">
				<h3 id="intro" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>호텔소개</h3>
			</div>
			<div border="1px solid black" style="width:100%; text-align:left; margin-left:15%">
				제주시 중심의 아라동에 위치한 단독주택입니다.<br>

				집 구성 간략설명드려요<br>
				총 4층짜리 단독주택으로 집안에는 저희가족 3명(저희부부, 초등생 딸), 마당에는 프렌치불독 한마리가 살고 있답니다.<br> 
				1층 : 현관, 게스트룸<br>
				2층 : 게스트 전용 욕실(화장실), 거실, 주방<br>
				3층,4층 : 저희가족 전용공간<br>
			</div>
		</div>
		<!-- 룸정보 -->
		<div class="container">
			<div class="row">
				<h3 id="roominf" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>룸정보</h3>
			</div>
			<div border="1px solid black" style="width:100%; text-align:left; margin-left:15%">
				<b>주택의 개인실</b>
				인원2명&emsp;침실1개&emsp;침대1개&emsp;단독사용욕실1개<br>
				<b>순조로운 체크인 과정</b>
				최근 숙박한 게스트중 100%가 체크인 과정에 별점 5점을 준 숙소입니다.<br>
				<b>높은 청결도</b>
				최근 게스트 14명이 이 숙소가 티 없이 깨끗하다고 후기를 남겼습니다.<br>
			</div>
		</div>
		<br><br>
	<!-- 방 정보 -->
<!-- 	<div>
		<table>
			<tr>
				<th>Standard Room</th>			
			</tr>
			<tr>
				<td rowspan="3" style="width:30%"><img src="/coc/images/seoul1.PNG" width="100%" height="50%" /></td>
				<td><h2>50,000<small>원</small></h2></td>
			</tr>	
			<tr>
				<td><label>대실</label></td>
				<td><h3>20,000</h3></td>
			</tr>
			<tr>	
				<td><label>숙소</label></td>
				<td><h3>40,000</h3></td>
			</tr>
		</table>
	</div> -->
	
			
        
        <% for (Room r : rm){ %>
        <div class="container" align="center">
         <div class="cocInfo" id="cocInfo" align="center">
       
		<a href="/coc/views/place/reserv_hotel.jsp">
            <div class="left-box">
               <img src="/coc/images/seoul1.PNG" width="300" height="200" />
            </div>
            <div class="right-box">

               <br>
               <h4 align="center"><b><%= r.getRmName() %></b></h4>
               <br>
               <div id="image">
               <br>
               </div>
               <br><br>
               <div id="image">
                  <h4 width="20" height="20">1박</h4>
               </div>
               <h4><%=r.getPrice() +"원" %></h4>
               </a>
               <br>
               
            </div>
         
         </div>
         <br>
            <% } %>
	 		<!-- 숙소시설 -->
		<div class="container">
			<div class="row">
				<h3 id="room" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>숙소시설</h3>

			</div> 
		</div> 
 		<!-- 호텔정책 -->
		<div class="container">
			<div class="row">
				<h3 id="hotelpolicy" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>호텔정책</h3>

			</div> 
		</div> 
	 		<!-- 위치 -->
		<div class="container">
			<div class="row">
				<h3 id="map" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>위치</h3>
			</div> 
			<div id="map" class="outer" style="width: 650px; height: 300px;">
		</div> 
 		<!-- 이용정보 -->
		<div class="container">
			<div class="row">
				<h3 id="information" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>이용정보</h3>
			</div> 
			<div style="width:100%; text-align:left; margin-left:15%">
				주방상기 모든 이미지는 연출 컷으로 실제와 다를 수 있습니다.<br>
				객실 상황에 따라 패키지가 조기 마감될 수 있습니다.<br>
				체크인은 오후 2시 이후, 체크아웃은 정오까지 입니다.<br>
				해당 기프트는 체크인 시 프론트에서 전달 드립니다.<br>
				해당 패키지 상품에 객실 또는 공연 관람 중 한 가지라도 이용하였다면 취소 불가입니다.<br>
				(부분 취소 및 변경 절대 불가, 공연 좌석 등급 변경 불가)<br>
				성인 2인 1실 기준 1박 요금이며, 세금은 별도입니다.<br>
				피트니스 센터는 안전상의 이유로 16세 이상 입장 가능합니다.<br>
			</div>
		</div> 	
	
	
	<br><br><br><br>
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>
  <script type="text/javascript">
    var locations = [
      ['신라스테이', 37.504788, 127.041312, 28] 
    ];
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 16,
      center: new google.maps.LatLng(37.504788, 127.041312),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2],locations[i][3]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        
        }
      })(marker, i));
    }
  </script>

</body>
</html>