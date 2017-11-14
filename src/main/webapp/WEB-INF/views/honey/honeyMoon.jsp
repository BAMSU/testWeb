<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  
  function qnaSubmit(ymd){
	  var year = ymd.subString(6,9);
	  var mt = ymd.subString(0,1);
	  var day = ymd.subString(3,4);
	  //ymd=00/00/0000 01/(2)34/(5)6789
	  var wedding = document.getElementById("datepicker");
	  var year2 = wedding.subString(6,9);
	  var mt2 = ymd.subString(0,1);
	  var day2= ymd.subString(3,4);
	  if(year>year2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else if(year<year2&&mt>mt2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else if(year<year2&&mt<mt2&&day>day2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else{
		  window.alert('문의가 성공적으로 완료 되었습니다.\n 빠른 시일 내로 최적의 답변을 드리겠습니다.');
		  document.honeyQna.submit();
	  }
  };
  </script>
</head>
<body>
	<form name="honeyQna" >
		<table>
			<tr>
				<td><img src="honeyimg/map.jpg" usemap="#worldmap"> <map
						id="worldmap" name="worldmap">
						
							<area shape="rect" alt="유럽" coords="42,122,90,183"
							href="honeyPackage.we?nation=eu" target="_self" />
						<area shape="rect" alt="몰디브" coords="181,290,227,353"
							href="honeyPackage.we?nation=moldive" target="_self" />
						<area shape="rect" alt="푸켓" coords="230,258,277,318"
							href="honeyPackage.we?nation=fucat" target="_self" />
						<area shape="rect" alt="발리" coords="280,301,316,361"
							href="honeyPackage.we?nation=vali" target="_self" />
						<area shape="rect" alt="호주" coords="318,345,360,405"
							href="honeyPackage.we?nation=hoju" target="_self" />
						<area shape="rect" alt="괌" coords="363,227,406,281"
							href="honeyPackage.we?nation=gwam" target="_self" />
						<area shape="rect" alt="사이판" coords="396,202,436,254"
							href="honeyPackage.we?nation=saipan" target="_self" />
						<area shape="rect" alt="하와이" coords="481,221,532,276"
							href="honeyPackage.we?nation=hawai" target="_self" />
					</map></td>
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
				<td><input type="text" id="datepicker"></td>
			</tr>
			<tr>
				<td rowspan="2" valign="top">*문의 내용</td>
				<td rowspan="2"><textarea rows="10" cols="10"
						style="resize: none;"></textarea></td>
				<td><input type="checkbox" value="ygcheck" id="ygcheck">
					이용약관에 동의합니다</td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="문의하기"
					onclick="qnaSubmit(${ymd})"></td>
			</tr>
		</table>
	</form>
</body>
</html>