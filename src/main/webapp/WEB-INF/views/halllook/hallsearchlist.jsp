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

<%
String[] value=request.getParameterValues("hallType");
out.print(value);
for(String val : value){
	out.print(val+"<br>");
}
%>
<table>
					<c:if test="${empty list }a">

						<td>검색 결과가 없습니다.</td>
					</c:if>
					<tr>
					<th>웨딩홀 이름</th>
					<th>홀 타입</th>
					<th>메뉴 타입</th>
					<th>식대</th>
					<th>하객 수 </th>
					<th>지하철 호선</th>
					<th>지하철 역</th>
					</tr>

					<c:forEach var="dto" items="${list}">
					
					
						<tr>

							<!-- <td>'/finalproject/img/hall/'+idx+'/r1.jpg'</td> -->
							<td>${dto.name }</td>
							<td>${dto.hallType}</td>
							<td>${dto.menuType}</td>
							<td>${dto.mealCost}</td>
							<td>${dto.guest }</td>
							<td>${dto.line }</td>
							<td>${dto.station }</td>
						</tr>
						
					</c:forEach>
				</table>
</body>
</html>