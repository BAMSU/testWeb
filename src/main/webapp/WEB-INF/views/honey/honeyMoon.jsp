<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="ymd.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  
  function qnaSubmit(ymd){
	  if(y)
  };
  </script>
</head>
<body>

	<table>
		<tr>
			<td>
			<img src="map.jpg" usemap="#worldmap"> 
			<map
					id="worldmap" name="worldmap">
					<area shape="rect" alt="유럽" coords="42,122,90,183"
						href="honeyPackagelist_eu.jsp" target="_self" />
					<area shape="rect" alt="몰디브" coords="181,290,227,353"
						href="honeyPackagelist_moldive.jsp" target="_self" />
					<area shape="rect" alt="푸켓" coords="230,258,277,318"
						href="honeyPackagelist_fucat.jsp" target="_self" />
					<area shape="rect" alt="발리" coords="280,301,316,361"
						href="honeyPackagelist_vali.jsp" target="_self" />
					<area shape="rect" alt="호주" coords="318,345,360,405"
						href="honeyPackagelist_hoju.jsp" target="_self" />
					<area shape="rect" alt="괌" coords="363,227,406,281"
						href="honeyPackagelist_gwam.jsp" target="_self" />
					<area shape="rect" alt="사이판" coords="396,202,436,254"
						href="honeyPackagelist_saipan.jsp" target="_self" />
					<area shape="rect" alt="하와이" coords="481,221,532,276"
						href="honeyPackagelist_hawai.jsp" target="_self" />
				</map>
				</td>
		</tr>
	</table>
	<table border="1">
		<tr>
			<th>문의 하기</th>
		</tr>
		<tr>
			<td>*이름</td>
			<td><input type="text" name="name" id="name"></td>
			<td rowspan="4"><textarea rows="20" cols="20"
					readonly="readonly" style="resize: none;">이용약관</textarea></td>
		</tr>
		<tr>
			<td>*휴대폰</td>
			<td><input type="text" name="tel" id="tel"></td>
		</tr>
		<tr>
			<td>*이메일</td>
			<td><input type="text" name="email" id="email">@ <select
				name="email">
					<option value="naver.com" selected>naver.com</option>
					<option value="nate.com" selected>nate.com</option>
					<option value="hanmail.net" selected>hanmail.net</option>
					<option value="hotmail.com" selected>hotmail.com</option>
					<option value="gmail.com" selected>gmail.com</option>
			</select></td>
		</tr>
		<tr>
			<td>*결혼 예정일</td>
			<td>
				<input type="text" id="datepicker">
			</td>
		</tr>
		<tr>
			<td rowspan="2" valign="top">*문의 내용</td>
			<td rowspan="2"><textarea rows="10" cols="10"
					style="resize: none;"></textarea></td>
			<td><input type="checkbox" value="ygcheck" id="ygcheck">
					이용약관에 동의합니다</td>
		</tr>
		<tr>
			<td align="center"><input type="button" value="문의하기" onclick="qnaSubmit(${ymd})"></td>
		</tr>
	</table>
</body>
</html>