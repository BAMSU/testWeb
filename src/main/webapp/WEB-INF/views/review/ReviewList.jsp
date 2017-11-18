<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
img{
	width: 50px;
}

</style>
<body>
<h2>홀 후기 리스트</h2>
<table border="1" cellspacing="0" width="450">


	
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
			<td colspan="5"><img src="/myweb/hall/${dto.room_idx}/r1.jpg" style="width: 250px;;height: 250px" /></td>
			
				<tr> 
		
				<td>${dto.name}</td>
			
				<td>${dto.writedate }</td>
				<td>${dto.writer }</td>
				<td>${dto.subject}</td>
				
		
			</tr>
			<tr>
				<td>${dto.content} </td>
			</tr>
			<tr>
			<td>
			
				<c:if test="${dto.average==1 }">
					<img src="/finalproject/img/star1.png" >
				</c:if>
				<c:if test="${dto.average==1.5 }">
					<img src="/finalproject/img/star1.png" >
				</c:if>
				<c:if test="${dto.average==2}">
					<img src="/finalproject/img/star2.png" >
				</c:if>
				<c:if test="${dto.average==2.5}">
					<img src="/finalproject/img/star2.png" >
				</c:if>
				<c:if test="${dto.average==3}">
					<img src="/finalproject/img/star3.png" >
				</c:if>
				<c:if test="${dto.average==3.5}">
					<img src="/finalproject/img/star3.png" >
				</c:if>
				<c:if test="${dto.average==4 }" >
					<img src="/finalproject/img/star4.png">
				</c:if>
				<c:if test="${dto.average==4.5 }">
					<img src="/finalproject/img/star4.png" >
				</c:if>
				<c:if test="${dto.average==5}">
					<img src="/finalproject/img/star5.png">
				</c:if>
				
				</tr>
				<tr>
				<td>
				<c:url var="reviewContentUrl" value="reviewContent.we">
					<c:param name="idx" >${dto.room_idx}</c:param>
					<c:param name="idx2" >${dto.review_idx}</c:param>
				
					
					
			  </c:url>
				<a href="${reviewContentUrl} "><input type="button" value="리뷰상세보기"></a>
				</td>
				</tr>
			
		
		</c:forEach>
	</tbody>
</table>
</body>
</html>