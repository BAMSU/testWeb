<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<c:set var="h" value="${hallInfo}"/>
<style>
#map {
 height: 400px;
 width: 100%;
}
a {
	cursor: pointer;
}
</style>
<script>
  function initMap() {
	var lat = ${h.locationX};
	var lng = ${h.locationY};
    var uluru = {lat: lat, lng: lng};
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
	var slideIndex = 0;
	var s = 0;
	var e = 7;
	showDivs(slideIndex);
	
	function plusDivs(n){
	  showDivs(slideIndex += n);
	}
	
	function showDivs(n) {
	  var x = document.getElementsByClassName("mySlides");
	  if (n > e) {slideIndex = s;}   
	  if (n < s) {slideIndex = e;}
	  for (var i = s; i <= e; i++) {
		  x[i].style.display = "none";
	  }
	  x[slideIndex].style.display = "block";   
	}
</script>
<script>
	$(document).ready(function(){
		$('#grade').css('color','yellow');
		var gg = ${h.grade};
		var g = parseInt(gg);
		if(g==1){
			$('#grade').text('★☆☆☆☆');
		}else if(g==2){
			$('#grade').text('★★☆☆☆');
		}else if(g==3){
			$('#grade').text('★★★☆☆');
		}else if(g==4){
			$('#grade').text('★★★★☆');
		}else if(g==5){
			$('#grade').text('★★★★★');
		}else{
			$('#grade').text('☆☆☆☆☆');
		}
		$('.mySlides').css('width','100%');
		$('.mySlides').css('height','400px');
	});
	function setSlide(i){
		if(i==1){
			$('.w3-content:eq(0)').hide();
			$('.w3-content:eq(1)').show();
			$('.w3-content:eq(2)').hide();
			$('.w3-content:eq(3)').hide();
			$('.w3-content:eq(4)').hide();
			s=8;e=10;
		}else if(i==2){
			$('.w3-content:eq(0)').hide();
			$('.w3-content:eq(1)').hide();
			$('.w3-content:eq(2)').show();
			$('.w3-content:eq(3)').hide();
			$('.w3-content:eq(4)').hide();
			s=11;e=13;
		}else if(i==3){
			$('.w3-content:eq(0)').hide();
			$('.w3-content:eq(1)').hide();
			$('.w3-content:eq(2)').hide();
			$('.w3-content:eq(3)').show();
			$('.w3-content:eq(4)').hide();
			s=14;e=14;
		}else if(i==4){
			$('.w3-content:eq(0)').hide();
			$('.w3-content:eq(1)').hide();
			$('.w3-content:eq(2)').hide();
			$('.w3-content:eq(3)').hide();
			$('.w3-content:eq(4)').show();
			s=15;e=15;
		}else{
			$('.w3-content:eq(0)').show();
			$('.w3-content:eq(1)').hide();
			$('.w3-content:eq(2)').hide();
			$('.w3-content:eq(3)').hide();
			$('.w3-content:eq(4)').hide();
			s=0;e=7;
		}
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
			<h2>${h.name}</h2>
			<p><a id="grade">☆☆☆☆☆</a>${h.grade}점<input type="button" value="별점보기"/> <input type="button" value="찜하기"/></p>
			<table>
				<tr>
					<th>주소</th>
					<td>${h.si} ${h.gu} ${h.dong} ${h.addr}</td>
				</tr>
				<tr>
					<th>도로명주소</th>
					<td>${h.si} ${h.gu} ${h.roadAddr}</td>
				</tr>
				<tr>
					<th>홀타입</th>
					<td>${h.hallType}</td>
				</tr>
				<tr>
					<th>식사비용</th>
					<td>${h.mealCost}</td>
				</tr>
				<tr>
					<th>메뉴종류</th>
					<td>${h.menuType}</td>
				</tr>
				<tr>
					<th>보증인원</th>
					<td>${h.guest}</td>
				</tr>
			</table>
		</div>
		<div style="background-color: skyblue; width: 500px; height: 300px; float: left;">
			<img src="/finalproject/img/hall/${h.idx}/r1.jpg" alt="홀대표사진" style=" width: 500px; height: 250px;"/>
			<p>
				<input type="button" value="견적내기"/>
				<input type="button" value="통계보기"/>
				<input type="button" value="상담신청"/>
			</p>
		</div>
		<div style="background-color: pink; width: 1000px; height: 100px; clear: both;">
			<h5>체크포인트</h5>
			<p style="width: 500px;">${h.ckPoint}</p>
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
			  <div>
			  	<font color="red">아래 정보는 웨딩홀에서 제공한 정보를 기준으로 하며, 웨딩홀의 사정에 따라 메뉴, 가격 등이 변경될 수 있습니다.</font><br>
			  	교통: ${h.traffic}
			  </div>
			  <div>
			  	<table style="background-color: yellow;">
			  		<tr>
				  		<th>요일</th>
				  		<th>형태<th>
				  		<th>인원</th>
				  		<th>간격</th>
				  		<th>메뉴</th>
				  		<th>식대</th>
			  		</tr>
			  		<c:forEach var="r" items="${roomInfo}">
				  		<tr>
				  			<td colspan="6">${r.name}</td>
				  		</tr>
				  		<tr>
				  			<td>${r.weekDay}</td>
				  			<td>${r.type}</td>
				  			<td>${r.guest}</td>
				  			<td>${r.interval}분</td>
				  			<td>${r.menu}</td>
				  			<td>${r.menuPrice}</td>
				  		</tr>
			  		</c:forEach>
			  	</table>
			  </div>
			</div>
			
			<p id="photoTab" style="height: 10px;"></p>
			
			<ul class="w3-navbar w3-black">
			  <li><a href="#infoTab">홀 설명</a></li>
			  <li><a href="#photoTab">홀 사진</a></li>
			  <li><a href="#reviewTab">홀 리뷰</a></li>
			  <li><a href="#loctionTab">홀 위치</a></li>
			</ul>
			
			<div id="photo">
				<p>
				<a onclick="setSlide(0)">전체</a>
				<c:set var="sc" value="1"/>
			  	<c:forEach var="r" items="${roomInfo}">
			  		<a onclick="setSlide(${sc})">${r.name}</a>
			  		<c:set var="sc" value="2"/>
			  	</c:forEach>
			  	<a onclick="setSlide(3)">신부대기실</a>
			  	<a onclick="setSlide(4)">폐백실</a>
			  	</p>
				<div class="w3-content w3-display-container" style="width:1000px;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r1.jpg">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r2.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r3.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r4.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r5.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r6.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/w1.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/p1.jpg" style="display: none;">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:1000px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r1.jpg">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r2.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r3.jpg" style="display: none;">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:1000px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r4.jpg">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r5.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r6.jpg" style="display: none;">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:1000px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/w1.jpg">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:1000px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/p1.jpg">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
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