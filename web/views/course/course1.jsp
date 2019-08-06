<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
<head>
<title>CoC</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/coc/assets/css/main.css" />

  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<style>
  #map {
    height: 350px;  /* The height is 400 pixels */
    width: 60%;  /* The width is the width of the web page */
   }
</style>
<script>
function initMap() {
  var uluru1 = {lat: 37.538587, lng: 126.987538};
  var uluru2 = {lat: 37.539577, lng: 126.991283};
  var uluru3 = {lat: 37.540972, lng: 126.989886};
  var map = new google.maps.Map(
      document.getElementById('map'), {
    	  zoom: 15, center: uluru1
    	  
      });
  
  var marker1 = new google.maps.Marker({position: uluru1, map: map});
  var marker2 = new google.maps.Marker({position: uluru2, map: map});
  var marker3 = new google.maps.Marker({position: uluru3, map: map});
  zoomControl:false;
  scaleControl:true;
}
</script>
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc-FAooT4cR2nne8SYnHMKaE7OmJfgp6U&callback=initMap">
</script>
</head>
  <body class="is-preload homepage">
	<!-- Header -->
	<%@ include file="/views/common/menubar_customer.jsp" %>

	<img src="/coc/images/cc.jfif" style="width:80%; height:400px; margin-left:10%;">
	<br><br><br>
	<h3 style="margin-left:20%;"><b>경리단 로얄리스트</b></h3><br><br>
	<div id="map" style="margin-left:20%;"></div>
	<br><br><br>

	<div role="tabpanel" style="margin-left:20%; margin-right:20%;">

	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#dateStart" aria-controls="dateStart" role="tab" data-toggle="tab"><b>데이트 시작</b></a></li>
	    <li role="presentation"><a href="#d1" aria-controls="d1" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#d2" aria-controls="d2" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-send" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#d3" aria-controls="d3" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#dateEnd" aria-controls="dateEnd" role="tab" data-toggle="tab"><b>데이트 끝</b></a></li>
	  </ul>
	
		  <!-- Tab panes -->
		<div class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="dateStart">
		  	 <div style="margin-left:10%;"><br><br>
				 <label>데이트하면 경리단길, 경리단길 하면 데이트!</label><br><br>
				 <label>경리단길 데이트를 하려면 먼저 허기진 배를 달래줘야겠는데..</label><br><br>
				 <label>어디서 먹어야 할지 모르곘다면 먹을집 식당에서 맛있는 한식을 먼저 즐기고 난 후,</label><br><br>
				 <label>연인과 손잡고 경리단길을 오순도순 함께 걸어봐요~</label><br><br>
				<label>여기에 미술소품에서 아기자기한 소품까지! 역시 경리단길 데이트가 최고여~</label>
	 		</div><br><br>
		  	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <img src="/coc/images/c1_2.PNG" alt="">
				      <div class="carousel-caption">
				        ...
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_4.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_6.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				  </div>
				
				  <!-- Controls -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
		  </div>
		  <!-- date1 -->
		  <div role="tabpanel" class="tab-pane fade" id="d1">
			  	
		  	<div style="margin-left:10%; margin-right:10%; margin-top:5%;">
			  	<label>자극이 판티는 시대에서, 두부 특유의 담백함으로 안정을 찾게 해주는 웰빙음식점입니다.</label> <br><br>
		  		<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;<label style="margin-left:1%;">0543-3109-6668</label><br><br>
		  		<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>&emsp;
		  		<label>2인 순두부정식 + 초당두부정식&emsp;&emsp;&emsp;22,000원</label>
		  		<button class="btn btn-default" style="margin-left:30%; " onclick="location.href='/coc/images/c1_menu.PNG'">메뉴판 보기</button><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 용산구 이태원로 226-3</label><br><label style="margin-left:5%;">녹사평역 2번출구 도보 14분</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">평일 11:00 ~ 15:00, 17:00 ~ 22:00 (Last order 21:00)</label><br>
		  		<label style="margin-left:5%;">토요일 11:00 ~ 22:00 (Last order 21:00)</label><br>
		  		<label style="margin-left:5%;">일요일 11:00 ~ 21:00 (Last order 20:00)</label><br>
		  		<label style="margin-left:5%;">휴무일 : 화요일</label><br><br>
		  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>&emsp;
		  		<label>주차 가능</label>
		  	</div><br><br>
		  	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <img src="/coc/images/c1_1.PNG" alt="">
				      <div class="carousel-caption">
				        ...
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_2.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				  </div>
				
				  <!-- Controls -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
		  	
		  </div>
		  <!-- date2 -->
		  <div role="tabpanel" class="tab-pane fade" id="d2">
		  		
		  	<div style="margin-left:10%; margin-right:10%; margin-top:5%;">
			  	<label>커피 한 잔 들고 걷기만 해도 영화가 되는 곳이에요</label> <br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 용산구 이태원동 685</label><br><label style="margin-left:5%;">녹사평역 2번출구 도보 14분</label><br><br>
		  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>&emsp;
		  		<label>주차 불가능</label>
		  	</div><br><br>
		  	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <img src="/coc/images/c1_3.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_4.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_5.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				  </div>
				
				  <!-- Controls -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
		  	
		  </div>
		  <!-- date3 -->
		  <div role="tabpanel" class="tab-pane fade" id="d3">
		  		<div style="margin-left:10%;"><br><br>
				 <label>소규모 매장이지만 없는 게 없는 만물상 같은 소품샵이에요</label><br><br><br>
				 <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;<label style="margin-left:1%;">0543-3109-7683</label><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 용산구 이태원로 255-46</label><br><label style="margin-left:5%;">녹사평역 2번출구 도보 13분</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">일요일 11:00 ~ 21:00</label><br>
		  		<label style="margin-left:5%;">휴무일 : 월요일</label><br><br>
		  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>&emsp;
		  		<label>주차 불가능</label>
	 		</div><br><br>
		  	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <img src="/coc/images/c1_6.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_7.PNG" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				  </div>
				
				  <!-- Controls -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
		  </div>
		  
		  <div role="tabpanel" class="tab-pane fade" id="dateEnd">
		  	<div style="margin-left:10%;"><br><br>
		 	 	<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>&emsp;
				<label>2시간 / 22,000원</label>
				<br><br><br>
		  		<label>먹을집식당 <small>Restaurant</small></label><label style="margin-left:45%">22,000원</label><br><br>
		  		<label>경리단길 <small>Walk</small></label><label style="margin-left:53%">0원</label><br><br>
		  		<label>미술소품 <small>Viewing</small></label><label style="margin-left:51%">0원</label><br><br><br>
		  		<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>&emsp;
		  		<label>먹을집 식당은 진짜 집밥을 먹는 것처럼 맛있었어요!</label><br>
		  		<label style="margin-left:5%;">경리단길에서 맛있는 한식 먹기 힘든데 먹을집에서 맛있게 먹었어요!</label><br><br>
		  		<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>&emsp;
		  		<label>미술소품은 생각보다 내부가 작아요~ </label><br>
		  		<label style="margin-left:5%;">경리단길도 사람이 은근 많아서 사람 많은거 싫어하시는 분은 비추입니다.</label><br>
		  		<br><br>
		  </div>
		</div>
</div>
	</div>



	<script>
	$('#myTab a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
		$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab a:first').tab('show') // Select first tab
$('#myTab a:last').tab('show') // Select last tab
$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)
	</script>


	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp" %>  
</body>
</html> 
