<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
<style type="text/css">
img{
border:1px solid gray;
}
a:hover{
	opacity: 2.5;
	
}
</style>
</head>

<body style="background-image: url('upload/beBackGround.jpg'); opacity: 0.8; background-size: cover;">
<%@include file="beHeader.jsp" %>

<br><br>

<div style=" width:60%; margin:auto; background:white; padding:10px; align-content: center; border-radius: 10px;">
<c:set var="i" value="0"></c:set>

<div style=" width:80%; align-self: center;margin:auto;">
	<div style="width:100%; align-self: center; margin:auto;">
	</div>
<br><br>
<h2 align="center">현재 등록되어있는 상품 목록</h2>
<br>
	<h6 align="right" style="font-size: x-small; color:gray;">
	* 아이템 세부페이지에서 수정 삭제가 가능합니다.
	</h6>
<div id="table_div" style="width:100%; margin:auto; background: beige;">
<table style=" width:90%; margin:auto;  opacity:0.8; padding: 20px;" align="center">

<c:choose>
	<c:when test="${sessionScope.besort == '스튜디오'}"> <br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '드레스' }"><br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '메이크업' }"><br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '예복' }"> <br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩카' }"><br>
		<c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
				<td id="td_csb" style=" width: 200px;" class="table table-hover">
				<c:url var="carUrl" value="item_detail_car.we">
		 			<c:param name="car_idx" value="${dto.car_idx}" />
		 		</c:url>
				<div class="gallery_content">
				<div class="img_content" style="border: 1px thin gray; width:150px; height:150px;
				 align-self: center; text-align: center; margin:auto; margin-bottom: 15px;">
					<a href="${carUrl}">
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
	
	<c:when test="${sessionScope.besort == '웨딩슈즈' }">
		<c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
				<td id="td_csb" style="width: 200px;" class="table table-hover">
				<c:url var="shoesUrl" value="item_detail_shoes.we">
		 			<c:param name="shoes_idx" value="${dto.shoes_idx}" />
		 		</c:url>
				<div class="gallery_content">
				<div class="img_content" style="border: 1px thin gray; width:150px; height:150px;
				 align-self: center; text-align: center; margin:auto; margin-bottom: 15px;">
					<a href="${shoesUrl}">
					<img alt="shoes" src="${dto.shoes_thumbnail}" width="150px" style="vertical-align: middle;"> 
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
	
	<c:when test="${sessionScope.besort == '부케' }">
		<c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 
		 <c:forEach var="dto" items="${list}">
			<c:if test="${i%3==0}">
				<tr>
			</c:if>
				<td id="td_csb" style="width: 200px; height:250px;" class="table table-hover">
					<c:url var="bouqUrl" value="item_detail_bouq.we">
			 			<c:param name="bouq_idx" value="${dto.bouq_idx}" />
			 		</c:url>
					<div class="gallery_content">
						<div class="img_content" style="border: 1px thin gray; width:130px; height:110px;
						 align-self: center; text-align: center; margin:auto; margin-bottom: 10px;">
							<a href="${bouqUrl}">
								<img alt="shoes" src="${dto.bouq_thumbnail}" width="100%" height="110px;"
								 style="vertical-align: middle;"> 
								${dto.bouq_name} <br>
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
</c:choose>
</table>
</div>
<br><br>
</div>
</div><br><br><br>
</body>
</html>