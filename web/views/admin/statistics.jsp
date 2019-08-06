<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<!DOCTYPE HTML>
<%
  ArrayList<HashMap<String, Object>> list =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static");
  ArrayList<HashMap<String, Object>> list2 =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static2");
  ArrayList<HashMap<String, Object>> list3 =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static3");
 %>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);



       function drawChart() {
	////////////////////////남녀성비///////////////////////////////////////////
	        var data = google.visualization.arrayToDataTable([
	          ['Gender', 'Member'],
	          ['남자',   <%=list3.get(0).get("member1")%> ],
	          ['여자',   <%=list3.get(0).get("member2")%> ],

	        ]);

	        var options = {
	          title: '사이트 이용 남녀성비'
	        };
	        
	        

	        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

	        chart.draw(data, options);
	
	        

	        ////////////////////////////월별 예약수//////////////////////////////
	        var data = google.visualization.arrayToDataTable([
			
	          ['월', '예약건수'],
	          ['1월',  <%=list.get(0).get("reser1") %>],
	          ['2월',  <%=list.get(0).get("reser2") %>],
	          ['3월',  <%=list.get(0).get("reser3") %>],
	          ['4월',  <%=list.get(0).get("reser4") %>],
	          ['5월',  <%=list.get(0).get("reser5") %>],
	          ['6월',  <%=list.get(0).get("reser6") %>],
	          ['7월',  <%=list.get(0).get("reser7") %>],
	          ['8월',  <%=list.get(0).get("reser8") %>],
	          ['9월',  <%=list.get(0).get("reser9") %>],
	          ['10월', <%=list.get(0).get("reser10") %>],
	          ['11월',  <%=list.get(0).get("reser11") %>],
	          ['12월',  <%=list.get(0).get("reser12") %>]

	        ]);

	        var options = {
	          title: '월별 예약 건 수',
	          curveType: 'function',
	          legend: { position: 'bottom' }
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

	        chart.draw(data, options);


	          //////////////////////월별///////////////////////
	          var data = google.visualization.arrayToDataTable([
	              ['월별', '정산금액',],
	              ['1월', <%= list2.get(0).get("pay1")%>],
	              ['2월', <%= list2.get(0).get("pay2")%>],
	              ['3월', <%= list2.get(0).get("pay3")%>],
	              ['4월', <%= list2.get(0).get("pay4")%>],
	              ['5월', <%= list2.get(0).get("pay5")%>],
	              ['6월', <%= list2.get(0).get("pay6")%>],
	              ['7월', <%= list2.get(0).get("pay7")%>],
	              ['8월', <%= list2.get(0).get("pay8")%>],
	              ['9월', <%= list2.get(0).get("pay9")%>],
	              ['10월', <%= list2.get(0).get("pay10")%>],
	              ['11월', <%= list2.get(0).get("pay11")%>],
	              ['12월', <%= list2.get(0).get("pay12")%>]
	            ]);

	            var options = {
	              title: '정산 금액',
	              hAxis: {title: '월별 정산금액',  titleTextStyle: {color: '#333'}},
	              vAxis: {minValue: 0}

	            };

	            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

	            chart.draw(data, options);


	          
	        

        }

    </script>
</head>
<body>
<%@ include file="/views/common/menubar_manager.jsp" %>
<div class="container col-8 col-12-medium">
 <table>
       <tr>
          <td> <div id="piechart" style="width: 700px; height: 400px;"></div></td>
       </tr>
       <tr>
       <td><div id="curve_chart" style="width:700px; height: 400px;"></div></td>
       </tr>
       <tr>
          <td><div id="chart_div" style="width: 700px; height: 400px;"></div></td>
       </tr>
    </table>
	</div>
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

</body>
</html>