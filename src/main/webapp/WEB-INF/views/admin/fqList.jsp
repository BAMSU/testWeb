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
	var add = 'acon.we?type=' + document.fm.type.value;
	
	location.href=add;
}

function aa() {
	for(i=0;i<document.fm.type.length;i++){
		window.alert(document.fm.type[i].value);
		window.alert(${type});
		if(document.fm.type[i].value==${type}) {
			
			document.fm.type[i].checked==true;
		}
	}
}
</script>
</head>
<body onload="aa()">
<%@include file="/adminheader.jsp"%>
<form name="fm">
<h3>문의 내역 보기</h3>

	
	
	 <select name="type">
      <option value="0">전체</option>
      <option value="1">미답변</option>
      <option value="2">답변완료</option>
     </select>
     
      <input type="button" value="이동하기" onclick="show()"><br>
      
      <c:if test="${empty list}">
		<h3>조건에 맞는 문의가 없습니다.</h3>
	</c:if>
	<c:forEach var="dto" items="${list}">
		<c:url var="contentUrl" value="fqContent.we"><c:param name="idx">${dto.consult_idx}</c:param></c:url>
		${dto.consult_idx}<a href="${contentUrl}">${dto.context}</a> <br>
	</c:forEach>
	
	</form>
</body>
</html>