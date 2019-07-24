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
	height: 500px;
	background: black;
	color: white;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

table {
	border: 1px solid white;
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
	<%@ include file="/views/common/menubar_customer.jsp"%>

	<% if(loginUser != null){ %>
		<div class="outer">
			<br>
			<h2 align="center">게시판 작성</h2>
			<div class="tableArea">
				<form action="<%= request.getContextPath() %>/insert.bo" method="post">
					<table>
						<tr>
							<td>분야</td>
							<td>
								<select name="category">
									
								<%
									if (loginUser != null && loginUser.getuType().substring(1).equals("A")) {
								%>
									<option value="10">전체공지</option>
								<%
									}
								%>
								<%
									if (loginUser != null && loginUser.getuType().substring(1).equals("P")) {
								%>
									<option value="20">제휴사공지</option>
								<%
									}
								%>
								<%
									if (loginUser != null && loginUser.getuType().substring(1).equals("M")) {
								%>
									<option value="30">리뷰 작성하기</option>
								<%
									}
								%>
								</select>
							</td>
						</tr>
						<tr>
							<td>제목</td>
							<td colspan="3"><input type="text" size="55" name="title"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="3">
								<textarea rows="15" cols="60" style="resize:none;" 
									name="content"></textarea>
							</td>
						</tr>
				</table>
				<div class="searchArea" align="center">
					<select id="searchCondition" name="searchCondition">
						<option value="wirter">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select> <input type="search">
					<button type="submit" style="background: darkgray">검색하기</button>
					
					
				</div>
			</div>
		</div>

	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>
	<% } else {
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다.");
		request.getRequestDispatcher("../common/errorPage.jsp").forward(request, response);
	} %>



</body>

</body>
</html>