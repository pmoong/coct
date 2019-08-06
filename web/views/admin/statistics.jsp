<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>%>
<!DOCTYPE HTML>
<%
  ArrayList<HashMap<String, Object>> list =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static");
  ArrayList<HashMap<String, Object>> list2 =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static2");
  ArrayList<HashMap<String, Object>> list3 =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static3");
/*   ArrayList<HashMap<String, Object>> list4 =
  (ArrayList<HashMap<String, Object>>) request.getAttribute("static4");
  ArrayList<HashMap<String,Object>> list5 =
  (ArrayList<HashMap<String,Object>>) request.getAttribute("static5");
  ArrayList<HashMap<String,Object>> list6 =
  (ArrayList<HashMap<String,Object>>) request.getAttribute("static6");
  ArrayList<HashMap<String,Object>> list7 =
  (ArrayList<HashMap<String,Object>>) request.getAttribute("static7"); */

  %>
<html>
  <head>
  <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);



      <%System.out.print( list.get(0).get("reason1"));%>



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

          ['월', '회원수'],
          ['1월',  <%=list5.get(0).get("enroll1") %>],
          ['2월',  <%=list5.get(0).get("enroll2") %>],
          ['3월',  <%=list5.get(0).get("enroll3") %>],
          ['4월',  <%=list5.get(0).get("enroll4") %>],
          ['5월',  <%=list5.get(0).get("enroll5") %>],
          ['6월',  <%=list5.get(0).get("enroll6") %>],
          ['7월',  <%=list5.get(0).get("enroll7") %>],
          ['8월',  <%=list5.get(0).get("enroll8") %>],
          ['9월',  <%=list5.get(0).get("enroll9") %>],
          ['10월', <%=list5.get(0).get("enroll10") %>],
          ['11월',  <%=list5.get(0).get("enroll11") %>],
          ['12월',  <%=list5.get(0).get("enroll12") %>]

        ]);

        var options = {
          title: '월별 가입한 회원 수',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);


          //////////////////////월별///////////////////////
          var data = google.visualization.arrayToDataTable([
              ['월별', '정산금액',],
              ['1월', <%= list7.get(0).get("sup1")%>],
              ['2월', <%= list7.get(0).get("sup2")%>],
              ['3월', <%= list7.get(0).get("sup3")%>],
              ['4월', <%= list7.get(0).get("sup4")%>],
              ['5월', <%= list7.get(0).get("sup5")%>],
              ['6월', <%= list7.get(0).get("sup6")%>],
              ['7월', <%= list7.get(0).get("sup7")%>],
              ['8월', <%= list7.get(0).get("sup8")%>],
              ['9월', <%= list7.get(0).get("sup9")%>],
              ['10월', <%= list7.get(0).get("sup10")%>],
              ['11월', <%= list7.get(0).get("sup11")%>],
              ['12월', <%= list7.get(0).get("sup12")%>]
            ]);

            var options = {
              title: '기부 금액',
              chartArea: {width: '50%'},

            };

            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

            chart.draw(data, options);


          
        }

    </script>
  </head>
  <body>
    <table>
       <tr>
          <td>   <div id="piechart" style="width: 700px; height: 400px;"></div></td>
          <td><div id="curve_chart" style="width:700px; height: 400px;"></div></td>
       </tr>
       <tr>
          <td><div id="chart_div" style="width: 700px; height: 400px;"></div></td>
          <td><div id="piechart2" style="width: 700px; height: 400px;"></div></td>
       </tr>
       <tr>
          <td><div id="piechart3" style="width: 700px; height: 400px;"></div></td>
          <td><div id="curve_chart2" style="width: 700px; height: 400px;"></div></td>
       </tr>
       <tr>
          <td><div id="chart_div2" style="width: 700px; height: 400px;"></td>
          <td><div id="piechart4" style="width: 700px; height: 400px;"></td>
       </tr>
    </table>
<body class="is-preload homepage">
	<div id="page-wrapper">

		
<%@ include file="/views/common/menubar_manager.jsp" %>
<div class="container col-8 col-12-medium">
 <div class="col-6 col-6-medium" id="chart_div"  style="width: 900px; height: 500px; float: left; width: 50%;">
 </div>
 <p><b>접속지역 추이</b></p>
  <div class="col-6 col-6-medium"  id='visualization' style=" float: left; width: 30%;"></div>
 </div>
<div class="container col-8 col-12-medium">
<div id="container" class="col-3 col-12-medium" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
<br>
<hr>
<br>
<div id="container2" class="col-3 col-12-medium" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
	</div>
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>
		

	</div>
	<script>
   Highcharts.chart('container', {

       chart: {
           scrollablePlotArea: {
               minWidth: 700
           }
       },

       data: {
           csvURL: 'https://cdn.jsdelivr.net/gh/highcharts/highcharts@v7.0.0/samples/data/analytics.csv',
           beforeParse: function (csv) {
               return csv.replace(/\n\n/g, '\n');
           }
       },

       title: {
           text: '주별 사용자 추이'
       },
       
       xAxis: {
           tickInterval: 7 * 24 * 3600 * 1000, // one week
           tickWidth: 0,
           gridLineWidth: 1,
           labels: {
               align: 'left',
               x: 3,
               y: -3
           }
       },

       yAxis: [{ // left y axis
           title: {
               text: null
           },
           labels: {
               align: 'left',
               x: 3,
               y: 16,
               format: '{value:.,0f}'
           },
           showFirstLabel: false
       }, { // right y axis
           linkedTo: 0,
           gridLineWidth: 0,
           opposite: true,
           title: {
               text: null
           },
           labels: {
               align: 'right',
               x: -3,
               y: 16,
               format: '{value:.,0f}'
           },
           showFirstLabel: false
       }],

       legend: {
           align: 'left',
           verticalAlign: 'top',
           borderWidth: 0
       },

       tooltip: {
           shared: true,
           crosshairs: true
       },

       plotOptions: {
           series: {
               cursor: 'pointer',
               point: {
                   events: {
                       click: function (e) {
                           hs.htmlExpand(null, {
                               pageOrigin: {
                                   x: e.pageX || e.clientX,
                                   y: e.pageY || e.clientY
                               },
                               headingText: this.series.name,
                               maincontentText: Highcharts.dateFormat('%A, %b %e, %Y', this.x) + ':<br/> ' +
                                   this.y + ' sessions',
                               width: 200
                           });
                       }
                   }
               },
               marker: {
                   lineWidth: 1
               }
           }
       },

       series: [{
           name: 'All sessions',
           lineWidth: 4,
           marker: {
               radius: 4
           }
       }, {
           name: 'New users'
       }]
   });
      
   
   Highcharts.chart('container2', {

       chart: {
           scrollablePlotArea: {
               minWidth: 700
           }
       },

       data: {
           csvURL: 'https://cdn.jsdelivr.net/gh/highcharts/highcharts@v7.0.0/samples/data/analytics.csv',
           beforeParse: function (csv) {
               return csv.replace(/\n\n/g, '\n');
           }
       },

       title: {
           text: '주별 매출 추이'
       },

       xAxis: {
           tickInterval: 7 * 24 * 3600 * 1000, // one week
           tickWidth: 0,
           gridLineWidth: 1,
           labels: {
               align: 'left',
               x: 3,
               y: -3
           }
       },

       yAxis: [{ // left y axis
           title: {
               text: null
           },
           labels: {
               align: 'left',
               x: 3,
               y: 16,
               format: '{value:.,0f}'
           },
           showFirstLabel: false
       }, { // right y axis
           linkedTo: 0,
           gridLineWidth: 0,
           opposite: true,
           title: {
               text: null
           },
           labels: {
               align: 'right',
               x: -3,
               y: 16,
               format: '{value:.,0f}'
           },
           showFirstLabel: false
       }],

       legend: {
           align: 'left',
           verticalAlign: 'top',
           borderWidth: 0
       },

       tooltip: {
           shared: true,
           crosshairs: true
       },

       plotOptions: {
           series: {
               cursor: 'pointer',
               point: {
                   events: {
                       click: function (e) {
                           hs.htmlExpand(null, {
                               pageOrigin: {
                                   x: e.pageX || e.clientX,
                                   y: e.pageY || e.clientY
                               },
                               headingText: this.series.name,
                               maincontentText: Highcharts.dateFormat('%A, %b %e, %Y', this.x) + ':<br/> ' +
                                   this.y + ' sessions',
                               width: 200
                           });
                       }
                   }
               },
               marker: {
                   lineWidth: 1
               }
           }
       },

       series: [{
           name: 'All sessions',
           lineWidth: 4,
           marker: {
               radius: 4
           }
       }, {
           name: 'New users'
       }]
   });
   
   
      
   </script>



</body>
</html>