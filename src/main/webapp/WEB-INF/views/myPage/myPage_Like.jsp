<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
</head>
<body>
	<c:if test="${empty list}">
		<h3>찜 내역이 없습니다.</h3>
	</c:if>
	
	<c:forEach var="dto" items="${list}">
		<img src="/finalproject/img/hall/${dto.idx}/r1.jpg">
		<h3>${dto.name}</h3>
		<h3>${dto.si}</h3>
		<h3>${dto.gu}</h3>
		<h3>${dto.dong}</h3>
		<h3>${dto.addr}</h3>
		<h3>${dto.roadAddr}</h3>
		<h3>${dto.hallType}</h3>
		<h3>${dto.mealCost}</h3>
		<h3>${dto.menuType}</h3>
		<h3>${dto.guest}</h3>
		<h3>${dto.ckPoint}</h3>

	</c:forEach>
	
</body>
</html>