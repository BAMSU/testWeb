<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>홀 랭킹 리스트</h3>
<c:forEach var="dto" items="${rankinglist }">
<table>
<tr>
<td>${dto.name }</td>
<td><span style="border:1px solid #BCA9F5;border-radius: 6px;" onclick="window.alert('halllist.do')">상세보기</span></td>
<td><span style="border:1px solid #BCA9F5;border-radius: 6px;" onclick="window.alert('hallstatistics.do')">홀 통계보기</span></td>
<td>${dto.traffic }</td>
</tr>
</table>
</c:forEach>



</body>
</html>