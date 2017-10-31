<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table border="1" width="450" cellspacing="0">
	<thead>
		<tr>
			<th>사원 번호</th>
			<th>사원 이름</th>
			<th>E-Mail</th>
			<th>부서명</th>
		</tr>
	</thead>

	<tbody>
		<c:set var="arr" value="${empList}" />

		<c:if test="${empty arr}">
			<tr>
				<td colspan="4">등록된 사원이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${arr}">
			<tr>
				<td>${dto.idx}</td>
				<td>${dto.name}</td>
				<td>${dto.email}</td>
				<td>${dto.dept}</td>
			</tr>
		</c:forEach>

	</tbody>
</table>