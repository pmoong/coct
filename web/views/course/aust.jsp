<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Complex Polylines</title>
    <style>
      / * 항상 div의 크기를 정의하기 위해지도 높이를 명시 적으로 설정하십시오.
 		*지도가 포함 된 요소입니다. * /
      #map {
        height: 100%;
      }
     / * 선택 사항 : 샘플 페이지를 창에 채 웁니다. * /
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>

      // 이 예제는 다음을 기반으로 폴리선을 구성하는 대화식지도를 만듭니다.
      // 사용자가 클릭합니다. 폴리선은 path 속성을 한 번만 나타납니다.
      // 두 개의 LatLng 좌표를 포함합니다.

      var poly;
      var map;

      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: {lat: 37.576469, lng: 126.973368}
        });

        poly = new google.maps.Polyline({
          strokeColor: '#000000',
          strokeOpacity: 1.0,
          strokeWeight: 3
        });
        poly.setMap(map);

     // click 이벤트에 대한 리스너를 추가합니다.
        map.addListener('click', addLatLng);
      }

    //지도에서 클릭 이벤트를 처리하고 새 점을 폴리 라인에 추가합니다.
      function addLatLng(event) {
        var path = poly.getPath();

     // path는 MVCArray이므로 새 좌표를 간단히 추가 할 수 있습니다.
        // 그러면 자동으로 나타납니다.
        path.push(event.latLng);

     // 폴리 라인의 새로운 점에 새 마커를 추가합니다.
        var marker = new google.maps.Marker({
          position: event.latLng,
          title: '#' + path.getLength(),
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc-FAooT4cR2nne8SYnHMKaE7OmJfgp6U&callback=initMap">
    </script>
  </body>
</html>