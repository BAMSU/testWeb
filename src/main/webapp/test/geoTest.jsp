<!DOCTYPE html>
<html>
  <head>
    <title>Geocoding service</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
      	width: 50%;
        height: 50%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
    </style>
     <script>
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: {lat: 37.566535, lng: 126.97796919999996}
        });
        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function() {
          geocodeAddress(geocoder, map);
        });
      }

      function geocodeAddress(geocoder, resultsMap) {
        var address = document.getElementById('address').value;
        geocoder.geocode({'address': address}, function(results, status) {
          if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
              map: resultsMap,
              zoom: 17,
              position: results[0].geometry.location
            });
            var cityCircle = new google.maps.Circle({
                strokeColor: '#FF0000',
                strokeOpacity: 0.7,
                strokeWeight: 1,
                fillColor: '#FF0000',
                fillOpacity: 0.35,
                map: resultsMap,
                center: results[0].geometry.location,
                radius: 100
              });
          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDorxIC9Cx3oZKadTt2iw_bhEGCXPGszsk&callback=initMap">
    </script>
  </head>
  <body>
  	<div id="floating-panel">
      <input id="address" type="text">
      <input id="submit" type="button" value="Search">
    </div>
    <div id="map"></div>
  </body>
</html>