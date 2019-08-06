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
  #map12 {
    height: 350px;  /* The height is 400 pixels */
    width: 60%;  /* The width is the width of the web page */
   }
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
function initMap() {
  var uluru = {lat: 37.509439, lng: 127.060830};
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 15, center: uluru});
  
  var marker = new google.maps.Marker({position: uluru, map: map});
  zoomControl:false;
  scaleControl:true;
}
</script>
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc-FAooT4cR2nne8SYnHMKaE7OmJfgp6U&callback=initMap">
</script>
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
				그랜드 인터컨티넨탈 서울 파르나스는 2호선 삼성역 5번 출구와 연결되어 있습니다. <br>
				호텔과 코엑스몰, 현대백화점 무역센터점 등이 이어져 있어 편리하게 쇼핑하실 수 있습니다.<br>
				 뿐만 아니라, 차로 20분 거리에 압구정 로데오거리가 있습니다. <br>
				 호텔 내 사우나, 이규제큐티브 층 등이 있어 편리하게 이용하실 수 있으며  <br>
				 피트니스 센터와 실내 수영장 등도 마련되어 있어 운동을 즐기실 수 있습니다.  <br>
				 프런트 데스크를 24시간 운영하고 있으며 룸서비스, 아이 돌봄, 드라이클리닝 서비스 등을 이용하실 수 있습니다.  <br>
				 또한, 객실당 1대까지 무료로 주차하실 수 있습니다.  <br>
				 클럽 인터컨티넨탈 122개 객실을 포함하여 전체 516개 객실이 있으며 객실에 따라 무역센터 또는 테헤란로 전망 등을 감상하실 수 있습니다.  <br>
				 모던하고 세련된 인테리어를 자랑하는 모든 객실에는 최신식 스마트폰, 평면 LCD TV,  <br>
				 미니바 등이 있으며 욕실에는 목욕 가운, 독립 샤워부스, 욕실용품 등이 있습니다.  <br>
				 클럽 객실 이용 시에는 클럽 라운지 이용 혜택이 제공됩니다. <br>
				 최고급 프렌치 레스토랑인 테이블 34, 중국 전통 베이징덕을 맛볼 수 있는 웨이루,  <br>
				 정갈한 일식을 선보이는 하코네, 높은 천장이 돋보이는 그랜드 키친, 라이브 음악을 들을 수 있는 로비라운지&바,  <br>
				 갓구운 빵을 판매하는 그랜드 델리 등 총 6개의 레스토랑과 바가 준비되어 있어 다이닝 선택의 폭이 넓습니다. <br>
			</div>
		</div>
		<!-- 룸정보 -->
		<div class="container">
			<div class="row">
				<h3 id="roominf" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>룸정보</h3>
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
			<div border="1px solid black" style="width:100%; text-align:left; margin-left:13%">
				<b>체크인</b>15:00 이후
				<b>체크아웃</b>12:00 이전
				무선 인터넷<br>
				비즈니스 센터<br>
				헬스/피트니스 센터<br>
				실내 수영장<br>
				애완동물 불허<br>
			</div>
			</div> 
		</div> 
 		<!-- 호텔정책 -->
		<div class="container">
			<div class="row">
				<h3 id="hotelpolicy" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>호텔정책</h3>

			</div> 
		</div> <br><br><br><br><br><br><br><br><br><br>
	 		<!-- 위치 -->
		<div class="container">
			<div class="row">
				<h3 id="map" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>위치</h3>
			</div>
			<div style="width:100%; text-align:left; margin-left:15%">
				<div id="map12"></div>
			</div>
		</div> 
 		<!-- 이용정보 --><br><br><br>
		<div class="container">
			<div class="row">
				<h3 id="information" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>이용정보</h3>
			</div> 
			<div style="width:100%; text-align:left; margin-left:15%">
				예약을 취소하거나 예약 후 아무런 통보없이 투숙하지 않을 경우, 객실당 1박<br>
				에 대한 요금이 신용 카드로 청구됩니다. 부가세가 적용됩니다. <br>
				예약한 첫째 날 밤이 지난 후 체크아웃 시간 이전에 연락을 하지 않거나<br>
				호텔에 도착하지 않으면 나머지 예약 기간도 취소됩니다.<br>
				<br><br>
				<small>법적 고지사항</small><br>
				<small>예약 시점과 실제 숙박일 사이에 환율이 변경될 수 있으므로 확정된 요금은 호텔의 기본 통화로만 보장됩니다.<br>
				예약한 때로부터 투숙할 때까지 그리고 실제 숙박 기간 동안 세금과 추가 요금이 변경될 수 있으므로,<br>
				총 요금은 예상치입니다. 예상 요금에는 객실 요금, 추가 인원 요금, 총 세금 및 총 호텔 요금이 포함됩니다. <br>
				호텔에 따라 추가 요금이 부과될 수도 있습니다. 자세한 사항은 해당 호텔에 문의하십시오.<br></small>
			</div>
		</div> 	
	
	
	<br><br><br><br>
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>


</body>
</html>