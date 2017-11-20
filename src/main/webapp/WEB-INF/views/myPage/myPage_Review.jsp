<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
</head>
<body>
	
	<%@include file="/header.jsp" %>
	<form name="fm" action="">







	<table border="1" cellpadding="0">
		<c:forEach var="dto" items="${list}">
			<tr>
				<td rowspan="5">${dto.img}</td>
			</tr>

			<tr>
				<th>홀이름 :</th>
				<td>${dto.name}</td>
			</tr>

			<tr>
				<th>작성일</th>
				<td>${dto.writedate}</td>
				<th>글쓴이</th>
				<td>${dto.writer}</td>
				<th>평점</th>
				<td>${dto.average}</td>
			</tr>
			<tr>
				<td colspan="6">${dto.content}</td>
			</tr>

			<tr>
				<td><input type="button" value="삭제"></td>
			</tr>


		</c:forEach>
	</table>
	</form>
	<%@include file="/footer.jsp" %>
</body>
</html>