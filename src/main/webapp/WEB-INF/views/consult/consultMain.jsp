<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<link href="https://fonts.googleapis.com/css?family=Montez"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

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
  background: #e5e5e5;

  font: 13px/1.4 Geneva, 'Lucida Sans', 'Lucida Grande', 'Lucida Sans Unicode', Verdana, sans-serif;
}
label {
  display: block;

  

}
input{
  border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
 
}

</style>
</head>
<body>
	
<%@include file="/header.jsp"%>
<br>
<br>
<div style=" width:70%; margin:auto; border:3px solid  #D8D8D8; padding:10px; align-content: center; border-radius: 10px;">

<h2 align="center">문의 / 상담하기</h2>
<form name="consult" action="consultSubmit.we" >
<c:if test="${empty sname }">
	<script>
		window.alert('로그인후 이용이 가능합니다.');
		location.href='index.we';
	</script>
</c:if>

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
			</td>
			<td>
			<input type="hidden" name="gubun"  value="${gubun}" > 
			<input type="hidden" name="gubun2" value="${idx}" >
			</td>
		</tr>
		<tr><td colspan="5" align="right">
		<input type="reset" value="다시작성"  class="btn btn-secondary">
		<input type="submit"value="문의하기" class="btn btn-primary"  style="size: 150px; " >
		
		</td>
		</tr>
	
	
</table>	
</form>
</div>
<br>
<br>
<%@include file="/footer.jsp"%>
</body>
</html>