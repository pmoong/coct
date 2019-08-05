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
		<img src="/coc/images/ccc.jpg" style="width:80%; height:400px; margin-left:10%;">
	<br>
	<h3 style="margin-left:20%;"><b>한복입궁 가자 궁</b></h3>
	<br><br><br>
	<div role="tabpanel" style="margin-left:20%; margin-right:20%;">

	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#dateStart" aria-controls="dateStart" role="tab" data-toggle="tab"><b>데이트 시작</b></a></li>
	    <li role="presentation"><a href="#d1" aria-controls="d1" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-camera" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#d2" aria-controls="d2" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-queen" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#dateEnd" aria-controls="dateEnd" role="tab" data-toggle="tab"><b>데이트 끝</b></a></li>
	  </ul>
	
		  <!-- Tab panes -->
		<div class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="dateStart">
		  	 <div style="margin-left:10%;"><br><br>
				 <label></label><br><br>
				 <label>서울에서 전통과 현대를 두루 느낄 수 있는 인사동!</label><br><br>
				 <label>오늘은 인사동을 시작으로 고궁을 둘러보며 우리나라의 멋을 느껴봐요.</label><br><br>
				 <label>그냥 돌기에 심심하다면 고운 한복 맞춰 입고 한복 자락 휘날리며</label><br><br>
				<label>우아하게 궁 데이트를 해봅시다</label>
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
				      <img src="/coc/images/c3_2.jpg" alt="">
				      <div class="carousel-caption">
				        ...
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c3_3.jpg" alt="">
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
			  	<label>이렇게 에쁜 줄 몰랐어!! 한복 입고 내 인생 최고로 예쁜 인생샷을 남겨봐요</label> <br><br>
		  		<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;
		  		<label style="margin-left:1%;">0543-3109-6668</label><br><br>
		  		<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>&emsp;
		  		<label>테마한복 90분 체험 (2인)&emsp;&emsp;&emsp;40,000원</label>
		  		<button class="btn btn-default" style="margin-left:30%; " onclick="location.href='/coc/images/c1_menu.PNG'">메뉴판 보기</button><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 종로구 소격동 109</label><br><label style="margin-left:5%;">안국역 2번 출구 도보 11분</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">10:00 ~ 20:00 (입장마감 18ㅣ30)</label><br>
		  		<label style="margin-left:5%;">휴무일 : 연중무휴</label><br><br>
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
				      <img src="/coc/images/c3_1.jpg" alt="">
				      <div class="carousel-caption">
				        ...
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c3_2.jpg" alt="">
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
			  	<label>한복입으면 무료입장! 사계정 각각의 매력을 자랑하는 아름다운 경복궁이에요</label> <br><br>
		  		<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>&emsp;
		  		<label>입장료 (만 25세 이상)&emsp;&emsp;&emsp;3,000원</label><br>
		  		<label style="margin-left:5%;">입장료 (만 24세 이하)&emsp;&emsp;&emsp;0원</label><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 종로구 세종로 1-91</label><br><label style="margin-left:5%;">경복궁역 4번 출구 도보 6분</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">휴무일 : 연중무휴</label><br><br>
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
				      <img src="/coc/images/c3_3.jpg" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c3_4.jpg" alt="">
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
				<label>3.5시간 / 60,700원</label>
				<br><br><br>
		  		<label>한복남 경복궁점 <small>Restaurant</small></label><label style="margin-left:45%">22,000원</label><br><br>
		  		<label>경복궁 <small>Walk</small></label><label style="margin-left:53%">0원</label><br><br>
		  		<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>&emsp;
		  		<label>한복집은 다양한 종류의 한복을 시간제한 없이 고르고 입어볼 수 있어서 좋아요.</label><br>
		  		<label style="margin-left:5%;">머리띠 복주머니까지 추가금액없이 대여 가능하다는 것도 장점!</label><br><br>
		  		<label style="margin-left:5%;">한복입고 소꿉놀이는 경복궁과 지하철역에서 매우 가까웠어요</label><br><br>
		  		<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>&emsp;
		  		<label>한복을 고르는 데에 시간제한이 없어서인지 예약을 하지 않으면 꽤 많이 기다려야해요. </label><br>
		  		<label style="margin-left:5%;">또, 규모가 작아서 손님이 많을 경우 원하는 사이즈와 디자인의 한복을 고르지 못할 수도 있어요</label><br>
		  		<br><br>
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
