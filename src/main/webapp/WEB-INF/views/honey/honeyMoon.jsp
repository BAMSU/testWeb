<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="https://bootswatch.com/4/journal/bootstrap.css" />
<style>
	section{
		margin: 0px auto;
		width: 800px;
	}
	#t_div{
	margin: 0px auto;
	padding-left: 170px;
	padding-right: 170px;
	}
</style>
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
	<form name="honey">
	<%@include file="/header.jsp" %>
		<section>
		
		<br>
		
		<h2> 가고 싶은 신혼 여행 지역을  클릭해주세요. </h2>
		
		<hr>
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
			
			
			<hr>
			<div id="t_div">
			<table 
			class="table table-striped table-hover table-bordered"
			border="1" id="qna" >
				<tr >
					<th colspan="3">문의 하기</th>
				</tr>
				<tr >
					<td><font size="2">*이름</font></td>
					<td><input type="text" name="name" id="name" style="width: 300px;"></td>
					
				</tr >
				<tr >
					<td><font size="2">*휴대폰</font></td>
					<td><input type="text" name="tel" id="tel" style="width: 300px;"></td>
				</tr>
				<tr >
					<td><font size="2">*이메일</font></td>
					<td><input type="text" name="email" id="email">@ <select
						name="email">
							<option value="naver.com" selected>naver.com</option>
							<option value="nate.com" selected>nate.com</option>
							<option value="hanmail.net" selected>hanmail.net</option>
							<option value="hotmail.com" selected>hotmail.com</option>
							<option value="gmail.com" selected>gmail.com</option>
					</select></td>
				</tr>
				<tr >
					<td><font size="2">*결혼 예정일</font></td>
					<td><input type="text" id="datepicker" style="width: 300px;"></td>
				</tr>
				<tr >
					<td rowspan="2" valign="top"><font size="2">*문의 내용</font></td>
					<td rowspan="2"><textarea rows="5" 
							style="resize: none;width: 300px;"></textarea></td>
					</tr>
				<tfoot >
				<tr >
				<td colspan="2" align="right">
				<button type="button" class="btn btn-info">문의하기</button>
				</td>
				</tr>
				</tfoot>
			</table>
			</div>
		</section>
	</form>
<%@include file="/footer.jsp" %>
</body>
</html>