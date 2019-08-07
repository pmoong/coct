<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<!DOCTYPE HTML>
<%

	Map<String,ArrayList<Object>> result = (HashMap<String,ArrayList<Object>>) request.getAttribute("result");
	
	List<Object> list = new ArrayList<Object>();
	List<Object> list2 = new ArrayList<Object>();
	List<Object> list3 = new ArrayList<Object>();
	
	list = (List)result.get("as");
	list2 = (List)result.get("as2");
	list3 = (List)result.get("as3");
	
	System.out.println(list);
  
	//ArrayList<String> str = (ArrayList<String>) list.forEach();
	
	

 %>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
		
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Month',  '정산금액'],
          
          ['1월',   <%= list.get(0) %>],
          ['2월',   <%= list.get(1) %>],
          ['3월',  	  <%= list.get(2) %>],
          ['4월',  	<%= list.get(3) %>],
          ['5월',  	  <%=list.get(4) %>],
          ['6월',  	  <%= list.get(5) %>],
          ['7월',    <%= list.get(6) %>],
          ['8월',     <%= list.get(7) %>],
          ['9월',  	 <%= list.get(8) %>],
          ['10월',   <%= list.get(9) %>],
          ['11월',  	  <%= list.get(10) %>],
          ['12월',  	  <%= list.get(11) %>]
			
        ]);

        var options = {
          title: '월별 정산 금액',
          vAxis: {title: 'Accumulated Rating'},
          isStacked: true
        };

        var chart = new google.visualization.SteppedAreaChart(document.getElementById('chart_div'));

        chart.draw(data, options);
        
//-----------------월별 예약건수-------------------------------//
        var data = google.visualization.arrayToDataTable([
        	['Month',  '예약건수'],
            
            ['1월',  	<%= list2.get(0) %>	],
            ['2월',  	<%= list2.get(1) %>	],
            ['3월',  	<%= list2.get(2) %>	],
            ['4월',  	<%= list2.get(3) %>],
            ['5월',  	<%= list2.get(4) %>	],
            ['6월',  	<%= list2.get(5) %>	],
            ['7월',  	<%= list2.get(6) %>	],
            ['8월',   <%= list2.get(7) %>	],
            ['9월',  	<%= list2.get(8) %>],
            ['10월',  	<%= list2.get(9) %>],
            ['11월',  	<%= list2.get(10) %>],
            ['12월',  	<%= list2.get(11) %>]

        ]);

        var options = {
          title: '월별 예약 건수'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
        
//-------------------남녀성비------------------------//
        var data = google.visualization.arrayToDataTable([
          ['Gender', 'Member'],
          ['남자',   <%=list3.get(0)%> ],
          ['여자',   <%=list3.get(1)%> ]

        ]);

        var options = {
          title: '사이트 이용 남녀성비'
        };
        
        

        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

        chart.draw(data, options);
      }
    </script>	
      


      

    </script>
</head>
<body>
<%@ include file="/views/common/menubar_manager.jsp" %>
<hr style="border-color: yellowgreen">
		<!-- 여기는 회원관리 입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-12 col-12-medium"
					style='text-align: left; margin-top: 1%;'>통계</h3>
			</div>
		</div>
		<hr style="border-color: yellowgreen">
		<!-- Wrapper for slides -->
<div class="container col-8 col-12-medium">
 <table>
       <tr>
          <td> <div id="piechart" style="width: 700px; height: 400px;"></div></td>
           <td><div id="piechart2" style="width: 700px; height: 400px;"></div></td>
       </tr>
      </table>
      <table>
       <tr>
       <td><div id="chart_div" style="width: 50%px; height: 400px;"></div></td>
        </tr>
    </table>
	</div>
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

</body>
</html>