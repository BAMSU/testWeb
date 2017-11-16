<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#search {
	text-align: center;
	display: inline-block;
	margin-left: 200px;
	margin-right: 200px;
	border: 5px solid red;
	padding: 100px;
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

</style>
<body>
<div id="search">
		<div id="menum_box">
			<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearch.do">웨딩홀 검색</a></li>
					<li><a href="hallrankingForm.do">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallestimate.do">홀 견적내기</a></li>
					<li><a href="hallestmate.do">견적</a></li>
					<li><a href="hallmode.do">견적 수정</a></li>
					<li><a href="hallranking.do">랭킹</a></li>

				</ul>
			</div>
		</div>
<table>
					<c:if test="${empty estlist }a">

						<td>검색 결과가 없습니다.</td>
					</c:if>

					<c:forEach var="est" items="${estlist}">
					
						<tr>

							<!-- <td>'/finalproject/img/hall/'+idx+'/r1.jpg'</td> -->
							<td>${est.hall_name }</td>
							<td>${est.hall_type}</td>
							<td>${est.gestalt}</td>
							<td>${est.guest}</td>
							<td>${est.interval }</td>
							<td>${est.hall_product }</td>
							<td>${est.hall_price }</td>
							<td>${est.hall_note }</td>
							<td>${est.hall_content }</td>
							<td>${est..meal }</td>
							<td>${est.meal_price }</td>
							<td>${est.meal_content }</td>
							<td>${est.drink_type }</td>
							<td>${est.drink_price }</td>
							<td>${est.volume }</td>
						</tr>
						
					</c:forEach>
				</table>
				</div>
</body>
</html>