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


<body>
<%@include file="beHeader.jsp" %>
<c:if test="${sessionScope.besid eq null }">
	<script type="text/javascript">
		window.alert('로그인 해주세요.');
		location.href='beLogin.we';
	</script>
</c:if>
<h2>beIndex.jsp</h2>

<br><br>

<div>
	<a href="beReg.we"><input type="button" value="상품등록" class="be_index_button"></a> 
	<a href="#"><input type="button" value="신청현황" class="be_index_button"></a>
	<a href="#"><input type="button" value="상품리스트" class="be_index_button"></a>
</div>

</body>
</html>






