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
<div class="container">
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<br>
<hr>
<br>
<div id="container2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
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