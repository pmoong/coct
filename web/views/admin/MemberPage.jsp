<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.board.model.vo.*"%>
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	ArrayList<Object> list2 = (ArrayList<Object>) request.getAttribute("list2");
	String icode = (String) request.getAttribute("icode");
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

table {
	border: 1px solid black !important;
	text-align: center;
}

.tableArea {
	width: 100%;
	height: 20%;
	margin: 0 auto;
}

table th {
	text-align: center !important;
}

.infoArea {
	width: 100%;
	border-radius: 50px !important;
}

.infoArea {
	width: 100%;
	border-radius: 50px !important;
	border: 1px solid black !important;
}

tr, td, th {
	border: 1px solid black !important;
	padding-top: 0;
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

div>a {
	text-decoration: none;
	color: black !important;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp"%>
		<!-- CONTENTS -->
		<div class="container">

			<div>
				<table align="center" class="infoArea">
					<tbody>
						<tr>
							<td rowspan="4" style="vertical-align: middle"><img
								id="imgThumb"
								src="https://static.nid.naver.com/images/web/user/default.png?type=s160"
								width="40%" height="40%"> <br>
							<br>
								<button style="background: darkgray">편집</button></td>
							<td><label id="id">아이디 </label></td>
							<td><%=loginUser.getUserId()  %></td>
						</tr>
						<tr>
							<td><label>성별</label></td>
							<td>
								<% if(loginUser.getGender().equals("M") || loginUser.getGender().equals("남자")){
					    loginUser.setGender("남자");	
					}else{
						loginUser.setGender("여자");
					} %> <%= loginUser.getGender() %></td>

						</tr>
						<tr>
							<td><label>이메일</label></td>
							<td><%=loginUser.getEmail() %></td>
						</tr>
						<tr>
							<td><label>비밀번호</label></td>
							<td><input type="password" name="password" id="password">&nbsp;&nbsp;
								<button style="background: darkgray" id="testbtn">
									<p>비밀번호변경하기</p>
								</button></td>
						</tr>
						<tr>
							<td style="vertical-align: middle"><label>설문조사</label>
								<form action="/coc/updateSurvey" method="post">
									<br>
									<br>
									<button typee="submit" style="background: darkgray">저장하기</button>
									<input type="hidden" name="uno"
										value="<%=loginUser.getUno() %>"> <input type="hidden"
										name="id" value="<%=loginUser.getUserId() %>"> <input
										type="hidden" name="password"
										value="<%=loginUser.getUserPwd() %>"> <input
										type="hidden" name="email" value="<%=loginUser.getEmail() %>">
									<input type="hidden" name="utype"
										value="<%=loginUser.getuType() %>"> <input
										type="hidden" name="gender"
										value="<%=loginUser.getGender() %>"> <input
										type="hidden" name="age" value="<%=loginUser.getAge() %>">
									<input type="hidden" name="icode"
										value="<%=loginUser.getiCode() %>"> <input
										type="hidden" name="status"
										value="<%=loginUser.getStatus() %>"></td>
							
							</form>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<br>
			<br>
		</div>

		





		<!-- Features1 -->
		<div class="container">
			<!-- <a onclick="goReview();"> -->
			<a href="/coc/views/board/reviewList.jsp">
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>회원리뷰</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'>></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
			<br>
			<div class="outer container">
		<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">글번호</th>
					<th width="100px">구분</th>
					<th width="300px">글제목</th>
					<th width="100px">작성자</th>
					<th width="100px">조회수</th>
					<th width="150px">작성일</th>
				</tr>
				<% for(Board b : list){ 
				%>
				<tr>
					<input type="hidden" value="<%= b.getbCode() %>">
					<td><%= b.getbCode() %></td>
					<td><%= b.getbType() %></td>
					<td><%= b.getbTitle() %></td>
					<td><%= b.getbWriter() %></td>
					<td><span><%= b.getCount()%></span></td>
					<td><%= b.getbDate() %></td>
				</tr>
				<% } %>
			</table>
		</div>
		<br><br><br><br><br>
	</div>
			<br>
			<br>
			<br>
		</div>
		<script>
				function goReview(){
					location.href="/coc/selectList.rv"
				}
			</script>

		<div class="container">
			<a href="/coc/views/member/usingHistory.jsp">
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>이용내역</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'>></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
			<br>
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="100px">예약번호</th>
						<th width="100px">방이름</th>
						<th width="100px">회원번호</th>
						<th width="100px">예약한날짜</th>
						<th width="100px">예약한상품날짜</th>
						<th width="100px">??</th>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㄴㄴ</td>
						<td>ㅇㅇ</td>
						<td>ㄹㄹ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
					<tr>
						<td>ㅁㅁ</td>
						<td>ㄴㄴ</td>
						<td>ㅇㅇ</td>
						<td>ㄹㄹ</td>
						<td>ㄷㄷ</td>
						<td>ㅋㅋ</td>
					</tr>
				</table>
			</div>
			<br>
			<br>
			<br>
		</div>


		<!-- Wrapper for slides -->

		<div class="container">
			<a href="/coc/views/member/myCoc.jsp">
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>나의콕</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'>></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
			<br>
			<div class="item">
				<div id="features-wrapper">
					<div class="container">

						<div class="row">
							<div class="col-4 col-12-medium">
								<!-- Box -->
								<section class="box feature">
									<a href="#" class="image featured"><img
										src="../../images/pic01.jpg" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="#" class="image featured"><img
										src="../../images/pic02.jpg" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
							<div class="col-4 col-12-medium">

								<!-- Box -->
								<section class="box feature">
									<a href="#" class="image featured"><img
										src="../../images/pic03.jpg" alt="" /></a>
									<div class="inner"></div>
								</section>

							</div>
						</div>
					</div>
				</div>
			</div>


			<!-- Footer -->
			<br>
			<br>
			<br>
		</div>

		<%@include file="/views/common/footerbar_customer.jsp"%>
	</div>
	<script>

	//비밀번호 변경
	$("#testbtn").click(function(){
		
		var value = $("#password").val();
		var check='<%=loginUser.getUserPwd()%>';
		
		if(  check==value ){
			location.href='/coc/views/member/changeUserPwd.jsp';
		}else{
			alert("비밀번호를 확인하세요");
		}
	});
	// 취향
	$(function(){
		$("input[name=checkbox]").each(function(){
			var arr = '<%= loginUser.getiCode() %>'.split(",");
			
			for(var i=0;i<arr.length;i++){
				if($(this).val()== arr[i]){
					$(this).attr("checked", true);
				}
			}
		});
	});
	
	 /*  $(document).ready(function() {
		location.href="/coc/selectSurvey";
	}); */

	
</script>

</body>
</html>