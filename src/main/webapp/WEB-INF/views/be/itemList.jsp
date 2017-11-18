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
	vertical-align: middle;
}
#table{
	margin:auto;
	width: 70%;
	margin: auto;
	border: thin;
	border-color: black;
	margin: auto;
	
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
<div class="alert alert-dismissible alert-warning" style="">
	<h2>사랑이 머물다와 함께하는 결혼식</h2>
</div>
<br><br><br><br>

<table id="table">
<!-- sdmyList 출력 -->
<c:set var="i" value="0"></c:set>
<c:choose >
	<c:when test="${category == 'car'}">
		<c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
				<td id="td_csb" style="width: 200px;">
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
				<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:when>
	<c:when test="${category == 'shoes'}">
	<c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
			<td id="td_csb">
			<c:url var="detailShoesURL" value="showItemShoes.we">
				<c:param name="shoes_idx" value="${dto.shoes_idx}"></c:param>
			</c:url>
			<a href="${detailShoesURL}"><img alt="shoes" src="${dto.shoes_thumbnail }" width="150px"> 
			<p>${dto.shoes_name}</p>
			</a>
			</td>
		<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:when>
	
	<c:when test="${category == 'bouq'}">
	<c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
			<td id="td_csb">
			<c:url var="detailBouqURL" value="showItemBouq.we">
				<c:param name="bouq_idx" value="${dto.bouq_idx}"></c:param>
			</c:url>
			<a href="${detailBouqURL}"><img alt="bouquet" src="${dto.bouq_thumbnail }" width="150px"> 
			<p>${dto.bouq_name}</p>
			</a>
			</td>
		<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:when>

	<c:otherwise>
		<c:forEach var="dto" items="${sdmyList}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
			<td id="td_sdmy">
			<c:url var="detailSDMYURL" value="showItemSDMY.we">
				<c:param name="sdmy_be" value="${dto.sdmy_be}"></c:param>
			</c:url>
			<a href="${detailSDMYURL}"><img alt="img" src="${dto.sdmy_thumbnail}" width="150px"><br>
			${dto.sdmy_be}
			</a>
			</td>
		<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:otherwise>
</c:choose>

<tr>
	<td id="td_csb" colspan="3" align="center">
	${pageStr}
	</td>
</tr>
</table>



<br><br><br><br><br>
<br><br><br><br><br>
<%@include file="/footer.jsp" %>
</body>
</html>




