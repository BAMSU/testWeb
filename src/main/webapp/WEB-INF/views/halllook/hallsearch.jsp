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
	margin-left: 200px;
	margin-right: 200px;
	border: 5px solid red;
}
li {
	display: inline-block;
	margin-right: 5px;
}
#menu_box {
	float: left;
	display: block;
	border: 5px solid red;
	width: 150px;
	height: 100px;
	padding-top: 300px;
}
.menu_br {
	display: inline-block;
	border: 5px solid red;
	margin: 0 auto;
}
#menu {
	float: left;
	margin-right: 5px;
	word-break: break-all;
}
#tab{
	margin: 0 auto;
}
#la1{
	text-align: center;
}
#sear{
	float: left;
	margin: 15px 0 15px 10px;
	width:605px;
	height: 60px;
	border-right: 1px solid #EBEBEB;
}
.wedding1{
	float: left;
}
a:link{
	text-decoration: none;
	margin: 0 auto;
	padding: 0;
	border:0;
}
.wedding_name{
	font-family: dotum;
	font-size: 14px;
	font-weight: bold;
	line-height: 16px;
	margin: 0 auto;
}
.wedding_info{
	width: 455px;
	font-family: dotum;
	font-size: 12px;
	letter-spacing: -0.3px;
	line-height: 15px;
	margin: 0 auto;
}

</style>
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
function search(){
	
 	//alert(document.getElementByName('hallType').value);
	var hallType = $(':radio[name="hallType"]:checked').val(); alert(hallType);
	//$('input:radio[name=hallType]:input[value='+hallType+']').attr("checked", true);
	var menuType = $(':radio[name="menuType"]:checked').val(); alert(menuType);
	var mealCost = $(':radio[name="mealCost"]:checked').val(); alert(mealCost);
	var guest = $(':radio[name="guest"]:checked').val(); alert(guest);
	var lineType = $("#box").val(); alert(lineType);
	var search_text = $("#search_text").val(); alert(search_text);
 
 	
	$.ajax({
		url:'hallsearch.do',
		type:'post',
		data:{
			hallType:hallType,
			menuType:menuType,
			mealCost:mealCost,
			guest:guest,
			lineType:lineType,
			search_text:search_text
		},
	success: function(data){
		 var seli=data.hallList;
		$('#tab td:eq(0)').html(seli.name);
		$('#tab td:eq(1)').html(seli.hallType);
		$('#tab td:eq(2)').html(seli.menuType);
		$('#tab td:eq(3)').html(seli.mealCost);
		$('#tab td:eq(4)').html(seli.guest);
		$('#tab td:eq(5)').html(seli.lineType);
		$('#tab td:eq(6)').html(seli.search_text); 
	/* 	$('#tt').html('<td>'+seli.name+'</td>');
		$('#tt').html('<td>'+seli.hallType+'</td>');
	 	$('#tt').html('<td>'+seli.menuType+'</td>');
		$('#tt').html('<td>'+seli.mealCost+'</td>');
		$('#tt').html('<td>'+seli.guest+'</td>');
		$('#tt').html('<td>'+seli.lineType+'</td>');
		$('#tt').html('<td>'+seli.search_text+'</td>');  */
	}
		
	}); 
}


</script>

</head>
<body>
<%@include file="/header.jsp" %>
	<div id="search">
		<div id="menum_box">
			<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearch.we">웨딩홀 검색</a></li>
					<li><a href="hallrankingForm.we">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallestimate.we">홀 견적내기</a></li>
					<li><a href="hallestmate.we">견적</a></li>
					<li><a href="hallmode.we">견적 수정</a></li>
					<li><a href="hallranking.we">랭킹</a></li>

				</ul>
			</div>
		</div>


		<h2 style="text-align: center;">웨딩홀 검색</h2>
		



		<div>


			<form id="seh" action="/hallsearch.do">
				<div id="hallview">
					<div class="chk1">
						<div>
							<h3>홀 타입</h3>
							<input type="radio" name="hallType" value="일반형"checked="checked">일반형 <input
								type="radio" name="hallType" value="하우스"> 하우스 <input
								type="radio" name="hallType" value="호텔"> 호텔
						</div>
					</div>

					<div class="chk2">
						<div>
							<h3>식사메뉴</h3>
							<input type="radio" name="menuType" value="뷔페"checked="checked"> 뷔페 <input
								type="radio" name="menuType" value="한식"> 한식 <input
								type="radio" name="menuType" value="양식"> 양식 <input
								type="radio" name="menuType" value="퓨전코스"> 기타
						</div>
					</div>

					<div class="chk3">
						<div>
							<h3>식대가격</h3>
							<input type="radio" name="mealCost" value="0"checked="checked"> 30,000원
							<input type="radio" name="mealCost" value="30000">
							30,000~40,000원 <input type="radio" name="mealCost" value="40000">
							40,000원~50,000원 <input type="radio" name="mealCost" value="50000">
							50,000원~70,000원 <input type="radio" name="mealCost" value="70000">
							70,000원이상
						</div>
					</div>

					<div class="chk4">
						<div>
							<h3>하객수</h3>

							<input type="radio" name="guest" value="0"checked="checked"> 100명 미만<input
								type="radio" name="guest" value="100"> 100명~200명 <input
								type="radio" name="guest" value="200"> 200명~300명 <input
								type="radio" name="guest" value="300"> 300명 이상
						</div>
					</div>


					<div class="chk5">
						<div>
							<h3>지하철</h3>
							<select id="box" name="lineType">
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
						</div>
					</div>

					<div id="table_search">
						<div>
							웨딩홀 업체명: <input id="search_text" class="search_text">

							<input type="button" value="검색" id="btn" onclick="search();">
							<div id="listDiv"></div>
						</div>
					</div>

				</div>
			</form>
		<c:if test="${empty hallList}">
				<h2>검색 결과가 없습니다.</h2>
				</c:if>
			<br> <label id="la1">추천 웨딩홀</label>
			<c:forEach var="v" items="${hallview}" >
			<div id="sear"></div>
			<div>
			

				<ul>
				
				
				<li>
				<div class="wedding1">
				
				<div class="wedding_img">
				<a href="">
				<img src="/finalproject/img/hall/${all.idx}/r1.jpg" alt="홀대표사진" style=" width: 90px; height: 60px;float: left;	"/>
				</a>
				</div>
				
				
			<div class="wedding_name">
			<a href="">
				${v.name }
				</a>
				</div>
				<div class="wedding_info">
				${v.hallType }
				${v.menuType}
				${v.mealCost }
				${v.guest }
			</div>
				</div>
				
				
				 
				
				
				</ul>
		
			</div>
			</c:forEach>
			
						
					
			
				
				<table border="1" id="tab">
					

					<c:forEach var="dto" items="${hallList}">
					<label>검색 결과</label>
					<tr>
						<th>웨딩홀 이름</th>
						<th>홀 타입</th>
						<th>메뉴 타입</th>
						<th>식대</th>
						<th>하객 수</th>
						<th>지하철 호선</th>
					</tr>

					
					
				
						<tr id="tt">


					 		<td>${dto.name }</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td> 
						</tr>
						
					</c:forEach>
				</table>

		

		</div>

	</div>
	<%@include file="/footer.jsp" %>
</body>
</html>