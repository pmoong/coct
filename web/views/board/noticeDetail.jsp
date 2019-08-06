<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cw.coc.board.model.vo.*"%>
<%
	Board b = (Board) request.getAttribute("b");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer {
	width: 600px;
	height: 600px;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	border: 1px solid black;
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
.tableArea {
		border:1px solid white;
		width:800px;
		height:350px;
		margin:0 auto;
	}
td {
		border:1px solid black;
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
		<h2 align="center">공지사항 상세 보기</h2>
		<div class="tableArea">
				<table align="center" width="800px">
					<tr>
						<td>분류</td>
						<td><span><%= b.getbType()%></span></td>
						<td>제목</td>
						<td colspan="3"><span><%= b.getbTitle()%></span></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><span><%= b.getbWriter()%></span></td>
						<td>조회수</td>
						<td><span><%= b.getCount()%></span></td>
						<td>작성일</td>
						<td><span><%= b.getbDate()%></span></td>
					</tr>
					<tr>
						<td colspan="6">내용</td>
					</tr>
					<tr>
						<td colspan="6">
							<p id="content"><%= b.getbContent()%></p>
						</td>
					</tr>
				</table>
				</div>
				<div align="center">
					<button 
						class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/selectNoticeList.no'">메뉴</button>
					 <%
						if (loginUser != null && b.getbWriter().equals(loginUser.getUserId())) {
					%> 
					<button
						onclick="location.href='<%=request.getContextPath()%>/selectBoard.bo?num=<%= b.getbCode()%>'">수정하기</button>
				
					 <%
						}
					%>
				</div>
		</div>
	<br><br><br><br><br><br><br><br>
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