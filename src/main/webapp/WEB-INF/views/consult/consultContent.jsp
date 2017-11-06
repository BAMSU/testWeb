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
<h2>상담/문의  본문보기</h2>
<table border="1" cellspacing="0" width="450">
	<tr>
		<th>번호</th>
		<td>${dto.consult_idx}</td>
		<th>성별</th>
		<c:if test="${dto.gender==2}">
				<td>여자</td>
		</c:if>
			<c:if test="${dto.gender==1}">
				<td>남자</td>
		</c:if>
		
		
	</tr>
	<tr>
		<th>이름</th>
		<td>${dto.name }</td>
		<th>이메일</th>
		<td>${dto.email }</td>
	</tr>
	<tr>
		<th>결혼예정일</th>
		<td>${dto.reservation}</td>

	</tr>
	<tr height="250">
		<td colspan="4" align="left" valign="top">
		${dto.context }
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center">
	
		<a href="index.we">목록으로</a>
		
		</td>
	</tr>
</table> 
</body>
</html>