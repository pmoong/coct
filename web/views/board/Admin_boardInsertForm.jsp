<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.outer {
	width: 900px;
	height: 700px;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	border: 1px solid lightgray; 
}

table {
	border: 1px solid lightgray;
}

.tableArea {
	width: 500px;
	height: 350px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="/views/common/menubar_manager.jsp"%>


	<% if(loginUser != null){ %>
		<div class="outer container">
			<br>
			<h2 align="center">공지사항 작성</h2>
			<div class="tableArea">
				<form action="<%= request.getContextPath() %>/insert.ad" method="post">
					<table>
						<tr>
							<td>분야</td>
							<td>
								<select name="bType">
								<%
									if (loginUser != null && loginUser.getuType().equals("A")) {
								%>
									<option value="NT">전체공지</option>
								<% } %>
								</select>
							</td>
						</tr>
						<tr>
							<td>제목</td>
							<td colspan="3"><input type="text" size="55" name="bTitle"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="3">
								<textarea rows="15" cols="60" style="resize:auto;" 
									name="bContent"></textarea>
							</td>
						</tr>
				</table>
				<div align="center">
						<button type="reset" >취소하기</button>
						<button type="submit">등록하기</button>
					</div>
					</form>
			</div>
		</div>
	<br><br><br>
	<br><br><br>
	<br>
	<br>
	<hr>
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>
	<% } else {
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다.");
		request.getRequestDispatcher("../common/errorPage.jsp").forward(request, response);
	} %>



</body>

</html>