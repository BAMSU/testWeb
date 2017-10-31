<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
       #map {
        height: 400px;
        width: 50%;
       }
    </style>
     <script>
      function initMap() {
        var uluru = {lat: 37.524321, lng: 127.052195};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDorxIC9Cx3oZKadTt2iw_bhEGCXPGszsk&callback=initMap">
    </script>
  </head>
  <body>
    <h3>호텔 프리마</h3>
    <div id="map"></div>
  </body>
</html>