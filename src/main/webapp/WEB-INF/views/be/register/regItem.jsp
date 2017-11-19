<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>

</head>
<body style="background-image: url('upload/beBackGround.jpg'); opacity: 0.7; background-size: cover;">
<%@include file="../beHeader.jsp" %>
<!-- 상품등록은 업로드 / 리스트 출력은 프로젝트 내에 이미지 파일 경로 -->
<br><br>
<div id="" class="jumbotron" style="width:70%; margin:auto;">
<br>
<div style="align-content: center; margin:auto;">
<c:choose>
	<c:when test="${sessionScope.besort == '스튜디오'}"> 
		<%@include file="regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '드레스' }"> 
		<%@include file="regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '메이크업' }"> 
		<%@include file="regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '예복' }"> 
		<%@include file="regSDMY.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩카' }"> 
		<%@include file="regCar.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩슈즈' }"> 
		<%@include file="regShoes.jsp" %>
	</c:when>
	
	<c:when test="${sessionScope.besort == '부케' }"> 
		<%@include file="regBouq.jsp" %>
	</c:when>
</c:choose>
 </div>
</div>
<br>
<br>
<br>
<br>
<br>

</body>
</html>

















