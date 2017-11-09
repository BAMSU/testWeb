<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body onload="msg()">
<%@include file="beHeader.jsp" %>
<h2>업체상품등록페이지</h2>		<!-- 상품등록은 업로드 / 리스트 출력은 프로젝트 내에 이미지 파일 경로 -->
<br><br>

업체종류 : ${sessionScope.besort } 
<br>

<c:choose>
	<c:when test="${sessionScope.besort == '스튜디오'}"> 
		<br> 스튜디오업체입니당 <br>
		<%@include file="register/regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '드레스' }"> 
		드레스 업체입력폼 불러오기
		<%@include file="register/regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '메이크업' }"> 
		업체입력폼 불러오기
		<%@include file="register/regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '예복' }"> 
		업체입력폼 불러오기
		<%@include file="register/regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩카' }"> 
		<%@include file="register/regCar.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩슈즈' }"> 
		<%@include file="register/regShoes.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '부케' }"> 
		<%@include file="register/regBouq.jsp" %>
	</c:when>
</c:choose>

<br>


</body>
</html>

















