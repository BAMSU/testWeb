<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
div{
	border:0;
	word-break:break-all;
	display:block;
}
.blo{
	display:inline-block;
	margin-right: 1px;
	width: 150px;
	height: 60px;
	border: 10px solid red;
	text-align: center;
	padding:7px;
	
}
</style>
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
<div class="blo">

<a href="../hall/hallsearch.jsp">웨딩홀 상세검색</a></div>
<div class="blo"><a href="../hall/hallmap.jsp">구별 지역검색</a></div>
<div class="blo">지하철 검색

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