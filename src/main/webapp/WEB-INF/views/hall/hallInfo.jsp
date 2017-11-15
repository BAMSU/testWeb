<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀 상세정보</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
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

#scrap{
	color: pink;
	font-size: 20px;
}

table th{
	padding: 3px;
	color: gray;
}

table td{
	padding: 3px;
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
	var srp = ${srp};
	$(document).ready(function(){
		cgSrp();
		$('#grade').css('color','red');
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
		
		$('.isa:eq(0)').css('color','blue');
		
		$('.mySlides').css('width','100%');
		$('.mySlides').css('height','400px');
	});
	
	function setSlide(i){
		$('.isa').css('color','black');
		$('.isa:eq('+i+')').css('color','blue');
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
	
	function cgSrp(){
		if(srp=='true' || srp){
			$('#scrap').text('♥').css('font-size','20px');
		}else{
			$('#scrap').hover(function(){
				$(this).text('♥').css('font-size','25px');
			}).mouseout(function(){
				$(this).text('♡').css('font-size','20px');
			}).click(function(){
				var iii=${h.idx};
				var sname='${sname}';
				$.get('scrap.we',{idx:iii,name:sname},function(data){
					if(data=='true' || data){
						location.reload();
					}
				});
			});
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
		<div style="background-color: yellow; width: 200px; height: 500px;"></div>
	</article>
	<article style="float: left;">
		<h4 style="padding: 10px;">홀 정보</h4>
		<div style="border-top: 3px solid black;">
		<div style="width: 500px; height: 400px; float: left; margin: 30px 30px; margin-bottom: 0px;">
			<h2>${h.name}</h2>
			<p style="border-bottom: 1px solid gray; border-top: 1px solid gray; margin: 20px 0px;"><a id="grade">☆☆☆☆☆</a><font color="red">${h.grade}점</font> <a id="scrap">♡</a></p>
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
			<hr style="color: gray;">
			<h5 style="color: gray;"><font color="red">※</font>체크포인트</h5>
			<p style="font-size: 13px;">${h.ckPoint}</p>
		</div>
		<div style="width: 400px; height: 350px; float: left; margin: 30px 30px;">
			<img src="/finalproject/img/hall/${h.idx}/r1.jpg" alt="홀대표사진" style=" width: 400px; height: 270px;"/>
			<p style="text-align: center; margin-top: 10px; border: 3px solid gray; border-radius: 3px; padding: 5px; background-color: #EAEAEA;">
				<button type="button" class="btn btn-secondary">견적내기</button>
				<button type="button" class="btn btn-secondary" style="margin: 0px 35px;" onclick="location.href='hallStats.we?idx=${h.idx}&name=${h.name}'">통계보기</button>
				<button type="button" class="btn btn-primary">상담신청</button>
			</p>
		</div>
		<div style="width: 1000px; height: 500px; clear: both; margin: 0px 30px;">
		
			<p id="infoTab" style="height: 10px;"></p>
					
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#infoTab">홀 설명</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#photoTab">홀 사진</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#reviewTab">홀 리뷰</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#loctionTab">홀 위치</a>
			  </li>
			</ul>
			
			<div id="info" style="border: 1px solid #EAEAEA; border-top: 0px; padding: 20px;">
			  <div>
			    <br>
			  	<font color="red">아래 정보는 웨딩홀에서 제공한 정보를 기준으로 하며, 웨딩홀의 사정에 따라 메뉴, 가격 등이 변경될 수 있습니다.</font><br>
			  	<font>교통: ${h.traffic}</font>
			  </div>
			  <br>
			  <div>
			  	<table class="table table-striped table-hover table-bordered">
			  		<thead>
				  		<tr class="thead-dark">
					  		<th>요일</th>
					  		<th>형태</th>
					  		<th>인원</th>
					  		<th>간격</th>
					  		<th>메뉴</th>
					  		<th>식대</th>
				  		</tr>
			  		</thead>
			  		<tbody>
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
			  		</tbody>
			  	</table>
			  </div>
			</div>
			
			<p id="photoTab" style="height: 10px;"></p>
			
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#infoTab">홀 설명</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#photoTab">홀 사진</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#reviewTab">홀 리뷰</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#loctionTab">홀 위치</a>
			  </li>
			</ul>
			
			<div id="photo" style="border: 1px solid #EAEAEA; border-top: 0px; padding: 20px;">
				<div style="background: #EAEAEA; margin: 0px auto; width: 950px;">
				<div style="margin-left: 50px; padding-top: 20px;">
				<h5 style="color: #4C4C4C;">Gallery Category</h5>
				<a class="isa" onclick="setSlide(0)">전체</a> |
				<c:set var="sc" value="1"/>
			  	<c:forEach var="r" items="${roomInfo}">
			  		<a class="isa" onclick="setSlide(${sc})">${r.name}</a> |
			  		<c:set var="sc" value="2"/>
			  	</c:forEach>
			  	<a class="isa" onclick="setSlide(3)">신부대기실</a> |
			  	<a class="isa" onclick="setSlide(4)">폐백실</a>
			  	</div>
			  	<br>
				<div class="w3-content w3-display-container" style="width:850px;">
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
				<div class="w3-content w3-display-container" style="width:850px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r1.jpg">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r2.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r3.jpg" style="display: none;">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:850px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r4.jpg">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r5.jpg" style="display: none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/r6.jpg" style="display: none;">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:850px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/w1.jpg">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<div class="w3-content w3-display-container" style="width:850px;display:none;">
					<img class="mySlides" src="/finalproject/img/hall/${h.idx}/p1.jpg">
					
					<a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">❮</a>
					<a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">❯</a>
				</div>
				<br>
				</div>
			</div>
			
			<p id="reviewTab" style="height: 10px;"></p>
			
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#infoTab">홀 설명</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#photoTab">홀 사진</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#reviewTab">홀 리뷰</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#loctionTab">홀 위치</a>
			  </li>
			</ul>
			
			<div id="review" style="border: 1px solid #EAEAEA; border-top: 0px; padding: 20px;">
			  <table class="table table-striped table-hover table-bordered">
			  	<thead class="thead-dark">
			  		<tr>
			  			<th></th>
			  			<th></th>
			  			<th></th>
			  			<th></th>
			  		</tr>
			  	</thead>
			  	<tfoot>
			  		<tr>
			  			<td colspan="4"></td>
			  		</tr>
			  	</tfoot>
			  	<tbody>
			  		<tr>
			  			<td></td>
			  			<td></td>
			  			<td></td>
			  			<td></td>
			  		</tr>
			  	</tbody>
			  </table>
			</div>
			
			<p id="locationTab" style="height: 10px;"></p>
			
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#infoTab">홀 설명</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#photoTab">홀 사진</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#reviewTab">홀 리뷰</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#loctionTab">홀 위치</a>
			  </li>
			</ul>
			
			<div id="location" style="border: 1px solid #EAEAEA; border-top: 0px; padding: 10px;">
			  <div id="map"></div>
			</div>
			
			<p style="height: 50px;"></p>
		</div>
		</div>
	</article>
	<article style="float: right;">
		<div style="background-color: yellow; width: 100px; height: 500px;"></div>
	</article>
</section>
<footer style="clear: both;">
</footer>
</body>
</html>