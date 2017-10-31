<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<style>
#map {
 height: 400px;
 width: 100%;
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
<script>
	var slideIndex = 1;
	showDivs(slideIndex);
	
	function plusDivs(n) {
	  showDivs(slideIndex += n);
	}
	
	function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  if (n > x.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = x.length} ;
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";  
	  }
	  x[slideIndex-1].style.display = "block";  
	}
</script>
</head>
<body>
<header>
<div style="background-color: red; height: 300px;"></div>
</header>
<section>
	<article style="float: left;">
		<div style="background-color: yellow; width: 100px; height: 700px;"></div>
	</article>
	<article style="float: left;">
		<h3>홀 정보</h3>
		<div style="background-color: green; width: 500px; height: 300px; float: left;">
			<h2>한강호텔웨딩홀</h2>
			<p><a>★★★★☆ 4.3점</a><input type="button" value="별점보기"/> <input type="button" value="찜하기"/></p>
			<table>
				<tr>
					<th>주소</th>
					<td>서울 광진구 광장도 188-2</td>
				</tr>
				<tr>
					<th>도로명주소</th>
					<td>서울 광진구 아찬산로78길 147</td>
				</tr>
				<tr>
					<th>홀타입</th>
					<td>일반홀,호텔</td>
				</tr>
				<tr>
					<th>식사비용</th>
					<td>4.2만원</td>
				</tr>
				<tr>
					<th>메뉴종류</th>
					<td>한식</td>
				</tr>
				<tr>
					<th>보증인원</th>
					<td>최소250명~최대1000명</td>
				</tr>
			</table>
		</div>
		<div style="background-color: skyblue; width: 500px; height: 300px; float: left;">
			<img src="GB05.jpg" alt="홀대표사진" style=" width: 500px; height: 250px;"/>
			<p>
				<input type="button" value="견적내기"/>
				<input type="button" value="통계보기"/>
				<input type="button" value="상담신청"/>
			</p>
		</div>
		<div style="background-color: pink; width: 1000px; height: 100px; clear: both;">
			<h5>체크포인트</h5>
			<p style="width: 500px;">전 층 전면 통유리로 한강 전망을 바라보는 평화로움과 여유로운 예식이 공존하는 곳, 호텔 한정식의 품격있는 식사가 가능한 한강호텔웨딩홀!</p>
		</div>
		<div style="background-color: gray; width: 1000px; height: 500px; clear: both;">
		
			<p id="infoTab" style="height: 10px;"></p>
			
			<ul class="w3-navbar w3-black">
			  <li><a href="#infoTab">홀 설명</a></li>
			  <li><a href="#photoTab">홀 사진</a></li>
			  <li><a href="#reviewTab">홀 리뷰</a></li>
			  <li><a href="#loctionTab">홀 위치</a></li>
			</ul>

			<div id="info">
			  <p>홀 설명입니다.</p>
			</div>
			
			<p id="photoTab" style="height: 10px;"></p>
			
			<ul class="w3-navbar w3-black">
			  <li><a href="#infoTab">홀 설명</a></li>
			  <li><a href="#photoTab">홀 사진</a></li>
			  <li><a href="#reviewTab">홀 리뷰</a></li>
			  <li><a href="#loctionTab">홀 위치</a></li>
			</ul>
			
			<div id="photo">
			  
				<div class="w3-content" style="max-width:800px;position:relative">
				
				<img class="mySlides" src="GB01.jpg" style="width:100%">
				<img class="mySlides" src="GB02.jpg" style="width:100%;display: none;">
				<img class="mySlides" src="GB03.jpg" style="width:100%;display: none;">
				<img class="mySlides" src="GB04.jpg" style="width:100%;display: none;">
				<img class="mySlides" src="GB05.jpg" style="width:100%;display: none;">
				
				<a class="w3-btn-floating" style="position:absolute;top:45%;left:0;" onclick="plusDivs(-1)">❮</a>
				<a class="w3-btn-floating" style="position:absolute;top:45%;right:0;" onclick="plusDivs(1)">❯</a>
				
				</div>
			</div>
			
			<p id="reviewTab" style="height: 10px;"></p>
			
			<ul class="w3-navbar w3-black">
			  <li><a href="#infoTab">홀 설명</a></li>
			  <li><a href="#photoTab">홀 사진</a></li>
			  <li><a href="#reviewTab">홀 리뷰</a></li>
			  <li><a href="#loctionTab">홀 위치</a></li>
			</ul>
			
			<div id="review">
			  <p>홀 리뷰입니다.</p>
			</div>
			
			<p id="locationTab" style="height: 10px;"></p>
			
			<ul class="w3-navbar w3-black">
			  <li><a href="#infoTab">홀 설명</a></li>
			  <li><a href="#photoTab">홀 사진</a></li>
			  <li><a href="#reviewTab">홀 리뷰</a></li>
			  <li><a href="#loctionTab">홀 위치</a></li>
			</ul>
			
			<div id="location">
			  <div id="map"></div>
			</div>
		</div>
	</article>
	<article style="float: right;">
		<div style="background-color: yellow; width: 100px; height: 700px;"></div>
	</article>
</section>
<footer style="clear: both;">
<div style="background-color: blue; height: 300px;"></div>
</footer>
</body>
</html>