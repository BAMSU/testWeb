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
애니메이션 인기 검색어:
<c:forEach var="temp" items="${keyword}">
${temp}&nbsp;&nbsp;
</c:forEach>
<hr>
<form name="a" action="aniFind2.do">
<select name="cate">
	<c:forEach var="opt" items="${cate}">
		<option value="${opt}">${opt}</option>
	</c:forEach>
</select>
<input type="text" name="key">
<input type="submit" value="검색">
<hr>
<h1>aniFind1.jsp</h1>
</form>
</body>
</html>