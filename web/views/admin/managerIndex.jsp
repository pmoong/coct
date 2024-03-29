<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.*, com.cw.coc.board.model.vo.*, com.cw.coc.member.model.vo.*, com.cw.coc.reserve.model.vo.*, com.cw.coc.allpayment.model.vo.*"%>
<%

	Map<String,ArrayList<Object>> result = (HashMap<String,ArrayList<Object>>) request.getAttribute("result");
	
	
	List<Board> list = new ArrayList<Board>();
	List<Member> mlist = new ArrayList<Member>();
	List<Reserve> rlist = new ArrayList<Reserve>();
	List<Partner> plist = new ArrayList<Partner>();
	List<AllPayment> alist = new ArrayList<AllPayment>();
	List<Object> list2 = new ArrayList<Object>();
			
	list = (List)result.get("blist");
	mlist = (List)result.get("mlist");
	rlist = (List)result.get("rlist");
	plist = (List)result.get("plist");
	alist = (List)result.get("alist");
	list2 = (List)result.get("as");
	
	System.out.println("※");
	System.out.println(list2);

	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	System.out.print("여기까지 호출했는지?");
	
	
	
%>
<!DOCTYPE HTML>

<html>
<head>
<meta charset="UTF-8">
<title>CoC</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
		
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Month',  '정산금액'],
          
          ['1월',   <%= list2.get(0) %>],
          ['2월',   <%= list2.get(1) %>],
          ['3월',  	  <%= list2.get(2) %>],
          ['4월',  	<%= list2.get(3) %>],
          ['5월',  	  <%=list2.get(4) %>],
          ['6월',  	  <%= list2.get(5) %>],
          ['7월',    <%= list2.get(6) %>],
          ['8월',     <%= list2.get(7) %>],
          ['9월',  	 <%= list2.get(8) %>],
          ['10월',   <%= list2.get(9) %>],
          ['11월',  	  <%= list2.get(10) %>],
          ['12월',  	  <%= list2.get(11) %>]
			
        ]);

        var options = {
          title: '월별 정산 금액',
          vAxis: {title: 'Accumulated Rating'},
          isStacked: true
        };

        var chart = new google.visualization.SteppedAreaChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
        </script>


<!-- Additional files for the Highslide popup effect -->

<link rel="stylesheet" href="/coc/assets/css/main.css" />
<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

table {
	border: 1px solid lightgray !important;
	text-align: center;
}

.tableArea {
	width: 100%;
	height: 20% px;
	margin: 0 auto;
}

table th {
	text-align: center !important;
}
button {
	background:yellowgreen !important;
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
	
	 <%-- <% if(loginUser == null || !loginUser.getUserId().equals("admin")){ 
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다!");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request,response);
		
	} else { 
	%> --%>
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_manager.jsp"%>





		<hr style="border-color: yellowgreen">
		<!-- 여기는 통계 라인입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>통계</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: yellowgreen">
		<!-- Wrapper for slides -->
<div class="container">
	<table>
       <tr>
       <td><div id="chart_div" style="width: 100%; height: 400px;"></div></td>
        </tr>
    </table>
</div>
		


		<hr style="border-color: yellowgreen">
		<!-- 여기는 회원관리 라인입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>회원관리</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: yellowgreen">
		<!-- Wrapper for slides -->


		<div class="outer container">
		<br>
		<div class="tableArea">
			<table align="center" id="MlistArea">
				<tr>
					<th width="100px">회원번호</th>
					<th width="100px">아이디</th>
					<th width="300px">이메일</th>
					<th width="100px">구분</th>
					<th width="100px">성별</th>
				</tr>
				<% for(Member m : mlist){ 
				%>
				<tr>
					<input type="hidden" value="<%= m.getUno() %>">
					<td><%= m.getUno() %></td>
					<td><%= m.getUserId() %></td>
					<td><%= m.getEmail() %></td>
					<td><%= m.getuType() %></td>
					<td><%= m.getGender() %></td>
				</tr>
				<% } %>
			</table>
		</div>
		<br><br><br><br><br>
		
		
	
		
	</div>
	
		<!-- 정산내역  -->
		<hr style="border-color: yellowgreen">
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>정산내역</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: yellowgreen">

		<!-- Wrapper for slides -->

		<div class="outer container">
		<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">업체번호</th>
					<th width="100px">상호명</th>
					<th width="300px">결제금액</th>
					<th width="100px">결제일</th>
				</tr>
				
				
				<% for(AllPayment a : alist){ 
					
				%>
				<tr>
					<td><%= a.getcCode() %></td>
					<td><%= a.getpName() %></td>
					<td><%= a.getPrice() %></td>
					<td><%= a.getpDate() %></td>
				</tr>
				<% } %>
			</table>
		</div>
		<br><br><br><br><br>
	</div>


		<!-- Features1 -->
		<hr style="border-color: yellowgreen">
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>제휴사관리</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: yellowgreen">

		<!-- Wrapper for slides -->

		<div class="outer container">
		<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">회원번호</th>
					<th width="100px">상호명</th>
					<th width="300px">전화번호</th>
					<th width="100px">업체담당자명</th>
					<th width="100px">구분</th>
				</tr>
				<% for(Partner p : plist){ 
				%>
				<tr>
					<input type="hidden" value="<%= p.getUno() %>">
					<td><%= p.getUno() %></td>
					<td><%= p.getComName() %></td>
					<td><%= p.getPhone() %></td>
					<td><%= p.getPicName() %></td>
					<td><%= p.getBusType() %></td>
				</tr>
				<% } %>
			</table>
		</div>
		<br><br><br><br><br>
		
		
	
		
	</div>

		<!-- 게시판관리 -->
		<hr style="border-color: yellowgreen">
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>게시판관리</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: yellowgreen">

		<!-- Wrapper for slides -->
		<div class="outer container">
		<br>
		<div class="tableArea">
			<table align="center" id="BlistArea">
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
	


	
	
	<!-- Features1 -->
		<hr style="border-color: yellowgreen">
		<div class="container">
			<div class="row">
				<h3 class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>예약관리</h3>
				<h2 class="col-4 col-12-medium"
					style='text-align: right; margin-top: 1%;'>
					<a href="#">+</a>
				</h2>
			</div>
		</div>
		<hr style="border-color: yellowgreen">

		<!-- Wrapper for slides -->
		<div class="outer container">
		<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">예약번호</th>
					<th width="100px">예약회원</th>
					<th width="300px">방번호</th>
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
					<td><%= r.getRsvDate() %></td>
					<td><%= r.getCiDate() %></td>
				</tr>
				<% } %>
			</table>
		</div>
<br><br><br><br><br>


		<hr style="border-color: yellowgreen; border-solid: 5px">
		<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp"%>


	</div>

	<!-- Scripts -->
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
	
		$(function(){
			$("#BlistArea td").mouseenter(function(){
				
				$(this).parent().css({"background":"yellowgreen", "cursor":"pointer"});
				
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
				
			}).click(function(){
				
				var num = $(this).parent().children("input").val();
				
				location.href="<%=request.getContextPath()%>/selectOne.ad?num=" + num;
			});
		});
		
		$(function(){
			$("#MlistArea td").mouseenter(function(){
				
				$(this).parent().css({"background":"yellowgreen", "cursor":"pointer"});
				
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var muno = $(this).parent().children("input").val();
				
				console.log(muno);
				location.href="<%=request.getContextPath()%>/selectOneRe.ad?muno=" + muno;
				
			});
		});
	
		  </script>
</body>
</html>