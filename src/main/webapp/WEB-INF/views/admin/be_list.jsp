<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show() {
	var add = 'abelist.we?type=' + document.fm.type.value;
	
	location.href=add;
}
</script>
</head>
<body>
<%@include file="/adminheader.jsp"%>
<form name="fm">
<h3>업체 권한 주기</h3>

	
	
	 <select name="type">
      <option value="0">전체</option>
      <option value="1">가입 승인 전</option>
      <option value="2">승인 완료</option>
     </select>
     
      <input type="button" value="이동하기" onclick="show()"><br>
      
      <c:if test="${empty list}">
		<h3>조건에 맞는 문의가 없습니다.</h3>
	</c:if>
	<c:forEach var="dto" items="${list}">
		<%-- <c:url var="contentUrl" value="fqContent.we"><c:param name="idx">${dto.consult_idx}</c:param></c:url>
		${dto.consult_idx}<a href="${contentUrl}">${dto.context}</a> <br> --%>
		${dto.be_name} ${dto.be_license} ${dto.be_rep_tell}
		 <c:if test="${dto.admin_permission eq 'y'}">
			권한 승인
		 </c:if>
		 
		 <c:if test="${dto.admin_permission eq 'n'}">
			권한 없음
		 </c:if>
		<input type="button" value="권한 변경하기" onclick="javascript:location.href='power.we?be_idx=${dto.be_idx}&admin_permission=${dto.admin_permission}'">
		<br>
	</c:forEach>
	
	</form>
</body>
</html>