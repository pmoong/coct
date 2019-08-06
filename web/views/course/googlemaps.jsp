<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  #map {
    height: 400px;  /* The height is 400 pixels */
    width: 60%;  /* The width is the width of the web page */
   }
</style>
<script>
function initMap() {
  var uluru1 = {lat: 37.538587, lng: 126.987538};
  var uluru2 = {lat: 37.539577, lng: 126.991283};
  var uluru3 = {lat: 37.540972, lng: 126.989886};
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 15, center: uluru1});
  
  var marker1 = new google.maps.Marker({position: uluru1, map: map});
  var marker2 = new google.maps.Marker({position: uluru2, map: map});
  var marker3 = new google.maps.Marker({position: uluru3, map: map});
  zoomControl:false;
  scaleControl:true;
}
</script>
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc-FAooT4cR2nne8SYnHMKaE7OmJfgp6U&callback=initMap">
</script>
</head>
<body>
	    <h3>My Google Maps Demo</h3>
    <!--The div element for the map -->
    <div id="map"></div>

</body>
</html>