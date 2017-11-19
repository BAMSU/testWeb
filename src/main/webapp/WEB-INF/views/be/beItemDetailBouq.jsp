<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/beCss.css">
<style type="text/css">
.button{
	width:100px;
	height:50px;
	text-align: center;
	color:red;
	vertical-align: center;
	background: skyblue;
	opacity:0.4;
	border:3px solid gray;
	border-radius: 5px;
}
.button:hover{
	background: pink;
	font-weight: bold;
}
img{
	vertical-align:middle;
	padding-left:10%;
	border-radius: 5px;
}
</style>
</head>
<body style="background-image: url('upload/beBackGround.jpg'); opacity: 0.7; background-size: cover;">
<%@include file="beHeader.jsp" %>

<div>

<c:set value="${dto}" var="dto"></c:set>
<c:url var="delUrl" value="delItem.we">
	<c:param name="besort" value="${sessionScope.besort}"/>
	<c:param name="idx" value="${dto.bouq_idx}"></c:param>
</c:url>
<c:url var="updateUrl" value="itemUpdateBouq.we">
	<c:param name="idx" value="${dto.bouq_idx}"></c:param>
</c:url>


<div class="jumbotron" style=" height:600px;">
	<h2 style="padding-bottom: 2%;">상품 상세정보</h2>
	
	<div id="content" style=" padding-left: 10%; padding-right:5%; heigth:300px; padding: 3%;">	
	
	<div id="img" style=" float: left; width:40%; height:400px; color: black;
	background:transparent ;">
	<br>
		<img alt="상품이미지" src="${dto.bouq_thumbnail}" style="margin:auto auto; width:80%;height:70%; vertical-align: middle; align-self: center;">
	</div>
		<div style="border:2px; solid red; background: white; opacity: 2.0; width:100%;margin:auto;">
		업체 : ${dto.bouq_be}<br>
		상품명 : ${dto.bouq_name}<br>
		상품가격 : ${dto.bouq_price}<br>
		조회수 : ${dto.readnum}<br>
		상담수 : ${dto.consult}<br>
		
		상세정보 :<br>
		${dto.bouq_detail}
		</div>
	</div> 
<br>
<div style="padding-left: 60%; width:fit-content;">
	<a href="${updateUrl}"><input type="button" class="button" value="상품수정"></a>
	<a href="${delUrl}"><input type="button" class="button" value="상품삭제"></a>
	<br>
</div>
</div>


</div>

<br><br><br>
</body>
</html>