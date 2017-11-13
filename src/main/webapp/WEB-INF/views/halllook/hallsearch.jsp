<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#search {
	border: 5px solid red;
	text-align: center;
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

fieldset {
	border: 4px solid blue;
}


label {
	margin-left: 850px;
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
#search{
	display: inline-block;
	margin: 0 auto;
	border: 5px solid red;
}
</style>
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script>
function search(){
	Array=new Array();
	
}

</script>

</head>
<body>
	<div id="search">
		<div id="menum_box">
			<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearchlist.do">웨딩홀 검색</a></li>
					<li><a href="hallrankingForm.do">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallsearchlist.do">불러오기확인</a></li>
					<li><a href="hallestmatelist.do">홀 견적내기</a></li>
					<li><a href="hallestmate.do">견적</a></li>
					<li><a href="hallmode.do">견적 수정</a></li>

				</ul>
			</div>
		</div>


		<h2 style="text-align: center;">웨딩홀 검색</h2>
		<img name="nemo">
		<input type="button" value="값" >


		<div id="tabs">
			<ul>
				<li><a href="hallsearch.do">상세 검색</a></li>
				<li><a href="hallmap.do">구별 검색</a></li>
				<li><a href="hallsubway.do">지하철 검색</a></li>
			</ul>


		</div>

		<div>



		
				<form id="seh" action="<%=request.getContextPath()%>/hallsearch.do">
				<div id="hallview">
					<div class="chk1">
						<div>
							<h3>홀 타입</h3>
							<input type="checkbox" id="hallType" value="일반형" >일반형 
							<input type="checkbox" id="hallType" value="하우스" >
							하우스 <input type="checkbox" id="hallType" value="호텔" >
							호텔
						</div>
					</div>

					<div class="chk2">
						<div>
							<h3>식사메뉴</h3>
							<input type="checkbox" id="menuType" value="1" >
							뷔페 <input type="checkbox" id="menuType" value="2" >
							한식 <input type="checkbox" id="menuType" value="3" >
							양식 <input type="checkbox" id="menuType" value="4" >
							중/일식 <input type="checkbox" id="menuType" value="5" >
							기타
						</div>
					</div>

					<div class="chk3">
						<div>
							<h3>식대가격</h3>
							<input type="checkbox" id="mealCost" value="1">
							30,000원 <input type="checkbox" id="mealCost" value="2">
							30,000~40,000원 <input type="checkbox" id="mealCost" value="3">
							40,000원~50,000원 <input type="checkbox" id="mealCost" value="4">
							50,000원~70,000원 <input type="checkbox" id="mealCost" value="5">
							70,000원이상
						</div>
					</div>

					<div class="chk4">
						<div>
							<h3>하객수</h3>

							<input type="checkbox" id="guest" value="1"> 50명 미만 <input
								type="checkbox" id="guest" value="2"> 50명~100명 <input
								type="checkbox" id="guest" value="3"> 100명~200명 <input
								type="checkbox" id="guest" value="4"> 200명 이상
						</div>
					</div>


					<div class="chk5">
						<div>
							<h3>지하철</h3>
							<select id="box" name="lineType">
								<option value="">--전체--</option>
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
							<input type="text" name="subwayname">
						</div>
					</div>

					<div id="table_search">
						<div>
						웨딩홀 업체명:
							<input name="search_text" class="search_text"
								value="${ param.search_text eq '' ? '' : param.search_text }">
							
							<input type="button" value="검색" id="btn" onclick="search();">
							<div id="listDiv"></div>
						</div>
					</div>
					
				</div>
</form>


			<br> <label>추천 웨딩홀</label>
			<table border="1" id="recomm">
				<tr>
					<th>홀 이미지</th>
					<td>'/finalproject/img/hall/'+idx+'/r1.jpg'</td>
					<td>홀 설명</td>
				</tr>
			</table>

			<fieldset>
				<label>검색 결과</label>
				<table border="1">
					<c:if test="${empty list }a">

						<td>검색 결과가 없습니다.</td>
					</c:if>
					<tr>
					<th>웨딩홀 이름</th>
					<th>홀 타입</th>
					<th>메뉴 타입</th>
					<th>식대</th>
					<th>하객 수 </th>
					<th>지하철 호선</th>
					<th>지하철 역</th>
					</tr>

					<c:forEach var="dto" items="${list}">
					
						<tr>

							
							<td>${dto.name }</td>
							<td>${dto.hallType}</td>
							<td>${dto.menuType}</td>
							<td>${dto.mealCost}</td>
							<td>${dto.guest }</td>
							<td>${dto.line }</td>
							<td>${dto.station }</td>
						</tr>
						
					</c:forEach>
				</table>
				
			</fieldset>
			
		</div>

	</div>
</body>
</html>