<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<style>
[type="date"] {
  background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}

/* custom styles */
body {
  padding: 4em;
  font: 13px/1.4 Geneva, 'Lucida Sans', 'Lucida Grande', 'Lucida Sans Unicode', Verdana, sans-serif;
}

input{
  border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
 
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>

<br>
<br>
	<div style=" width:70%; margin:auto; border:3px solid  #D8D8D8; padding:10px; align-content: center; border-radius: 10px;">
	
<h2 align="center" style="color: #D8D8D8; ">문의 /상담 수정</h2>
<form name="consult" action="consultUpdate.we">
	<input type="hidden" name="idx" value="${idx}" >
<table align="center" >
	<tr>
	<td colspan="1" >이름</td>
	<td colspan="3" ><input type="text" name="name" value="${sname }"readonly="readonly" style="width: 430px; "></td> 
	<td>
		 <input type="radio" value="1" name="gender" >남자
		 <input type="radio" value="2" name="gender" >여자
		</td> 
		 
		
	</tr>
	
	
	<tr>
	<td colspan="5"><hr></td>
	</tr>
	<tr><td colspan="1">전화번호</td><td colspan="4"><select name="tel1"  style="width: 150px;">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
				<option value="070">070</option>
			</select> - <input type="text"  name="tel2" maxlength="4"> - <input type="text" name="tel3" maxlength="4"></div>
		</td>
		</tr>	
		<tr>
	<td colspan="5"><hr></td>
	</tr>
		<tr><td colspan="1">이메일</td><td colspan="4"><input type="text" name="email"> @ 
			<select name="email2">
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="nate.com">nate.com</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
			</select>
		</td>
	
		</tr>	
		<tr>
	<td colspan="5"><hr></td>
	</tr>
		<tr>  
		<td colspan="1">결혼예정일 </td>
		<td colspan="4">
		<input type="date" name="reservation" id="dateofbirth" style="width: 189px;">
		
		</td>
		</tr>
		
		<tr>
	<td colspan="5"><hr></td>
	</tr>
		<tr>
		
		
			<td colspan="5"> 
			<textarea rows="15" cols="45" name="context" style="width: 600px;" >
			
			</textarea>
		
	
		
		</tr>
		<tr><td colspan="5" align="right">
		<input type="reset" value="다시작성"  class="btn btn-secondary">
		<input type="submit"value="수정하기" class="btn btn-primary"  style="size: 150px; " >
		
		</td>
		</tr>
	
	
</table>	
</form>
</div>
<br>
<br>
<%@include file="/footer.jsp" %>
</body>
</html>