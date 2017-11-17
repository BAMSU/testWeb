<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<title>Insert title here</title>
<style type="text/css">
.img_div{
	width: 150px;
	height:170px;
	background-color: gray;
}
#table{
	border: 10px;
	border-color: black;
	margin:auto;
	padding-left: 30%;
}
#td_sdmy{
	border: 1px;
	cellspacing:0px;
	border-color: black;
}
#td_csb{
	border: 1px;
	cellspacing:0px;
	border-color: red;
}
</style>

</head>
<body>
<%@include file="/header.jsp" %>
<br><br>
<div>
	<h2>사랑이 머물다와 함께하는 ${category} 업체 리스트</h2>
</div>
<br><br><br><br>
<table id="table">
<!-- sdmyList 출력 -->
<c:choose >
	<c:when test="${category == 'car'}">
	<c:forEach var="dto" items="${list}">
		<tr>
			<td id="td_csb">
			<c:url var="detailCarURL" value="showItemCar.we">
				<c:param name="car_idx" value="${dto.car_idx}"></c:param>
			</c:url>
			<div class="img_div">
			<a href="${detailCarURL}">
				<img alt="car" src="${dto.car_img }" width="150px" style="padding-top: auto;"> 
			</a>
			</div>
			<p>${dto.car_name}</p>
			
			</td>
		</tr>
	</c:forEach>
	</c:when>
	<c:when test="${category == 'shoes'}">
	<c:forEach var="dto" items="${list}">
		<tr>
			<td id="td_csb">
			<c:url var="detailShoesURL" value="showItemShoes.we">
				<c:param name="shoes_idx" value="${dto.shoes_idx}"></c:param>
			</c:url>
			<a href="${detailShoesURL}"><img alt="shoes" src="${dto.shoes_thumbnail }" width="150px"> 
			<p>${dto.shoes_name}</p>
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:when>
	
	<c:when test="${category == 'bouq'}">
	<c:forEach var="dto" items="${list}">
		<tr>
			<td id="td_csb">
			<c:url var="detailBouqURL" value="showItemBouq.we">
				<c:param name="bouq_idx" value="${dto.bouq_idx}"></c:param>
			</c:url>
			<a href="${detailBouqURL}"><img alt="bouquet" src="${dto.bouq_thumbnail }" width="150px"> 
			<p>${dto.bouq_name}</p>
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:when>

	<c:otherwise>
		<c:forEach var="dto" items="${sdmyList}">
		<tr>
			<td id="td_sdmy">
			<c:url var="detailSDMYURL" value="showItemSDMY.we">
				<c:param name="sdmy_be" value="${dto.sdmy_be}"></c:param>
			</c:url>
			<a href="${detailSDMYURL}"><img alt="img" src="${dto.sdmy_thumbnail}" width="150px"><br>
			${dto.sdmy_be}
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:otherwise>
</c:choose>

</table>

${pageStr}
</body>
</html>




