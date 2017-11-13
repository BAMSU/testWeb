<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function revisepopup(){
	window.open('hallmode.do', 'hallmode', 'width=500,height=570');
}
function inquiry(){
	alert('확인');
}
</script>
</head>
<style>

</style>
<body>
<label>홀 견적내기</label>

<h2>해당 웨딩홀 이름</h2>

<form name="hallestmate" action="hallestmate.do">
<p>본 견적은 웨딩홀에서 제공한 가격 정보를 단순 계산한 견적으로 실제 견적과의 차이가 있을 수 있습니다.</p>
<table border="1">
<c:forEach var="dto" items="${estmatelist }">
<thead>
<tr>
<th style="text-align: center;margin: 0 auto;">웨딩홀 견적서</th>
</tr>

<tr>
<th>웨딩홀명</th>
<td>${dto.name }</td>
</tr>

<tr>
<th>선택 홀</th>
<td>${dto.hallType }</td>
</tr>

<tr>
<th>하객수</th>
<td>${dto.guest }</td>
</tr>

<tr>
<th>선택 홀</th>
<td>${dto.choice_name }</td>
</tr>
</thead>

<tbody>

<tr>
<th>항목</th>
<th>단가</th>
<th>비고</th>
<th>가격</th>
</tr>

<tr>
<td>${dto.product}</td>
<td>${dto.note }</td>
<td>${dto.price }</td>
<td>${dto.content }</td>
</tr>

<tr>
<td rowspan="4" align="center">${dto.price }+${dto.price }</td>
</tr>

</tbody>

</c:forEach>
<tfoot>
<tr>
<td>	<c:if test="${empty sessionScope.hallmode}">
		<a href="javascript:revisepopup()">견적수정하기</a>
	</c:if>

<input type="button" value="문의하기" onclick="inquiry()">
</td>
</tr>
</tfoot>
</table>
</form>
</body>
</html>