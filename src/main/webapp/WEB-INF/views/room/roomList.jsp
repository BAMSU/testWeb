<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div class="song">


<div style="margin: 0px auto; position:relative; top:20%; width: 40%; background-color: white;">
		<div>
			<h3 align="center">웨딩홀 룸 리스트 / 룸은 최대 2개</h3>
			<input type="hidden" name="hallidx" value="${idx}">
			<input type="hidden" name="cnt" value="${cnt}">
			  	<table class="table table-striped table-hover table-bordered">
			  		<thead>
			  				
				  		<tr class="thd">
					  		<th>룸 이름</th>
					  		<th>삭제</th>
				  		</tr>
			  		</thead>
			  		<tbody>
			  		
			  		<c:if test="${empty list}">
						<tr>
							<td colspan="2">등록한 룸이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${cnt<2}">
						<tr>
						<td colspan="2" align="left"><input type="button" value="룸 추가하기" onclick="javascript:location.href='insertRoom.we?idx=${idx}'"></td>
						</tr>
					</c:if>
					
	
			  		<c:forEach var="dto" items="${list}">
				  		<tr>
				  			<td><c:url var="contentUrl" value="updateRoom.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl}">${dto.name}</a> <br></td>
				  			<td><c:url var="contentUrl2" value="deleteRoom.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl2}">삭제</a> <br></td>
				  		</tr>
			  		</c:forEach>
			  		<c:if test="${cnt>0}">
						<tr>
						<td colspan="2" align="left"><input type="button" value="뒤로가기" onclick="javascript:location.href='wdList.we'"></td>
						</tr>
					</c:if>
			  		</tbody>
			  	</table>
			  </div>
	
	</div></div><%@include file="/footer.jsp"%>
</body>
</html>