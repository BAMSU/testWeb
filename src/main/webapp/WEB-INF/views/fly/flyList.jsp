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
	${list.airLineKorean }
	${list.startcity }
	${list.arrivalcity }
	${list.domesticStartTime }
	${list.domesticArrivalTime }
	${list.city }
	</c:forEach>
	
	<hr>
	
	<c:forEach var="a_list" items="${a_fly}">
	${a_list.airLineKorean }
	${a_list.startcity }
	${a_list.arrivalcity }
	${a_list.domesticStartTime }
	${a_list.domesticArrivalTime }
	</c:forEach>
	
</body>
</html>