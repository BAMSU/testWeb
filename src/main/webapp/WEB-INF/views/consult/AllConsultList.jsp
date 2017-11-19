<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title> 
</head>
<body>
<h2>나의 상담/문의 신청 리스트</h2>
<table border="1" cellspacing="0" width="450">

		<tr>
			<td>번호</td>
			<td>이메일</td>
			<td colspan="2" style="width:100px; ">이름</td>
			<td >작성일</td>
		</tr>

	<tfoot>
		<tr>
			<td colspan="5" align="center">${pageStr}</td>
			
		</tr>
	</tfoot>
	<tbody>
		<c:if test="${empty list}">
			<tr>
				<td colspan="5" align="center">등록된 개시글이 없습니다.</td>
				
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list }" >
			<tr>
		
				<td>${dto.consult_idx}</td>
		
		
				<td><a href="${contentUrl}">${dto.email }</a></td>
				<td colspan="2">${dto.name }</td>
				<td>${dto.reservation }</td>
			
		
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>