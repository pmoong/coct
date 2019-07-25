<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <% Member loginUser = (Member) session.getAttribute("loginUser");%>	 --%>
<!DOCTYPE HTML>

<html>
<head>
<title>CoC</title>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyC3OcLTHF_YKhnSKPLLUbrFNNaiD8vjnOQ" ></script>

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

.outer {
	width: 700px;
	height: 300px;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
}

table {
	border: 1px solid green !important;
	text-align: center;
}

.tableArea {
	width: 650px;
	height: 350px;
	margin: 0 auto;
}

.searchArea {
	width: 650px;
	margin: 0 auto;
}
#el a{
/* top: 350px; */
 font-weight:bold;
 font-size:23px;
 color:black;
 margin-left:30px;
}
/* #map_ma {width:50%; height:100px; clear:both; border:solid 1px red;}
 */</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body class="is-preload homepage">
	<%-- <% if(loginUser == null || !loginUser.getUserId().equals("admin")){ 
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다!");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request,response);
		
	} else { 
	%> --%>
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_partner.jsp"%>
 
<div class="container">
<div id="el"> 
<a  href="#intro" >호텔 소개  </a> 
<a href="#roominf" >룸 정보  </a> 
<a href="#room" >숙소 시설  </a> 
<a href="#hotelpolicy" >호텔 정책 </a> 
<a href="#map" >위치  </a> 
<a href="#information" >이용정보  </a>
</div>
 </div>
		<hr> <!-- style="border-color: orangered" -->
		<!-- 여기는 매장소개 라인입니당 -->
		<div class="container">
			<div class="row">
				<h3 id="intro" class="col-8 col-12-medium"
					style='text-align: left;margin-top: 1%;'>호텔소개</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#">
					<input type="button" onclick="gointro();" value="편집"></a>
				</span>
			</div>
		</div>
<!-- 		<hr style="border-color: orange">
 -->
		<div class="outer">
			<textarea style="/* background: skyblue */; width: 650px; height: 300px;" placeholder="여기에 입력하세요"></textarea>
		</div>
<!-- 		<hr style="border-color: orangered">
 -->
		<!--  -->
		<div class="container">
			<div class="row">
				<h3 id="roominf" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>룸정보</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#"><input
						type="button" onclick="goroominf();" value="편집"></a>
				</span>

			</div>
		</div>
<!-- 		<hr style="border-color: orange">
 -->
		<!-- Wrapper for slides -->

		<div class="outer">
			<textarea style="/* background: skyblue */; width: 650px; height: 300px;" placeholder="여기에 입력하세요"></textarea>
		</div>
<!-- 		<hr style="border-color: orange">
 -->		<!--  -->
		<div class="container">
			<div class="row">
				<h3 id="room" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>숙소시설</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#"><input
						type="button" onclick="goroom();" value="편집"></a>
				</span>

			</div>
		</div>
<!-- 		<hr style="border-color: orange">
 -->
		<!-- Wrapper for slides -->

		<div class="outer">
			<textarea style="/* background: skyblue; */ width: 650px; height: 300px;" placeholder="여기에 입력하세요"></textarea>
		</div>
<!-- 		<hr style="border-color: orange">
 -->
 
		<div class="container">
			<div class="row">
				<h3 id="hotelpolicy" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>호텔정책</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#"><input
						type="button" onclick="gohotelpolicy();" value="편집"></a>
				</span>

			</div>
		</div>
<!-- 		<hr style="border-color: orange">
 -->
		<div class="outer">
			<textarea style="/* background: skyblue; */ width: 650px; height: 300px;" placeholder="여기에 입력하세요"></textarea>
		</div>
 
 
		<!--  -->
		
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>위치</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#"><input
						type="button" onclick="gomap();" value="편집"></a>
				</span>
		 
				<div id="map" class="outer" style="width: 650px; height: 300px;">
				</div>
				</div>	
 </div>
	</div>	 
<!-- 		<hr style="border-color: orange">
 --> 
		<!-- Wrapper for slides -->
<!-- 		<hr style="border-color: orange">
 -->
		<!--  -->
		
		<div class="container">
			<div class="row">
				<h3 id="information" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>이용정보</h3>
				<span class="col-4 col-12-medium"
					style="float: right; margin-top: 1%;"> <a href="#"><input
						type="button" onclick="goinformation();" value="편집"></a>
				</span>

			</div>
		</div>
<!-- 		<hr style="border-color: orange">
 -->
		<!-- Wrapper for slides -->

		<div class="outer">
			<textarea style="/* background: skyblue; */ width: 650px; height: 300px;" placeholder="여기에 입력하세요"></textarea>
		</div>
		<hr>



		<hr style="border-color: orangered; border-solid: 5px">
		<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp"%>


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
 
    function gointro(){
    	location.href="/coc/hotel.intro";
    }
    function goroominf(){
    	location.href="/coc/hotel.ri";
    }
    function goroom(){
    	location.href="/coc/hotel.rm";
    }
    function gohotelpolicy(){
    	location.href="/coc/hotel.hp";
    }
    function gomap(){
    	location.href="/coc/hotel.map";
    }
    function goinformation(){
    	location.href="/coc/hotel.im";
    }
    
    
    
   
    
  </script>
</body>
</html>