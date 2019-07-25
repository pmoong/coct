<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cw.coc.board.model.vo.*"%%>
<%
	Board b = (Board) request.getAttribute("b");
%>
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

#content {
	height: 230px;
}

.replyArea {
	width: 800px;
	color: white;
	background: black;
	margin: 0 auto;
}
</style>
</head>
<body>
	<%@ include file="/views/common/menubar_customer.jsp"%>

	<%
		if (loginUser != null) {
	%>
	<div class="outer container">
		<br>
		<h2 align="center"><%=b.getbTitle()%></h2>
		<div class="tableArea">
			<form action="<%=request.getContextPath()%>/insert.bo"
				method="post">
				<table>
					<tr>
						<td>분류</td>
						<td>
						<td><span><%=b.getbType()%></span></td>
					</tr>
					<tr>
						<td>제목</td>
						<td colspan="3"><span><%=b.getbTitle()%></span></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><span><%=b.getbWriter()%></span></td>
						<td>조회수</td>
						<td><span><%=b.getCount()%></span></td>
						<td>작성일</td>
						<td><span><%=b.getbDate()%></span></td>
					</tr>
					<tr>
						<td colspan="6">내용</td>
					</tr>
					<tr>
						<td colspan="6">
							<p id="content"><%=b.getbContent()%></p>
						</td>
					</tr>
				</table>
				<div align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo'">메뉴로 돌아가기</button>
			<% 
				if (loginUser != null && b.getuno() == loginUser.getUno()) {
			%>
				<button onclick="location.href='<%=request.getContextPath()%>/delete.bo">글 삭제하기</button>
			<%
				}
			%>
		</div>
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>
	<%
		} else {
			request.setAttribute("msg", "잘못된 경로로 접근하셨습니다.");
			request.getRequestDispatcher("../common/errorPage.jsp").forward(request, response);
		}
	%>



</body>
</html>