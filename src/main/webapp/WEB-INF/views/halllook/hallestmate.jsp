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
	margin-right:5px;
}

</style>
<title>Insert title here</title>
<script>
function est(){
	alert("확인");
}
function halle(){
	alert("확인끗");
}
</script>
</head>
<body>
<h2>웨딩홀 견적서</h2>

<div>
<ul>
<li>추천 웨딩홀</li>
<li>내용</li>
</ul>
</div>
<input type="button" id="butt1" onclick="est();" value="빠른견적">

<div class="estmate_search">
<ul>
<li>
<div>
<div>지역별</div>

<select name="opt_box">
<option value="">시/도</option>
<option value="서울">서울</option>
</select>
</div>
</li>

<li>
<div>
<div>홀 타입</div>
<select name="hall_box">
<option value="">전체</option>
<option value="채플">채플</option>
<option value="호텔">호텔</option>
<option value="기타">기타</option>
</select>
</div>
</li>

<li>
<div>
<div>하객수</div>
<select name="gest_box">
<option value="">전체</option>
<option value="100명 미만">100명 미만</option>
<option value="100명~200명">100명~200명</option>
<option value="200명~300명">200명~300명</option>
<option value="300명~400명">300명~400명</option>
<option value="400명~500명">400명~500명</option>
<option value="500명 이상">500명 이상</option>
</select>

</div>
</li>


<li>
<div>
<div>총 견적대</div>
<select name="estmate_box">
<option value="">전체</option>
<option value="500만원 이하">500만원 이하</option>
<option value="500~1,000만원">500~1,000만원</option>
<option value="1,000~1,500만원">1,000~1,500만원</option>
<option value="1,500~2,000만원">1,500~2,000만원</option>
<option value="2,000~2,500만원">2,000~2,500만원</option>
<option value="2,500~3,000만원">2,500~3,000만원</option>
<option value="3,000~3,500만원">3,000~3,500만원</option>
<option value="3,500~4,000만원">3,500~4,000만원</option>
<option value="4,000~4,500만원">4,000~4,500만원</option>
<option value="4,500~5,000만원">4,500~5,000만원</option>
<option value="5,000만원 이상">5,000만원 이상</option>
</select>
</div>
</li>
<li style="display:table-cell;width:90px;height:100%;border:0;margin:0;padding:0;vertical-align:middle;float:none;">
<input type="button" value="검색" onclick="halle()"></li>
</ul>
</div>

<table>
<tr>
<td rowspan="3" align="center">결과</td>
</tr>
<tr>
<th>이미지</th>
<td>홀 설명</td>
</tr>
</table>

</body>
</html>