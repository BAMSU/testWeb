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
<table>
					<c:if test="${empty estlist }a">

						<td>검색 결과가 없습니다.</td>
					</c:if>

					<c:forEach var="est" items="${estlist}">
					
						<tr>

							<!-- <td>'/finalproject/img/hall/'+idx+'/r1.jpg'</td> -->
							<td>${est.hall_name }</td>
							<td>${est.hall_type}</td>
							<td>${est.gestalt}</td>
							<td>${est.guest}</td>
							<td>${est.interval }</td>
							<td>${est.hall_product }</td>
							<td>${est.hall_price }</td>
							<td>${est.hall_note }</td>
							<td>${est.hall_content }</td>
							<td>${est..meal }</td>
							<td>${est.meal_price }</td>
							<td>${est.meal_content }</td>
							<td>${est.drink_type }</td>
							<td>${est.drink_price }</td>
							<td>${est.volume }</td>
						</tr>
						
					</c:forEach>
				</table>
</body>
</html>