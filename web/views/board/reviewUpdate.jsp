<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.*, com.cw.coc.board.model.vo.*"%>
<%
	Board b = (Board) request.getAttribute("b");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.outer {
	width: 900px;
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
	<div class="outer">
			<br>
			<h2 align="center">리뷰수정</h2>
			<div class="tableArea">
				<form id="updateForm" method="post">
					<table>
						<tr>
							<td>제목</td>
							<td colspan="3">
								<input type="text" size="50" name="title" value="<%=b.getbTitle()%>">
								<input type="hidden" name="bcode" value="<%= b.getbCode() %>">
							</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>
								<input type="text" value="<%=b.getbWriter() %>"
									name="writer" readonly>
							</td>
							<td>작성일</td>
							<td>
								<input type="date" name="date" value="<%=b.getbDate()%>" readonly>
							</td>
						</tr>
						<tr>
							<td>내용</td>
						</tr>
						<tr>
							<td colspan="4">
								<textarea name="content" cols="60" 
									rows="15" style="resize:none;"><%=b.getbContent()%></textarea>
							</td>
						</tr>
					</table>
					<br>
					<div align="center">
						<button class="btn btn-default" onclick="complete();">작성완료</button>
						<button class="btn btn-default" onclick="deleteBoard();">삭제하기</button>
					</div>
				</form>
				<script>
					function complete(){
						$("#updateForm").attr("action", "<%=request.getContextPath()%>/updateReview.rv?num=<%= b.getbCode()%>");
					}
					
					function deleteBoard(){
						$("#updateForm").attr("action", "<%=request.getContextPath()%>/deleteBoard.bo");
					}
				</script>
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