<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="dto" items="${list}">
		${dto.context}
		<c:if test="${dto.available eq '1'}">
			<c:url var="contentUrl" value="fqContenta.we"><c:param name="idx">${dto.consult_idx}</c:param></c:url>
			<a href="${contentUrl}">답변 완료</a> <br>
		</c:if>
	</c:forEach>
</body>
</html>