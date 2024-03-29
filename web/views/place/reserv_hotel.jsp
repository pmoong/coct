<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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

#el a {
	/* top: 350px; */
	font-weight: bold;
	font-size: 23px;
	color: black;
	margin-left: 30px;
}
</style>
</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp"%>
		<div>
			<div style="margin-left: 23%; float: left">
				<h1>
					<b>디럭스룸(싱글베드 2개)</b>
				</h1>
				<b>그랜드 인터컨티넨탈 서울 파르나스</b><br>
				<br>
				<br>
			</div>
			<div style="margin-right: 25%; float: right; margin-top: 2%;">
				<button class="btn btn-default" style="padding: 40%;" onclick="pay()">예약하기</button>
			</div>
		</div>
		<div class="container" align="center">
			<div class="cocInfo" id="cocInfo" align="center">
				<div class="left-box" style="width: 100%; height: 90%;">
					<img src="/coc/images/room1.jpg" width="100%" height="100%" />
				</div>
			</div>
			<br>
			<br>
			<div style="margin-left: 25%;">
				<table>
					<tr>
						<th><p>체크인</p></th>
						<th><p>체크아웃</p></th>
					</tr>
					<tr>
						<td><input type="date" id="checkindate"></td>
						<script>
        					$('#checkindate').change(function (){
            				var date = $('#checkindate').val();
            				alert(date);
        					});
   						 </script>

						<td><input type="date"></td>
					</tr>
				</table>
			</div>
			<div style="border: 1px solid gray; width: 70%; height: 100%;">
				<br>
				<div style="margin-left: 10%; text-align: left;">
					<label><b>숙박</b></label><br>
				</div>
				<div style="margin-right: 10%; text-align: right;">
					<small>판매가</small> <label>240336원</label><br>
				</div>
				<br>
			</div>
			<br>
			<br>

			<!--  -->
			<div class="container" style="margin-left: 15%;">
				<div class="row">
					<label id="intro" class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>기본정보</label>
				</div>
				<div
					style="width: 100%; text-align: left; margin-left: 10%; margin-top: 1%;">
					심플하고 모던한 디자인이 돋보이는 객실<br>
					<br> 객실 상황에 따라 일부 날짜는 조기 마감될 수 있습니다.<br> 상기 금액은 스탠다드 객실
					기준이며, 객실 타입 및 뷰에 따라 금액이 변경될 수 있습니다.<br> 체크인은 오후 2시 이후, 체크아웃은
					정오까지 입니다.<br> 성인 2인 1실 기준 1박 요금이며, 세금은 별도입니다.<br> 피트니스
					센터는 안전상의 이유로 16세 이상 입장 가능합니다.<br>
				</div>
			</div>
			<!--  -->
			<div class="container" style="margin-left: 15%;">
				<div class="row">
					<label id="intro" class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>포함혜택</label>
				</div>
				<div
					style="width: 100%; text-align: left; margin-left: 10%; margin-top: 1%;">
					스탠다드 객실 1실 1박<br> 제이준 마스크 시트 2매<br> 무료 WIFI / 피트니스 센터 무료
					이용 / 아베다 어메니티<br>
				</div>
			</div>
			<!--  -->
			<div class="container" style="margin-left: 15%;">
				<div class="row">
					<label id="intro" class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>취소규정</label>
				</div>
				<div
					style="width: 100%; text-align: left; margin-left: 10%; margin-top: 1%;">
					숙박예정일 1일전 18시까지는 위약금 없이 취소 및 변경됩니다.<br> 숙박예정일 1일전 18시 이후 취소/변경
					및 노쇼(No-show) 시,<br> 성수기(4,5,6,10,11월, 12/24일, 12/31일): 최초 1일
					숙박 요금의 80%가 위약금으로 부과됩니다.<br> 비수기(성수기 외 기간): 최초 1일 숙박요금의 10%가
					위약금으로 부과됩니다.<br>
				</div>
			</div>

			<br>
			<br>
			<br>
			<br>
			<!-- Footer -->
			<%@include file="/views/common/footerbar_customer.jsp"%>

		</div>
		<script>
		function pay(){
			var IMP = window.IMP; // 생략가능
	        IMP.init('imp81277853'); //  "가맹점 식별코드"를 사용
	        var msg;
	        
	        IMP.request_pay({
	            pg : 'kakaopay',
	            pay_method : 'card',
	            merchant_uid : 'merchant_' + new Date().getTime(),
	            name : '숙소 결제',
	            amount : 240336
	            
	            
	        }, function(rsp) {
	            if ( rsp.success ) {
	                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	                jQuery.ajax({
	                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
	                    type: 'POST',
	                    dataType: 'json',
	                    data: {
	                        imp_uid : rsp.imp_uid
	                        //기타 필요한 데이터가 있으면 추가 전달
	                    }
	                }).done(function(data) {
	                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	                    if ( everythings_fine ) {
	                        msg = '결제가 완료되었습니다.';
	                        msg += '\n고유ID : ' + rsp.imp_uid;
	                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
	                        msg += '\결제 금액 : ' + rsp.paid_amount;
	                        msg += '카드 승인번호 : ' + rsp.apply_num;
	                        
	                        alert(msg);
	                    } else {
	                        //[3] 아직 제대로 결제가 되지 않았습니다.
	                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	                    }
	                });
	             	//성공시 이동할 페이지
	                location.href='<%=request.getContextPath()%>';
	            } else {
	                msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	                //실패시 이동할 페이지
					location.href="<%=request.getContextPath()%>/views/common/errorPage.jsp";
	                alert(msg);
	            }
	        });
		}
		
		</script>
</body>
</html>