<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body{
	background:white;
}
.left-box {
  background: red;
  float: left;
  width: 60%;
}
.right-box {
  background: white;
  float: right;
  width: 40%;
}	
textarea {
	 resize: none;
}
#pm {
	position : relative;
	left: 80%;
	top: 73%;	
}
.h12 {
	text-align: center;
}
.circle {
	width:11%;
	height:150px;
	border-radius:50%;
	background:white;
	border:2px solid black;
}
.circle2 {
	width:7%;
	height:100px;
	border-radius:50%;
	background:white;
	border:1px solid black;
}
.count {
	 float: left;
 	 width: 12%;
}
.cir {
	 float: right;
	 width: 88%;
}
.css-arrow {
    display: inline-block;
    position: relative;
    margin: 0 0 0 8px;
    padding: 0;
    width: 0;
    height: 0;
    border: 10px solid transparent;
    border-left-color: #000;
}
#btn {
	background:white;
}
.btn {
	background:white;
}
.plan2 {
	margin: 50px 0;
}
.tab_menu{
	background:white;
}
.selected{
	background:darkgray;
}
button:hover{
	background:white !important;
}
.tab_menu{
	float:left;
	width:25%;
	padding-top:12px;
	padding-bottom:12px;
	text-align:center;
	border:1px solid black;
	
}
.plus_menu{
	
}
</style>
</head>
<body>
	<%@ include file="../common/menubar_customer.jsp"%>
	<div class="container">
		<div class="row">
			<div class="left-box">
				<h1 id="pm">
					<a href="#">+</a>
					<a href="#">-</a>
				</h1>
			</div>
			<div class="right-box">
				<span class="demoSpan1"></span>
				<input type="search" style="width:100%; height:40px;">
				<br>
					<button id="btn1" class="tab_menu" onclick="selTab('1')">문화</button>
					<button id="btn2" class="tab_menu" onclick="selTab('2')">숙박</button>
					<button id="btn3" class="tab_menu" onclick="selTab('3')">식당</button>
					<button id="btn4" class="tab_menu" onclick="selTab('4')">관광</button>
				<script>
					var prv_id="1";
					function selTab(id){
						if(prv_id)
						$("#btn"+prv_id).removeClass("selected");
						$("#btn"+id).addClass("selected");
						
						prv_id=id;
					}
				</script>
				<textarea rows="10" cols="50" name="contents"style="overflow-y:scroll; width:100%" readonly></textarea>
			</div>
		</div>
		<div class="bottom" id="bottom">
			<div class="h12">
				<h1>콕과 함께 당신의 여행을 콕 찍어 그려보세요</h1><br>
				<h2>첫 번째 목적지를 설정해볼까요?</h2><br><br><br>
			</div>
			<div class="row">
				<div class="count">
					<h1>1일차</h1>
					<button id="btn1" class="btn" onclick="plus1()" style="font-size:20px">+</button>
					<button id="btn1" class="btn" onclick="minus1()" style="font-size:20px">-</button>
				</div>
				<div class="cir">
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					
					<button class="circle2" style="float:right" onclick="rowPlus()">+</button>
				</div>
			</div>
			
			<div class="row">
			<div class="plan2" id="plan2">
				<div class="count">
					<h1>2일차</h1>
					<button id="btn2" class="btn" onclick="plus2()">+</button>
				</div>
				<div class="cir">
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
				</div>
			</div>
			</div>
			
			<div class="row">
			<div class="plan3" id="plan3">
				<div class="count">
					<h1>3일차</h1>
					<button id="btn3" class="btn" onclick="plus3()">+</button>
				</div>
				<div class="cir">
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
					<div class="css-arrow" style="float:left; margin-top:60px"></div>
					<div class="circle" style="float:left;"></div>
				</div>
			</div>
			</div>
			<div class="plan4" id="plan4"></div><br>
			<div class="plan5" id="plan5"></div><br>
		</div>
	</div>
	<script>
		/* function plus(){
			var plHtml = "";
			plHtml = plHtml + $(".plan");
			
			$(".bottom").append(plHtml);
		} */
		/* var $plan = $('#plan').clone();
		var plan = document.getElementById('plan').cloneNode(true);
		
		var $div = $('<div></div>');
		var div = document.createElement('div');
		 */
		
		
	    /*   function plus(){
	        $("#bottom").append($div);
	        $div.appendTo($('#plan'));
	        document.getElementById('plan').appendChild(div);
	      } */
	      
	     // var plan = $('#plan1').clone();
	      
	      var count = 1;
	      
	      $("#btn").click(function(){
	      count++;
	      
	      });
	      
	      console.log(count);	
		 /* function plus(){
	      
	      if(count == 1){
  	  		plan.appendTo('#plan2');
  	  	  }else if(count == 2){
  	  		
  	  		plan.appendTo('#plan3');
  	  	  }
	      
	      } */
	      $("#plan2").hide();
	      $("#plan3").hide();
	      function plus1(){
			 $("#plan2").show();
	    	 $("#btn1").hide();
	      }
	      function plus2(){
	    	 $("#plan3").show();
	    	 $("#btn2").hide();
	      }
	      
	        
	      /* function plus(){
	    	  	
	    	  	if(count == 1){
	    	  		plan.appendTo('#plan2');
	    	  	}else if(count == 2){
	    	  		plan.appendTo('#plan3');
	    	  	}
	    	  	
	      } */
	      
	
		
	</script>
	<%@include file="/views/common/footerbar_customer.jsp"%>
</body>
</html>