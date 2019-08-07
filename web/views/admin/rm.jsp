<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.board.model.vo.*, com.cw.coc.member.model.vo.*, com.cw.coc.reserve.model.vo.*, com.cw.coc.allpayment.model.vo.*" %>
<%

	Map<String,ArrayList<Object>> result = (HashMap<String,ArrayList<Object>>) request.getAttribute("result");
	
	
	List<Reserve> rlist = new ArrayList<Reserve>();
			
	rlist = (List)result.get("rlist");
	

	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	System.out.print("여기까지 호출했는지?");
	
%>
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

.outer {
	width: 1500px;
	height: 700px;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

table {
	border: 1px solid green !important;
	text-align: center;
}

.tableArea {
	width: 800px;
	height: 450px;
	margin: 0 auto;
}

.searchArea {
	width: 650px;
	margin: 0 auto;
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
		<%@ include file="/views/common/menubar_manager.jsp"%>






		<hr style="border-color: yellowgreen">
		<!-- 여기는 예약관리 입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-12 col-12-medium"
					style='text-align: left; margin-top: 1%;'>예약관리</h3>
			</div>
		</div>
		<hr style="border-color: yellowgreen">
		<!-- Wrapper for slides -->


		<div class="outer">
			<br>
			<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">예약번호</th>
					<th width="100px">예약회원</th>
					<th width="100px">방번호</th>
					
					<th width="300px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업체명</th>
					<th width="100px">예약날짜</th>
					<th width="100px">예약상품날짜</th>
				</tr>
				<% for(Reserve r : rlist){ 
				%>
				<tr>
					<input type="hidden" value="<%= r.getUno() %>">
					<td><%= r.getRsvCode() %></td>
					<td><%= r.getUno() %></td>
					<td><%= r.getRmCode() %></td>
					<td><%= r.getpName() %></td>
					<td><%= r.getRsvDate() %></td>
					<td><%= r.getCiDate() %></td>
				</tr>
				<% } %>
			</table>
			<br><br>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=1'"><<</button>
			
			<% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage - 5%>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
				if(currentPage == p){
			%>
					<button disabled><%= p %></button>
			<% } else { %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectMemberList.ad?currentPage=<%=p%>'"><%= p %></button>
			<% 
				}
			}
			%>
			
			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage + 5 %>'">></button>
			<% } %>

			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=maxPage%>'">>></button>
		</div>
		<br><br><br>
				<div class="searchArea" align="center">
					<select id="searchCondition" name="searchCondition">
						<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select> <input type="search">
					<button type="submit" style="background: yellowgreen;">검색하기</button>
				</div>
			</div>
		</div>
	</div>





	<hr style="border-color: yellowgreen; border-solid: 5px">
	<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>


	</div>
<script>

$(function(){
	$("#listArea td").mouseenter(function(){
		
		$(this).parent().css({"background":"yellowgreen", "cursor":"pointer"});
		
	}).mouseout(function(){
		$(this).parent().css({"background":"white"});
		
	}).click(function(){
		
		var num = $(this).parent().children("input").val();
		
		location.href="<%=request.getContextPath()%>/selectOne.ad?num=" + num;
	});
});

</script>


</body>
</html>