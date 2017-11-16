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
#tab{
	margin: 0 auto;
}

</style>
<body>
<h3>홀 랭킹 리스트</h3>
<div id="search">
<div id="#menu_box">
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
			<c:forEach var="dto" items="${hallrank }">
<table>
<tr>

<td>${dto.name }</td>
<td><span style="border:1px solid #BCA9F5;border-radius: 6px;" onclick="window.alert('halllist.do')">상세보기</span></td>
<td><span style="border:1px solid #BCA9F5;border-radius: 6px;" onclick="window.alert('hallstatistics.do')">홀 통계보기</span></td>
<td>${dto.average}</td>
</tr>
</table>
</c:forEach>


</div>
</body>
</html>