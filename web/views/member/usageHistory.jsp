<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Header -->
	<%@ include file="/views/common/menubar_customer.jsp" %>
	
	<div class="container" >
		<div class="row">
			<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>이용내역</h3>
			<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;' ><a href="#">+</a></h2>
		</div>
		<hr style="border:1px solid darkgray">
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
		<br><br><br>
	</div>
	<%@include file="/views/common/footerbar_customer.jsp" %>
</body>
</html>