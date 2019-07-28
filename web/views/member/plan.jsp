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
			
			
			
			<div id="rowDay1" class="row">
				<div class="count">
					<h1>1일차</h1>
					<sup><button type="button" id="colPlus1" class="btn" style="font-size:20px" onclick="colPlus('1')">+</button></sup>
					<sup style="float:right"><button type="button" id="colMinus1" class="btn" style="font-size:20px" onclick="colMinus('1')">-</button></sup>
				</div>
				<div class="cir">
					<div id="circle1_1" class="circle" style="float:left;">
					
					</div>
					
					<button type="button" id="rowPlus1" class="circle2" style="float:right" onclick="rowPlus('1')">+</button>
				</div>
			</div>
			
			
			<script>
			var prv_id="1";
			var dth;
			var index1=1;
			var index2=1;
			var index3=1;
			var day=1;
			function colPlus(id){
				if(prv_id){
					if(id==1){
						if(index1<6){
							$("#circle1_"+index1).after('<div id="css-arrow1_'+index1+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle1_'+(index1+1)+'" class="circle" style="float:left;"> </div>');
							index1++;
						}else{
							alert('6개가 최대');
						}
					}else if(id==2){
						if(index2<6){
							$("#circle2_"+index2).after('<div id="css-arrow2_'+index2+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle2_'+(index2+1)+'" class="circle" style="float:left;"> </div>');
							index2++;
						}else{
							alert('6개가 최대');
						}
					}else if(id==3){
						if(index3<6){
							$("#circle3_"+index3).after('<div id="css-arrow3_'+index3+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle3_'+(index3+1)+'" class="circle" style="float:left;"> </div>');
							index3++;
						}else{
							alert('6개가 최대');
						}
					}
					prv_id=id;
				}
			};
			
			function colMinus(id){
				if(prv_id){
					if(id==1){
						if(index1>1){
							$("#css-arrow1_"+(index1-1)).detach(dth);
							$("#circle1_"+index1).detach(dth);
							index1--;
							}else{
								alert('1개가 최소');
							}
					}else if(id==2){
						if(index2>1){
							$("#css-arrow2_"+(index2-1)).detach(dth);
							$("#circle2_"+index2).detach(dth);
							index2--;
							}else{
								alert('1개가 최소');
							}
					}else if(id==3){
						if(index3>1){
							$("#css-arrow3_"+(index3-1)).detach(dth);
							$("#circle3_"+index3).detach(dth);
							index3--;
							}else{
								alert('1개가 최소');
							}
					}
					prv_id=id;
				}
			};
			
			function rowPlus(id){
				if(prv_id){
					if(id==1 && $("#rowDay2").length==0){
						day++;
						$("#rowDay1").after('<div id="rowDay2" class="row"> <div class="count"> <h1>2일차</h1> <sup><button type="button" id="colPlus2" class="btn" style="font-size:20px" onclick="colPlus('+2+')">+</button></sup> <sup style="float:right"><button type="button" id="colMinus2" class="btn" style="font-size:20px" onclick="colMinus('+2+')">-</button></sup> </div> <div class="cir"> <div id="circle2_'+index2+'" class="circle" style="float:left;"> </div>  <button type="button" id="rowMinus2" class="circle2" style="float:right" onclick="rowMinus('+2+')">-</button> <button type="button" id="rowPlus2" class="circle2" style="float:right" onclick="rowPlus('+2+')">+</button></div> </div>');
					}else if(id==1 && $("#rowDay2").length==1){
						alert('2일차는 이미 존재');
					}else if(id==2 && day==2 && $("#rowDay3").length==0){
						day++;
						$("#rowDay2").after('<div id="rowDay3" class="row"> <div class="count"> <h1>3일차</h1> <sup><button type="button" id="colPlus3" class="btn" style="font-size:20px" onclick="colPlus('+3+')">+</button></sup> <sup style="float:right"><button type="button" id="colMinus3" class="btn" style="font-size:20px" onclick="colMinus('+3+')">-</button></sup> </div> <div class="cir"> <div id="circle3_'+index3+'" class="circle" style="float:left;"> </div>  <button type="button" id="rowMinus3" class="circle2" style="float:right" onclick="rowMinus('+3+')">-</button> <button type="button" id="rowPlus3" class="circle2" style="float:right" onclick="rowPlus('+3+')">+</button></div> </div>');
					}else if(id==2 && $("#rowDay3").length==1){
						alert('3일차는 이미 존재');
					}else{
						alert('3일이 최대');
					}
					prv_id=id;
				}
			};
			
			function rowMinus(id){
				if(prv_id){
					if(id==2){
						$("#rowDay"+id).detach(dth);
						day--;
						index2=1;
					}else if(id==3){
						$("#rowDay"+id).detach(dth);
						day--;
						index3=1;
					}
					prv_id=id;
				}
			}
			
			</script>
			
			
	</div>
	<%@include file="/views/common/footerbar_customer.jsp"%>
	</div>
</body>
</html>