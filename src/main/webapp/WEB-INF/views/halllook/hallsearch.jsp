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
li{
	display:inline-block;
	margin-right: 5px;
}
</style>
<title>Insert title here</title>

</head>
<body>

   

	<div>
		<ul>
			<li><p>웨딩홀 검색</p></li>
			<li><p>홀 랭킹</p></li>
			<li><p>홀vs홀</p></li>
			<li><p>홀 견적내기</p></li>
		</ul>
	</div>

	<h2>웨딩홀</h2>
	<img name="nemo">
	
	<div>
	<ul>
	<li><a href="../halllook/hallsearch.jsp">웨딩홀 상세검색</a></li>
	<li><a href="../halllook/hallmap.jsp">구별 검색</a></li>
	<li><a href="../halllook/hallsubway.jsp">지하철 검색</a></li>
	</ul>
	</div>
	<form name="search" method="post" action="hallsearch.we">
		<table>

			<tr>
				<th>홀 타입</th>
				<td><input type="checkbox" name="hall_style" value="01">
					일반형</td>
				<td><input type="checkbox" name="hall_style" value="02">
					하우스</td>

				<td><input type="checkbox" name="hall_style" value="03">
					채플</td>

				<td><input type="checkbox" name="hall_style" value="04">
					야외</td>

				<td><input type="checkbox" name="hall_style" value="05">
					전통</td>
			</tr>



			<tr>
				<th>예식형태</th>

				<td><input type="checkbox" name="hall_type" value="01">
					일반형</td>

				<td><input type="checkbox" name="hall_type" value="02">
					호텔형</td>

				<td><input type="checkbox" name="hall_type" value="03">
					종교예식</td>

				<td><input type="checkbox" name="hall_type" value="04">
					기타</td>
			</tr>

			<tr>
				<th>식사메뉴</th>

				<td><input type="checkbox" name="food_type" value="01">
					뷔페</td>

				<td><input type="checkbox" name="food_type" value="02">
					한식</td>

				<td><input type="checkbox" name="food_type" value="03">
					양식</td>

				<td><input type="checkbox" name="food_type" value="04">
					중/일식</td>

				<td><input type="checkbox" name="food_type" value="05">
					기타</td>

			</tr>

			<tr>
				<th>식대가격</th>

				<td><input type="checkbox" name="price" value="01">
					30,000원</td>

				<td><input type="checkbox" name="price" value="02">
					30,000~40,000원</td>

				<td><input type="checkbox" name="price" value="03">
					40,000원~50,000원</td>

				<td><input type="checkbox" name="price" value="04">
					50,000원~70,000원</td>

				<td><input type="checkbox" name="price" value="05">
					70,000원이상</td>
			</tr>


			<tr>
				<th>하객수</th>

				<td><input type="checkbox" name="nowrap" value="01">
					50명 미만</td>

				<td><input type="checkbox" name="nowrap" value="02">
					50명~100명</td>

				<td><input type="checkbox" name="nowrap" value="03">
					100명~200명</td>

				<td><input type="checkbox" name="nowrap" value="04">
					200명 이상</td>

			</tr>


			<tr> 
				<th>웨딩홀명</th>
				<td><input type="text" name="hall_name"></td>
			</tr>
			<tr>
				<td rowspan="1"><input type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	
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