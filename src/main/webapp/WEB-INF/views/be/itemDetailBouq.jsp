<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/header.jsp" %>
<h2>itemDetailBouq</h2>
<c:if test="${empty dto}">
	<script type="text/javascript">
		window.alert('잘못된 접근입니다.');
		location.href='index.we';
	</script>
</c:if>
<c:url var="consultUrl" value="consult.we">
	<c:param name="gubun" value="${dto.gubun}"></c:param>
	<c:param name="idx" value="${dto.bouq_idx}"></c:param>
</c:url>

<img src="${dto.bouq_thumbnail}" width="400" height="300" />
<ul>
	<li>상품명 : ${dto.bouq_name}</li>
	<li>${dto.bouq_be} 업체 </li>
	<li>판매가: ${dto.bouq_price } 만원</li>
	<li>${dto.bouq_simple }</li>
	<li>조회수 : ${dto.readnum}<br>
		상담수 : ${dto.consult }</li>
	<li><a href="${consultUrl}"><input type="button" value="상담신청하기"></a></li>
</ul>

<br>
${dto.bouq_detail }

<div class="jumbotron">
	<p>
	업체명 : ${bdto.be_name }<br>
	사업자등록번호 : ${bdto.be_license}<br>
	대표번호 : ${bdto.be_rep_tell}<br>
	소재지 : ${bdto.be_loc}<br>
	주차시설 : ${bdto.be_park}<br>
	</p>
</div>




</body>
</html>