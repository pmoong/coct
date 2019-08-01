<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>CoC</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/coc/assets/css/main.css" />
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['시간', '이용자'],
          [ 1,      11],
          [ 2,      7],
          [ 3,      6],
          [ 4,      7],
          [ 5,      10],
          [ 6,      9],
          [ 7,      13],
          [ 8,      10],
          [ 9,      7],
          [ 10,      14],
          [ 11,      23],
          [ 12,     20],
          [ 13,      21],
          [ 14,      18],
          [ 15,      19],
          [ 16,     18],
          [ 17,      16],
          [ 18,      14],
          [ 19,      15],
          [ 20,     24],
          [ 21,      22],
          [ 22,      21],
          [ 23,      18],
          [ 24,    15]
        ]);

        var options = {
          title: '시간대별 이용자 추이',
          hAxis: {title: '시간', minValue: 0, maxValue: 24},
          vAxis: {title: '이용자수', minValue: 0, maxValue: 30},
          legend: 'none'
        };

        var chart = new google.visualization.ScatterChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
<script type='text/javascript' src='http://www.google.com/jsapi'></script>
<script type='text/javascript'>google.load('visualization', '1', {'packages': ['geochart']});
google.setOnLoadCallback(drawVisualization);

function drawVisualization() {
	var data = new google.visualization.DataTable();

	data.addColumn('string', 'Country');
	data.addColumn('number', 'Value'); 
	data.addColumn({type:'string', role:'tooltip'});var ivalue = new Array();
	
	data.addRows([[{v:'KR-11', f:'서울특별시'},0,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-26', f:'부산광역시'},1,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-27',f:'대구광역시'},2,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-30',f:'대전광역시'},3,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-29',f:'광주광역시'},4,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-28',f:'인천광역시'},5,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-31',f:'울산광역시'},6,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-43',f:'충청북도'},7,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-44',f:'충청남도'},8,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-42',f:'강원도'},9,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-41',f:'경기도'},10,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-47',f:'경상북도'},11,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-48',f:'경상남도'},12,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-49',f:'제주도'},13,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-45',f:'전라북도'},14,'이용자 접속 분포도']]);
	
	data.addRows([[{v:'KR-46',f:'전라남도'},15,'이용자 접속 분포도']]);

	var options = {
		colorAxis:  {minValue: 0, maxValue: 21,  colors: ['#3182BD','#3182BD','#3182BD','#3182BD','#3182BD','#3182BD','#3182BD','#3182BD','#3182BD','#9ECAE1','#9ECAE1','#9ECAE1','#9ECAE1','#9ECAE1','#9ECAE1','#9ECAE1','#9ECAE1','#DEEBF7','#DEEBF7','#DEEBF7','#DEEBF7','#DEEBF7',]},
		legend: 'none',	
		backgroundColor: {fill:'#FFFFFF',stroke:'#FFFFFF' ,strokeWidth:0 },	
		datalessRegionColor: '#f5f5f5',
		displayMode: 'regions', 
		enableRegionInteractivity: 'true', 
		resolution: 'provinces',
		sizeAxis: {minValue: 1, maxValue:1,minSize:10,  maxSize: 10},
		region:'KR', //country code
		keepAspectRatio: true,
		width:600,
		height:400,
		tooltip: {textStyle: {color: '#444444'}, trigger:'focus'}	
	};
	
	var chart2 = new google.visualization.GeoChart(document.getElementById('visualization')); 
	google.visualization.events.addListener(chart2, 'select', function() {
	 	var selection = chart2.getSelection();
	 	if (selection.length == 1) {
	 		var selectedRow = selection[0].row;
	 		var selectedRegion = data.getValue(selectedRow, 0);
	 		if(ivalue[selectedRegion] != '') {
	 			document.getElementsByTagName('body')[0].style.background=ivalue[selectedRegion]; 
	 		}
	 	}
	});
	chart2.draw(data, options);
}
 </script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<!-- Additional files for the Highslide popup effect -->
<script src="https://www.highcharts.com/media/com_demo/js/highslide-full.min.js"></script>
<script src="https://www.highcharts.com/media/com_demo/js/highslide.config.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="https://www.highcharts.com/media/com_demo/css/highslide.css" />


<style>
body {
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}
#graphs {
   border: 1px dashed black;
   width: 43%;
   height: 600px;
}

#staticBtns {
   margin-top: 10%;
   margin-left: 3%;
}

.btns {
   margin-top: 2%;
   background: white;
   border: none;
   color:black;
   margin-bottom: 5%;
   font-size : 1.15em;
   font-weight: bold;
}

.menuBtn {
   margin-left: 5%;
}

.statics {
   display: inline-block;
   height: 600px;
}

table th, table td {
   border: 1px solid black;
   text-align: center;
}

table th {
   background: black;
   color:white;
   border:1px solid white;
}

.red {
   color : red;
}
.blue {
   color : blue;
}
.data {
   width: 180px;
}
.tHeader {
   width: 100px;
   height: 50px;
}
#outer{
   margin-top: 8%;
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