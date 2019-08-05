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
 #bb{
  
 padding-left:30px !important;
 	font-size:2em !important;
 	color:#000000 !important;
 	  border:none !important;
 	font-weight: bold !important;
 }
 .icono-smile {
	color : #2ba3bb;
}

.my_fontaw{
	border:2px solid black;
	background-color:black;

}
.my_fontmu{
color:white;
 
}
 
#el{
position: fixed;
top: 350px;
 font-weight:bold;
 font-size:20px;
  
 
}
#el:hover{
position: fixed;
top: 350px;
 font-weight:bold; 
  font-size:20px;
}
 
#color{
  color:black;
 
 
}#color:hover{
color:#51c4a5;
 
}
#map_ma {width:100%; height:400px; clear:both; border:solid 1px red;}

  </style>
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
</head>
  <body class="is-preload homepage">
	<!-- Header -->
	<%@ include file="/views/common/menubar_customer.jsp" %>
	
	<h3 style="margin-left:20%;"><b>경리단 로얄리스트</b></h3>
	<br><br><br>
	<div role="tabpanel" style="margin-left:20%; margin-right:20%;">

	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#dateStart" aria-controls="dateStart" role="tab" data-toggle="tab"><b>데이트 시작</b></a></li>
	    <li role="presentation"><a href="#d1" aria-controls="d1" role="tab" data-toggle="tab"><b>먹을집 식당</b></a></li>
	    <li role="presentation"><a href="#d2" aria-controls="d2" role="tab" data-toggle="tab"><b>경리단길</b></a></li>
	    <li role="presentation"><a href="#d3" aria-controls="d3" role="tab" data-toggle="tab"><b>미술소품</b></a></li>
	    <li role="presentation"><a href="#dateEnd" aria-controls="dateEnd" role="tab" data-toggle="tab"><b>데이트 끝</b></a></li>
	  </ul>
	
		  <!-- Tab panes -->
		<div class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="dateStart">
		  	 <div style="margin-left:10%;"><br><br>
				 <label>데이트하면 경리단길, 경리단길 하면 데이트!</label><br>
				 <label>경리단길 데이트를 하려면 먼저 허기진 배를 달래줘야겠는데..</label><br>
				 <label>어디서 먹어야 할지 모르곘다면 먹을집 식당에서 맛있는 한식을 먼저 즐기고 난 후,</label><br>
				 <label>연인과 손잡고 경리단길을 오순도순 함께 걸어봐요~</label><br>
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
		  <div role="tabpanel" class="tab-pane fade" id="d1">
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
		  	<div style="margin-left:10%; margin-right:10%; margin-top:5%;">
			  	<label>자극이 판티는 시대에서, 두부 특유의 담백함으로 안정을 찾게 해주는 웰빙음식점입니다.</label> <br>
		  		<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;<label>0543-3109-6668</label><br>
		  		<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>&emsp;
		  		<label>2인 순두부정식 + 초당두부정식&emsp;&emsp;&emsp;22,000원</label>
		  		<button class="btn btn-default" style="margin-left:30%; " onclick="location.href='/coc/images/c1_menu.PNG'">메뉴판 보기</button><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 용산구 이태원로 226-3</label><br><label style="margin-left:5%;">녹사평역 2번출구 도보 14분</label><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">평일 11:00 ~ 15:00, 17:00 ~ 22:00 (Last order 21:00)</label><br>
		  		<label style="margin-left:5%;">토요일 11:00 ~ 22:00 (Last order 21:00)</label><br>
		  		<label style="margin-left:5%;">일요일 11:00 ~ 21:00 (Last order 20:00)</label><br>
		  		<label style="margin-left:5%;">휴무일 : 화요일</label><br>
		  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>&emsp;
		  		<label>주차 가능</label>
		  	</div>
		  </div>
		  <div role="tabpanel" class="tab-pane fade" id="d2">
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
				        ...
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c1_4.PNG" alt="">
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
		  	<div style="margin-left:10%; margin-right:10%; margin-top:5%;">
			  	<label>커피 한 잔 들고 걷기만 해도 영화가 되는 곳</label> <br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 용산구 이태원동 685</label><br><label style="margin-left:5%;">녹사평역 2번출구 도보 14분</label><br>
		  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>&emsp;
		  		<label>주차 불가능</label>
		  	</div>
		  </div>
		  <div role="tabpanel" class="tab-pane fade" id="d3">
		  
		  </div>
		  <div role="tabpanel" class="tab-pane fade" id="dateEnd">
		  
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
