<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<script>
function show() {
	var add = 'acon.we?type=' + document.fm.type.value;
	
	location.href=add;
}

function aa() {
	for(i=0;i<document.fm.type.length;i++){
		var a = ${type};
		if(document.fm.type[i].value==a) {
			
			document.fm.type[i].selected=true;
		}
	}
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
<body onload="aa()">
<%@include file="/adminheader.jsp"%>
<div class="song">
<form name="fm" style="position:relative; top:20%;">

<div style="margin: 0px auto;  position:relative; top:20%;width: 60%; background-color: white;">
		<div>
			<h3 align="center">문의 리스트</h3>
			  	<table class="table table-striped table-hover table-bordered">
			  		<thead>
			  				
				  		<tr class="thd">
					  		<th width="30%">문의 내용</th>
					  		<th width="15%">고객 이름</th>
					  		<th width="25%">고객 번호</th>
					  		<th width="10%">업체 구분</th>
					  		<th width="20%">문의 완료 버튼</th>
				  		</tr>
			  		</thead>
			  		<tbody>
			  		
			  		<c:if test="${empty list}">
						<tr>
							<td colspan="5">조건에 맞는 문의가 없습니다.</td>
						</tr>
					</c:if>
					
					<tr>
						<td colspan="5" align="left">
						
						<select name="type">
      <option value="0">전체</option>
      <option value="1">미답변</option>
      <option value="2">답변완료</option>
     </select>
     
      <input type="button" value="이동하기" onclick="show()">
						
						</td>
					</tr>
	
			  		<c:forEach var="dto" items="${list}">
				  		<tr>
				  			<td>${dto.context}</td>
		
							<td>${dto.name}</td>
							<td>${dto.tel}</td>
							
							
							<c:if test="${dto.gubun eq '1'}"><td>
			웨딩홀</td>
		</c:if>
		
		<c:if test="${dto.gubun ne '1'}"><td>
			웨딩 업체</td>
		</c:if>
				  			
				  			
				  			<c:if test="${dto.available eq '1'}"><td>
			<c:url var="contentUrl" value="fqContenta.we"><c:param name="idx">${dto.consult_idx}</c:param></c:url>
			<a href="${contentUrl}">미답변(클릭)</a></td>
		</c:if>
		
		<c:if test="${dto.available ne '1'}"><td>
			답변 완료</td>
		</c:if>
		
		
		
				  			
				  		</tr>
			  		</c:forEach>
			  		
			  		<tr>
			  			<td colspan="5" align="center">${pageStr}</td>
			  		</tr>
			  		</tbody>
			  	</table>
			  </div>
	
	</div>
	</form></div><%@include file="/footer.jsp"%>
</body>
</html>