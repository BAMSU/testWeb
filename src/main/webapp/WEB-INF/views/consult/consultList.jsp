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
	<thead>
		<tr>
			<th>번호</th>
			<th>이메일</th>
			<th>이름</th>
			<th>작성일</th>
		</tr>
	</thead>
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
				<c:url var="contentUrl" value="consultContent.we">
					<c:param name="idx" >${dto.consult_idx}</c:param>
				</c:url>
				<c:url var="contentUrl2" value="consultDel.we">
					<c:param name="idx" >${dto.consult_idx}</c:param>
				</c:url>
				<td><a href="${contentUrl}">${dto.email }</a></td>
				<td>${dto.name }</td>
				<td>${dto.reservation }</td>
					<c:url var="consult_Update_Url" value="consultUpdateForm.we">
					<c:param name="idx" >${dto.consult_idx}</c:param>
					
					<c:param name="name" >${dto.name}</c:param>
			
					<c:param name="reservation" >${dto.reservation}</c:param>
					<c:param name="context" >${dto.context}</c:param>
			</c:url>
				<td><a href="${consult_Update_Url}"><input type="button" value="수정" ></a>
					<a href="${contentUrl2}"><input type="button" value="삭제"></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>