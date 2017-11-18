<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
         var uluru = {lat: ${list.locationX}, lng: ${list.locationY}};
         var map = new google.maps.Map(document.getElementById('map'), {
           zoom: 17,
           center: uluru
         });
         var marker = new google.maps.Marker({
           position: uluru,
           map: map
         });
       }
     function sel(){
    		opener.setnValue('${list.name }');
    		opener.setpValue('${list.traffic}');
    		window.close();
    	}
    </script>
     <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDorxIC9Cx3oZKadTt2iw_bhEGCXPGszsk&callback=initMap">
    </script>
</head>
<body>
	
	<div id="map" style="width: 50%; float: left;"></div>
	<div style="width: 50%; float:right;">
	${list.name }<br>
	${list.traffic }
	</div>
	<input type="button" value="선택" onclick="sel()">
</body>
