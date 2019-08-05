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
		<img src="/coc/images/cccc.jpg" style="width:80%; height:400px; margin-left:10%;">
	<br>
	<h3 style="margin-left:20%;"><b>가로수 고급지다잉</b></h3>
	<br><br><br>
	<div role="tabpanel" style="margin-left:20%; margin-right:20%;">

	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#dateStart" aria-controls="dateStart" role="tab" data-toggle="tab"><b>데이트 시작</b></a></li>
	    <li role="presentation"><a href="#d1" aria-controls="d1" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#d2" aria-controls="d2" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-ice-lolly" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#d3" aria-controls="d3" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-ice-lolly" aria-hidden="true"></span></a></li>
	    <li role="presentation"><a href="#dateEnd" aria-controls="dateEnd" role="tab" data-toggle="tab"><b>데이트 끝</b></a></li>
	  </ul>
	
		  <!-- Tab panes -->
		<div class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="dateStart">
		  	 <div style="margin-left:10%;"><br><br>
				 <label>가로수길에서 여심을 한번에 사로잡을 수 있는 코스에요.</label><br><br>
				 <label>분위기깡패 르브런쉭에서 여자들이 제일 좋아한다는 브런치를 먹고</label><br><br>
				 <label>젠틀몬스터에서 선글라스도 구경하고 아늑한 공간에서 쉬어도 보고 </label><br><br>
				 <label>도레도레 아트빌리지에서 세젤예 케이크를 먹고 인생사진도 남겨봐요!</label><br><br>
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
				      <img src="/coc/images/c2_1.jfif" alt="">
				      <div class="carousel-caption">
				        ...
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c2_4.jpg" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c2_6.jfif" alt="">
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
			  	<label>런치에는 저렴하게 비주얼 깡패 브런치를 먹을 수 있는 곳이에요.</label> <br><br>
		  		<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;<label style="margin-left:1%;">0543-3109-7044</label><br><br>
		  		<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>&emsp;
		  		<label>런치메뉴&emsp;&emsp;&emsp;28,000원</label>
		  		<button class="btn btn-default" style="margin-left:30%; " onclick="location.href='/coc/images/c1_menu.PNG'">메뉴판 보기</button><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 강남구 신사동 524 오로라빌</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">10:30 ~ 23:00</label><br>
		  		<label style="margin-left:5%;">휴무일 : 명절 당일</label><br><br>
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
				      <img src="/coc/images/c2_1.jfif" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c2_2.jfif" alt="">
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
			  	<label>선글라스도 예쁜데 인테리어도 눈을 뗄 수 없을만큼 예쁜 곳이에요.</label> <br><br>
			  	<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;
			  	<label style="margin-left:1%;">0543-3109-7044</label><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 강남구 신사동 533-6</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">12:00 ~ 21:00</label><br><br>
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
				      <img src="/coc/images/c2_3.jpg" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c2_4.jpg" alt="">
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
				 <label>비주얼 넘쳐 흐르는 디저트를 맛볼 수 있는 카페에요</label><br><br><br>
			  	<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&emsp;
			  	<label style="margin-left:1%;">0543-3109-7051</label><br><br>
		  		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&emsp;
		  		<label>서울특별시 강남구 신사동 544-4</label><br><br>
		  		<span class="glyphicon glyphicon-time" aria-hidden="true"></span>&emsp;
		  		<label>영업 시간 : </label><br>
		  		<label style="margin-left:5%;">10:00 ~ 23:00</label><br><br>
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
				      <img src="/coc/images/c2_5.jpg" alt="">
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <img src="/coc/images/c2_6.jfif" alt="">
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
				<label>2.5시간 / 44,000원</label>
				<br><br><br>
		  		<label>로브런쉭 <small>Restaurant</small></label><label style="margin-left:45%">28,000원</label><br><br>
		  		<label>젠틀몬스터 <small>Walk</small></label><label style="margin-left:53%">0원</label><br><br>
		  		<label>도레도레아트빌리지 <small>Viewing</small></label><label style="margin-left:45%">16,000원</label><br><br><br>
		  		<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>&emsp;
		  		<label>르브런쉭은 평일 런치에 방문하면 28000원으로 에그베네딕트와 파스타음료 2잔까지 먹을 수 있어요.</label><br>
		  		<label style="margin-left:5%;">젠틀몬스터는 구경만 하는 것이 아니라 쉴 수 있는 공간도 있어서 좋았어요. 도레도레는 핑핑해서 사진을 찍기에 정말 좋은 곳이랍니다.</label><br><br>
		  		<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>&emsp;
		  		<label>르브런쉭에서 에그베네딕트를 주문하실 때 베이컨으로 주문하시는 것을 추천해요.</label><br>
		  		<label style="margin-left:5%;">연어는 살짝 비린맛이 나더라고요.</label><br>
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
