<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#search {
	text-align: center;
	display: inline-block;
	width: 1000px;
	margin: 0 auto;
	
}
#sear{
	margin: 15px 0 15px 10px;
	width:500px;
	border-right: 1px solid #EBEBEB;
}
.wedding1{
	text-align: center;
	width: 100%;
}
a:link{
	text-decoration: none;
	margin: 0 auto;
	padding: 0;
	border:0;
}

.halsear{
	border: 3px dashed #FFEBFE;
}
.title{
	border: 2px dotted #FFD9EC;
	border-bottom: 2px dotted #FFD9EC;
	margin: 0 atuo;
	text-align: center;
	background: #F8ECE0;
}
.hallview{
	padding-left: 15px;
	padding-right: 10px;
	width: 100%;
}
#seh{
	margin: 0 auto;
	text-align: center;
}
th{
	font-size: 16px;
}
td{
	font-size: 15px;
}
.ctd{
	cursor: pointer;
}
</style>
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function(){
	$('#box').val('${hallline}').prop('selected',true);
	$('#box').change(function(){
		var line = $(this).val();
		location.href='hallsearch.we?lineType='+line;
	});
});
/* function search(){
	
 	
	var hallType = $(':radio[name="hallType"]:checked').val(); 
	var menuType = $(':radio[name="menuType"]:checked').val(); 
	var mealCost = $(':radio[name="mealCost"]:checked').val(); 
	var guest = $(':radio[name="guest"]:checked').val();
	var lineType = $("#box").val();
	var search_text = $("#search_text").val(); 
 
 	
	$.ajax({
		url:'hallsearch.we',
		type:'get',
		data:{
			hallType:hallType,
			menuType:menuType,
			mealCost:mealCost,
			guest:guest
		},
	success: function(data){/* 
		 var seli=data.hallList;
		$('#tab td:eq(0)').html(seli.name);
		$('#tab td:eq(1)').html(seli.hallType);
		$('#tab td:eq(2)').html(seli.menuType);
		$('#tab td:eq(3)').html(seli.mealCost);
		$('#tab td:eq(4)').html(seli.guest);
		$('#tab td:eq(5)').html(seli.lineType);
		$('#tab td:eq(6)').html(seli.search_text);  */
	
	}
$(document).ready(function(){
$('.ctd:eq(0)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(0)').val();
});
$('.ctd:eq(1)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(1)').val();
});
$('.ctd:eq(2)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(2)').val();
});
$('.ctd:eq(3)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(3)').val();
});
$('.ctd:eq(4)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(4)').val();
});
$('.ctd:eq(5)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(5)').val();
});
$('.ctd:eq(6)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(6)').val();
});
$('.ctd:eq(7)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(7)').val();
});
$('.ctd:eq(8)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(8)').val();
});
$('.ctd:eq(9)').click(function(){
	location.href='hallInfo.we?idx='+$('.hallidx:eq(9)').val();
});
});


</script>
</head>
<body>
<%@include file="/header.jsp" %>
<section style="background: gray;">
<article>
	<div id="search" style="background: white;">
	<p style="background-color: gray; height: 20px;margin: 0px; "></p>
		<h2 style="text-align: center; font-size: 30px; margin-top: 10px;padding-top: 10px;color: #A4A4A4;">웨딩홀 검색</h2>
		



		<div class="halsear">


<div class="hallview">
			<form id="seh" action="hallsearch1.we">
				
					<table class="chk1" style="text-align: center;margin: 0 auto;">
						<tr>
						
						
							<th class="title" style="width: 400px;">
							홀 타입
							</th>
							
							</tr>
							<tr>
						<td>	<input type="radio" name="hallType" value="일반형"checked="checked">일반형 <input
								type="radio" name="hallType" value="하우스"> 하우스 <input
								type="radio" name="hallType" value="호텔"> 호텔
								</td>
						</tr>
					</table>
					
					
					
					
					<table class="chk2" style="text-align: center;margin: 0 auto;">
						<tr>
						
							<th class="title"style="width: 400px; margin-right: 40px;">식사메뉴</th>
							</tr>
							<tr>
							<td><input type="radio" name="menuType" value="뷔페"checked="checked"> 뷔페 <input
								type="radio" name="menuType" value="한식"> 한식 <input
								type="radio" name="menuType" value="양식"> 양식 <input
								type="radio" name="menuType" value="퓨전코스"> 기타
								</td>
						</tr>
					</table>
					
					
					
					
					<table class="chk3" style="text-align:center; margin: 0 auto;">
						<tr>
						
							<th class="title" style="width: 100px;">식대가격</th>
							</tr>
							<tr>
							<td><input type="radio" name="mealCost" value="0"checked="checked"> 30,000원
							<input type="radio" name="mealCost" value="30000">
							30,000~40,000원 <input type="radio" name="mealCost" value="40000">
							40,000원~50,000원 <input type="radio" name="mealCost" value="50000">
							50,000원~60,000원 <input type="radio" name="mealCost" value="60000">
							60,000원이상
							</td>
						</tr>
					</table>
					
					
					<table class="chk4"style="text-align: center;margin: 0 auto;">
						<tr>
						
							<th class="title" style="width: 400px;">하객수</th>
							</tr>
							<tr>
							<td><input type="radio" name="guest" value="0"checked="checked"> 100명 미만<input
								type="radio" name="guest" value="100"> 100명~200명 <input
								type="radio" name="guest" value="200"> 200명~300명 <input
								type="radio" name="guest" value="300"> 300명 이상
								</td>
						</tr>
					</table>
					<br>
				 	<input type="submit" value="검색"/>
					<!-- <input type="button" value="검색" onclick="search()"> -->
					</form>
					
					<br>

						<form id="seh2" action ="hallsearch2.we">
					<table class="chk5" style="text-align: center;margin: 0 auto;">
					<tr>
					
						<th class="title" style="width: 300px;">지하철</th>
						</tr>
						<tr>
						<td>	<select id="box" name="lineType" onchange="linestation()">
								<option value="">--선택--</option>
								<option value="1호선">1호선</option>
								<option value="2호선">2호선</option>
								<option value="3호선">3호선</option>
								<option value="4호선">4호선</option>
								<option value="5호선">5호선</option>
								<option value="6호선">6호선</option>
								<option value="7호선">7호선</option>
								<option value="8호선">8호선</option>
								<option value="9호선">9호선</option>
								<option value="분당선">분당선</option>
								<option value="경의중앙선">경의중앙선</option>
							</select>
								<select id="box2" name="stationType">
								<option value="">--선택--</option>
								<c:if test="${!empty hallstation}">
								<c:forEach var ="station" items="${hallstation}">
								<option value="${station}">${station}</option>
								</c:forEach>
								</c:if>
							</select>
							<input type="submit" value="검색">
							</td>
						</tr>
					</table>
					</form>
					<br>
					<form name="seh3" action="hallsearch3.we">
					<div id="table_search">
						<div>
							웨딩홀 업체명 <input id="search_text" name="name" >

							<input type="submit" value="검색">
							<div id="listDiv"></div>
						</div>
					</div>
					</form>
					
				</div>
			
		<c:if test="${empty hallview}">
				<h2>검색 결과가 없습니다.</h2>
				</c:if>
			<br>
			<c:forEach var="v" items="${hallview}" >
			
			<table id="sear" style="border-bottom: 2px Double #F8E0EC; text-align: center;width: 100%;">
			<tr>
				<th class="ctd" rowspan="2" style="width: 200px; height: 100px;">
				
				<img src="/finalproject/img/hall/${v.idx}/r1.jpg" alt="홀대표사진" style=" width: 200px; height: 100px;float: left;"/>
				
				<input type="hidden" value="${v.idx }" class="hallidx"/>
		
				
				</th>
				
		
			<td class="ctd" style="margin-top: 10px;box-shadow: none;
    background: #F69D9D;">
			<a href="" style="color: white;">
				${v.name }
				</a>
			<input type="hidden" value="${v.idx }" class="hallidx"/>
			</td>
			</tr>
			
				<tr>
				<td class="ctd">
				${v.hallType }
				${v.menuType}
				${v.mealCost }
				${v.guest }
				<input type="hidden" value="${v.idx }" class="hallidx"/>
				</td>
				</tr>
				</table>

			</c:forEach>

		</div>
		</div>
		</article>
</section>
	
	<%@include file="/footer.jsp" %>
</body>
</html>