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
<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

h2 {
	font-size: 10px;
}

.checks {
	position: relative;
}

.checks input[type="checkbox"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

.checks input[type="checkbox"]+label:before { /* 가짜 체크박스 */
	content: ' ';
	display: inline-block;
	width: 21px; /* 체크박스의 너비를 지정 */
	height: 21px; /* 체크박스의 높이를 지정 */
	line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
	margin: -2px 8px 0 0;
	text-align: center;
	vertical-align: middle;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 3px;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}

.checks input[type="checkbox"]:checked+label:before { /* 체크박스를 체크했을때 */
	content: '\2714'; /* 체크표시 유니코드 사용 */
	color: #99a1a7;
	text-shadow: 1px 1px #fff;
	background: #e9ecee;
	border-color: #adb8c0;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
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
			<h6>
				당신의 취향을 테스트합니다.<br> <br> 선택 후 가입하기버튼을 누르세요.<br> <br>
				선택한 취향을 분석하여 여행가이드를 제공해드립니다 <br> <br>
			</h6>

			<form action="" method="get">
				<label class="checkbox-inline"><b>위치 </b> </label><br>
				<br>


				<div class="checks">
					<input type="checkbox" id="ex_chk1" value="option1"><label
						for="ex_chk1" class="checkbox-inline">강남구 </label> <input
						type="checkbox" id="ex_chk2" value="option2"><label
						for="ex_chk2" class="checkbox-inline">서초구 </label> <input
						type="checkbox" id="ex_chk3" value="option3"><label
						for="ex_chk3" class="checkbox-inline">관악구 </label> <input
						type="checkbox" id="ex_chk4" value="option4"><label
						for="ex_chk4" class="checkbox-inline">용산구 </label> <input
						type="checkbox" id="ex_chk5" value="option5"><label
						for="ex_chk5" class="checkbox-inline">송파구 </label> <input
						type="checkbox" id="ex_chk6" value="option6"><label
						for="ex_chk6" class="checkbox-inline">무슨구 </label>
				</div>
				<!-- </div>
  -->
				<br>
				<br> <label class="checkbox-inline"><b>인원</b> </label><br>
				<br>
				<div class="checks">
					<input type="checkbox" id="inlineCheckbox1" value="option1"><label
						for="inlineCheckbox1" class="checkbox-inline">혼자 </label> <input
						type="checkbox" id="inlineCheckbox2" value="option2"><label
						for="inlineCheckbox2" class="checkbox-inline">2인 </label> <input
						type="checkbox" id="inlineCheckbox3" value="option3"><label
						for="inlineCheckbox3" class="checkbox-inline">4인이상 </label> <input
						type="checkbox" id="inlineCheckbox4" value="option4"><label
						for="inlineCheckbox4" class="checkbox-inline">커플</label> <input
						type="checkbox" id="inlineCheckbox5" value="option5"><label
						for="inlineCheckbox5" class="checkbox-inline">가족</label> <input
						type="checkbox" id="inlineCheckbox6" value="option6"><label
						for="inlineCheckbox6" class="checkbox-inline">친구</label> <input
						type="checkbox" id="inlineCheckbox7" value="option7"><label
						for="inlineCheckbox7" class="checkbox-inline">10인 이상</label>

				</div>

				<br>
				<br>
				<br>
				<br>

				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<div>
							<button class="btn btn-default">취소하기</button>
							<button type="submit" class="btn btn-default">가입하기</button>
						</div>
					</div>
			</form>
		</div>


		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>


</body>
</html>