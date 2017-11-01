<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function slidshow(){
	var cd = document.getElementsByClassName("bgimg");
	for(var i =0;i<cd.length;i++){
		cd[i].style.display="none";
	}
	index++;
	if(index>cd.length){index=1}
	cd[index-1].style.display="block";
	setTimeout(slideshow,2000);
}
</script>
</head>
<body>
<div>

<ul>
<li><a href="/hall/hallsearch.jsp">웨딩홀 상세검색</a></li>
<li><a href="/hall/hallmap.jsp">구별 지역검색</a></li>
<li>지하철 검색</li>
</ul>

</div>

<label>추천 웨딩홀</label>
	
	<table border="1">
	<tr>
	<th>홀 이미지</th>
	<td>홀 설명</td>
	</tr>
	</table>
	
	<label>검색 결과</label>
	<table>
	<tr>
	<td>결과</td>
	</tr>
	</table>
	
</body>
</html>