<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty list}">
		<h3>문의하신 내용 없죠</h3>
	</c:if>
	
	<c:forEach var="dto" items="${list}">
		<h3>${dto.name}</h3>
		<h3>${dto.reservation}</h3>
		<h3>${dto.context}</h3>

	</c:forEach>
</body>
</html>