<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>수정 사원 내역</h2>
<form name = "empUpdate" action = "empUpdate.do" method="post">
<table border = "1" width = "450" cellspacing="0">
<thead>
<tr>
<th>사원 번호</th>
<th>사원 이름</th>
<th>E-Mail</th>
<th>부서명</th>
</tr>
</thead>

<tbody>

	<c:set var="arr" value = "${empList}"/>
		
		<c:if test="${empty arr}">
			<tr>
				<td colspan="4">등록된 사원이 없습니다.</td>
			</tr>
		</c:if>
		
		<c:forEach var = "dto" items="${arr}">
		<tr>
			<td><input type = "text" value = "${dto.idx}" name = "idx" readonly="readonly"></td>
			<td><input type = "text" value = "${dto.name}" name = "name"></td>
			<td><input type = "text" value = "${dto.email}" name = "email"></td>
			<td><input type = "text" value = "${dto.dept}" name = "dept"></td>
		</tr>
		<tr>
			<td colspan = "4" align = "center"><input type = "submit" value = "수정하기"></td>
		</tr>
		</c:forEach>
</tbody>

</table>
</form>
</body>
</html>