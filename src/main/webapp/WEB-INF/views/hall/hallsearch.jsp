<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
p {
	margin: 0px;
	padding: 0px;
}

#navcontainer {
	background: #a2ce81; /*background: #f0e7d7; 모든 카테고리 후경색*/
	width: 176px;
	height: 280px;
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	font-family: georgia, serif;
	font-size: 13px;
	text-align: center;
	text-transform: uppercase; /*대문자*/
}

ul#navlist {
	text-align: center;
	list-style: none;
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 176px;
}

ul#navlist li {
	display: block;
	margin: 0;
	padding: 0;
}

ul#navlist li a {
	display: block;
	width: 176px;
	padding: 0.5em 0.5em 0.5em 2em;
	border-width: 1px;
	border-color: #ffe #aaab9c #ccc #fff;
	border-style: solid;
	color: #777;
	/*color: #777;background: #f7f2ea; border-color: #ffe #aaab9c #ccc #fff;*/
	text-decoration: none;
	background: #dae2ca; /*후경색 */
}

#navcontainer>ul#navlist li a {
	width: auto;
}

ul#navlist li a:hover, ul#navlist li#active a:hover {
	color: #800000; /*마우스오버시 */
	background: transparent;
	border-color: #aaab9c #fff #fff #ccc;
	/* color: #800000; border-color: #aaab9c #fff #fff #ccc;*/
}
</style>
</head>
<body>

	<nav id="navcontainer">
		<ul id="navlist">
			<li><p>웨딩홀 검색</p></li>
			<li><p>홀 랭킹</p></li>
			<li><p>홀vs홀</p></li>
			<li><p>홀 견적내기</p></li>
		</ul>
	</nav>

	<h2>웨딩홀</h2>
	<div>
	<ul>
	<li>웨딩홀 상세검색</li>
	<li><a href="/hall/hallmap.jsp">구별 검색</a></li>
	<li><a href="/hall/hallsubway.jsp">지하철 검색</a></li>
	</ul>
	</div>
	<form name="search">
		<table>

			<tr>
				<th>웨딩시설구분</th>
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
				<th>웨딩홀형태</th>

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
				<td><input type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	

	
</body>
</html>