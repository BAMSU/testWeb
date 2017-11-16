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
<h3>문의 내역 보기</h3>

	<c:if test="${empty list}">
		<h3>등록된 문의가 없습니다.</h3>
	</c:if>
	
	 <select name="type">
      <option value="0">전체</option>
      <option value="1">미답변</option>
      <option value="2">답변완료</option>
     </select>
     
      <input type="button" value="이동하기">
	<c:forEach var="dto" items="${list}">
		<c:url var="contentUrl" value="fqContent.we"><c:param name="idx">${dto.consult_idx}</c:param></c:url>
		${dto.consult_idx}<a href="${contentUrl}">${dto.context}</a>
	</c:forEach>
</body>
</html>