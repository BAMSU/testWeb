<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<head>
<title>Love is staying</title>
 <style>
       #map {
        height: 300px;
        width: 500px;
       }
       body{
       	margin: 20px 50px 50px 50px;
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

	<font style="size: 20px; ">${list.name}</font><br><br>
	<div id="map"></div>
	<br>
	오시는길
	<hr>
	${list.traffic }
	<div style="width: 100%; text-align: right;">
	<input type="button" value="선택"  class="btn btn-outline-success" onclick="sel()">
	<br><br>
	</div>
</body>
