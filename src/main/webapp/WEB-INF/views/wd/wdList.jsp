<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function aa() {
	location.href="/finalproject/insertWd.we";
}
</script>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

#map {
 height: 400px;
 width: 100%;
}
a {
	cursor: pointer;
}

#scrap{
	color: pink;
	font-size: 20px;
}

.hif th{
	color: gray;
}
table th{
	padding: 3px;
}
table td{
	padding: 3px;
}
table tfoot td{
	text-align: center;
}
#rvp{
	margin: 0px auto;
}
.thd{
	background-color: #e74742; 
	color: #fff;
}
</style>
</head>
<body>
<%@include file="/adminheader.jsp"%>


<div style="margin: 0px auto; width: 60%; background-color: white;">
		<div>
			<h3 align="center">웨딩홀 리스트</h3>
			  	<table class="table table-striped table-hover table-bordered">
			  		<thead>
			  				
				  		<tr class="thd">
					  		<th width="30%">홀 이름</th>
					  		<th>방 관리</th>
					  		<th>웨딩홀 정보/견적서 관리</th>
					  		<th>웨딩홀 사진 관리</th>
					  		<th>삭제</th>
				  		</tr>
			  		</thead>
			  		<tbody>
			  		
			  		<c:if test="${empty list}">
						<tr>
							<td colspan="5">등록된 웨딩홀이 없습니다.</td>
						</tr>
					</c:if>
					
					<tr>
						<td colspan="5" align="left"><input type="button" name="insertWd" value="웨딩홀등록" onclick="aa()"></td>
					</tr>
	
			  		<c:forEach var="dto" items="${list}">
				  		<tr>
				  			<td><c:url var="contentUrl" value="updateWd.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl}">${dto.name}</a></td>
				  			<td><c:url var="contentUrl5" value="roomList.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl5}">방 관리</a></td>
				  			<td><c:url var="contentUrl3" value="mealList.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl3}">웨딩홀 정보/견적서 관리</a></td>
				  			<td><c:url var="contentUrl4" value="fileUploadForm.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl4}">웨딩홀 사진 관리</a></td>
				  			<td><c:url var="contentUrl2" value="deleteWd.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl2}">삭제</a></td>
				  		</tr>
			  		</c:forEach>
			  		
			  		<tr>
			  			<td colspan="5" align="center">${pageStr}</td>
			  		</tr>
			  		</tbody>
			  	</table>
			  </div>
	
	</div>
</body>
</html>