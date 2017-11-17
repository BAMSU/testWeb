<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show() {
	var a = document.fm.test.value;
	var flag1 = 0;
	var flag2 = 0;
	var flag3 = 0;
	
	for(i=0;i<a.length;i++) {
		msg = a.charCodeAt(i);
		if(48 <= msg && msg <= 57) {
			flag1 = 1;
		}
		if(65 <= msg && msg <= 90) {
			flag2 = 1;
		}
		if(97 <= msg && msg <= 122) {
			flag3 = 1;
		}
	}
	var flag4 = flag1+flag2+flag3;
	
	if(flag4<3) {
		window.alert('모두 비밀번호를 섞어주세요.');
	}
	
	
}
</script>
</head>
<body>
<h2>관리자 전용 페이지</h2>
<h3><a href="wdList.we">웨딩홀관리</a>/<a href="acon.we?type=0">문의게시판</a></h3> 
<form name="fm">
<input type="text" name="test">
<input type="button" value="test" onclick="show()">
</form> 
</body>
</html>