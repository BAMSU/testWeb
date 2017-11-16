<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>검색이다</title>
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
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<form>
	<h2>예식장 정보검색</h2>
	
	예식장 이름 : <input type="text" id="hallname"> <input type="button" onclick="initMap()">
	<br>
	<div id="map"></div>
</form>
</body>
