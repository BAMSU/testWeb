<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="list" items="${s_fly}">
	<p>항공사 ${list.airLineKorean }</p>
	출발 공항 ${list.airport}<br>
	도착 공항 ${list.city }<br>
	출발 시간 ${list.internationalTime }<br>
	</c:forEach>
	
	<hr>
	
	<c:forEach var="a_list" items="${a_fly}">
	<p>항공사 ${a_list.airLineKorean }</p>
	출발 공항 ${a_list.airport}<br>
	도착 공항 ${a_list.city }<br>
	출발 시간 ${a_list.internationalTime }<br>

	</c:forEach>
	
</body>
</html>