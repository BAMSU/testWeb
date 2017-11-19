<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<title>Love is staying</title>
<style type="text/css">
.img_div{
	width: 150px;
	height:170px;
	background-color: gray;
	vertical-align: middle;
	align-self: center;
}
#table{
	margin:auto;
	border-color: black;
	margin: auto;
	border-top: 6px double pink;
}
#td_sdmy{
	border: solid 0px;
	cellspacing:0px;
	border-color: gray;
	padding: 40px;
}
#td_csb{
	border: solid 0px;
	cellspacing:0px;
	border-color: gray;
	padding: 40px;
	text-align: center;
}
.img_content:hover .img {
    display: block;
    transition: all 1s ease-in-out;
}

.img_content:hover img {
    transform: scale(1.05);
    transition: all 1s ease-in-out;
    }

</style>

</head>
<body>
<%@include file="/header.jsp" %>

<br><br><br><br>
<div style=" width:70%; align-self: center;margin:auto;">
	<div style="width:100%; align-self: center; margin:auto;">
		<img alt="studio_banner" src="upload/banner/studio_banner.jpg">
	</div>

<c:set var="i" value="0"></c:set>
<c:choose >
	<c:when test="${category == 'car'}">
	<table id="table" class="table table-striped ">
	
		<c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
				<td id="td_csb" style="width: 200px;" class="table table-hover">
				<c:url var="detailCarURL" value="showItemCar.we">
					<c:param name="car_idx" value="${dto.car_idx}"></c:param>
				</c:url>
				<div class="gallery_content">
				<div class="img_content" style="border: 1px thin gray; width:150px; height:150px;
				 align-self: center; text-align: center; margin:auto; margin-bottom: 15px;">
					<a href="${detailCarURL}">
					<img alt="shoes" src="${dto.car_img }" width="150px" style="vertical-align: middle;"> 
					<p>${dto.car_name}</p>
					</a>
					</div>
				</div>
				
				</td>
				<c:set var="i" value="${i+1}"></c:set>
				
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:when>
	<c:when test="${category == 'shoes'}">
	<table id="table" class="table table-striped ">
	
	<c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
			<td id="td_csb">
			<c:url var="detailShoesURL" value="showItemShoes.we">
				<c:param name="shoes_idx" value="${dto.shoes_idx}"></c:param>
			</c:url>
			<div class="gallery_content">
				<div class="img_content" style="border: 1px thin gray; width:150px; height:150px;
				 align-self: center; text-align: center; margin:auto; margin-bottom: 15px;">
					<a href="${detailShoesURL}">
					<img alt="shoes" src="${dto.shoes_thumbnail }" width="150px" style="vertical-align: middle;"> 
					<p>${dto.shoes_name}</p>
					</a>
				</div>
			</div>
			
			
			</td>
		<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:when>
	
	<c:when test="${category == 'bouq'}">
	
	
		<img alt="bouquet_banner" src="upload/banner/bouq_banner.jpg" align="center" width="100%">
		<br><br><br>
	
	<table id="table" class="table table-striped ">
	<c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
			<td id="td_csb">
			<c:url var="detailBouqURL" value="showItemBouq.we">
				<c:param name="bouq_idx" value="${dto.bouq_idx}"></c:param>
			</c:url>
			<div class="gallery_content">
			<div class="img_content" style="border: 1px thin gray; width:150px; height:150px; background: pink;
			 align-self: center; text-align: center; margin:auto; margin-bottom: 15px;">
				<a href="${detailBouqURL}">
					<img alt="bouquet" src="${dto.bouq_thumbnail }" width="100%" height="100%">
				</a>
			</div>
			</div>
			<p>${dto.bouq_name}<br>
				by ${dto.bouq_be}</p>
			
			</td>
		<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:when>
	<c:otherwise>
		
		
	
	<table id="table" class="table table-striped ">
	
		<c:forEach var="dto" items="${sdmyList}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
			<td id="td_sdmy">
			<c:url var="detailSDMYURL" value="showItemSDMY.we">
				<c:param name="sdmy_be" value="${dto.sdmy_be}"></c:param>
			</c:url>
				<a href="${detailSDMYURL}">
				<img alt="img" src="${dto.sdmy_thumbnail}" width="150px">
				<br>
				${dto.sdmy_be}
				</a>
			
			</td>
		<c:set var="i" value="${i+1}"></c:set>
			<c:if test="${i%3==0}">
				</tr>
			</c:if>
		</c:forEach>
	</c:otherwise>
</c:choose>

<tr>
	<td id="td_csb" colspan="3" align="center">
	${pageStr}
	</td>
</tr>
</table>
</div>


<br><br><br><br><br>
<br><br><br><br><br>
<%@include file="/footer.jsp" %>
</body>
</html>




