<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style type="text/css">
.be_index_button{
width: 300px;
height: 300px;
text-align: center;
vertical-align: middle;
background-color: transparent;
border-color: black;
border-style: solid;
}
</style>

</head>


<body class="homepage">
<%@include file="beHeader.jsp" %>
<article class="panel">
<div id="page-wrapper">



<c:if test="${sessionScope.besid eq null }">
	<script type="text/javascript">
		window.alert('로그인 해주세요.');
		location.href='beLogin.we';
	</script>
</c:if>
<br><br>
<div id="">

<div id="header-wrapper">
					<div id="header" class="container">

	<h1 id="logo">사랑이 머물다</h1><br>
	<h4>with</h4><br>
	<h1>${sessionScope.besname}</h1><br><br>
	
	<a href="beReg.we"><input type="button" value="상품등록" class=""></a> 
	<a href="itemListBe.we"><input type="button" value="상품리스트" class=""></a>
	
	<c:if test="${sessionScope.besort eq '웨딩카' }">
	<c:url var="nCarUrl" value="nCarList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nCarUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	<c:if test="${sessionScope.besort eq '웨딩슈즈' }">
	<c:url var="nShoesUrl" value="nShoesList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nShoesUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	<c:if test="${sessionScope.besort eq '부케' }">
	<c:url var="nBouqUrl" value="nBouqList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nBouqUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	<c:if test="${sessionScope.besort eq '스튜디오' }">
	<c:url var="nSDMYUrl" value="nSDMYList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nSDMYUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	<c:if test="${sessionScope.besort eq '드레스' }">
	<c:url var="nSDMYUrl" value="nSDMYList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nSDMYUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	<c:if test="${sessionScope.besort eq '메이크업' }">
	<c:url var="nSDMYUrl" value="nSDMYList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nSDMYUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	<c:if test="${sessionScope.besort eq '예복' }">
	<c:url var="nSDMYUrl" value="nSDMYList.we">
		<c:param name="be_name" value="${sessionScope.besname}"></c:param>
	</c:url>
	<a href="${nSDMYUrl}"><input type="button" value="신청현황" class=""></a>
	</c:if>
	
	</div>
</div>

</div>
</div></article>

<%@include file="/footer.jsp" %>
</body>
</html>






