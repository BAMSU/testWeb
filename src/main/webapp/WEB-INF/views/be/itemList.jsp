<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>itemList.jsp</h2>
<p>${category}</p>
<table>
<!-- sdmyList 출력 -->
<c:choose >
	<c:when test="${category == 'car'}">
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>
			<a href="#"><img alt="car" src="${dto.car_img }" width="150px"> 
			<p>${dto.car_name}</p>
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:when>
	
	<c:when test="${category == 'shoes'}">
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>
			<a href="#"><img alt="shoes" src="${dto.shoes_thumbnail }" width="150px"> 
			<p>${dto.shoes_name}</p>
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:when>
	
	<c:when test="${category == 'bouq'}">
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>
			<a href="#"><img alt="bouquet" src="${dto.bouq_thumbnail }" width="150px"> 
			<p>${dto.bouq_name}</p>
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:when>

	<c:otherwise>
		<c:forEach var="dto" items="${sdmyList}">
		<tr>
			<td>
			<a href="#"><img alt="img" src="${dto.sdmy_thumbnail}" width="150px"><br>
			${dto.sdmy_be}
			</a>
			</td>
		</tr>
	</c:forEach>
	</c:otherwise>
</c:choose>



</table>
</body>
</html>




