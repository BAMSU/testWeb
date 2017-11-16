<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show() {
	
	var chk1 = 0;
	var chk2 = 0;
	
	
	for(i=0;i<document.fm.hallType1.length;i++){
		if(document.fm.hallType1[i].checked) {
			chk1 = chk1 + 1;
		}
	}
	for(i=0;i<document.fm.hallType2.length;i++){
		if(document.fm.hallType2[i].checked) {
			chk2 = chk2 + 1;
		}
	}
	
	if(chk1==0||chk2==0) {
		window.alert('웨딩홀 타입을 선택해주세요.');
	} else {
		
		var flag1 = 0;
		var flag2 = 0;
		var msg1 = '';
		
		for(i=0;i<document.fm.hallType1.length;i++){
			if(document.fm.hallType1[i].checked) {
				if(flag1>0) {
					msg1=msg1+',';
				}
				msg1= msg1+document.fm.hallType1[i].value;
				flag1 = flag1 + 1;
			}
		}
		msg1 = msg1 + '/';
		
		for(i=0;i<document.fm.hallType2.length;i++){
			if(document.fm.hallType2[i].checked) {
				if(flag2>0) {
					msg1=msg1+',';
				}
				
				msg1= msg1+document.fm.hallType2[i].value;
				flag2 = flag2 + 1;
			}
		}
		document.fm.type.value=msg1;
		
		var chk3 = 0;
		
		
		for(i=0;i<document.fm.menu1.length;i++){
			if(document.fm.menu1[i].checked) {
				chk3 = chk3 + 1;
			}
		}
		
		if(chk3==0) {
			window.alert('메뉴를 선택해주세요.');
		} else {
			
			var flag3 = 0;
			var msg2 = '';
			
			for(i=0;i<document.fm.menu1.length;i++){
				if(document.fm.menu1[i].checked) {
					if(flag3>0) {
						msg2=msg2+',';
					}
					msg2= msg2+document.fm.menu1[i].value;
					flag3 = flag3 + 1;
				}
			}
			
			document.fm.menu.value=msg2;
			
			fm.submit();
		}
	}
	
	
	
	
	
}
</script>
</head>
<body>
<form name="fm" action="updateRoom.we" method="POST">
<c:forEach var="dto" items="${list}">
룸 이름 : <input type="text" name="name" value="${dto.name}"> <br>
영업일자 : <input type="text" name="weekDay" value="${dto.weekDay}"> <br>
<input type="hidden" name="type" value="${dto.type}"> <br>

예식타입 :  <input type="checkbox" name="hallType1" value="동시">동시  <input type="checkbox" name="hallType1" value="분리">분리  <br>
<input type="checkbox" name="hallType2" value="하우스">하우스  <input type="checkbox" name="hallType2" value="웨딩홀">웨딩홀  
<input type="checkbox" name="hallType2" value="호텔">호텔 <br>
하객수 : <input type="text" name="guest" value="${dto.guest}"> <br>
예식간격 : <input type="number" name="interval" value="${dto.interval}"> <br>
<input type="hidden" name="menu" value="${dto.menu}"> <br>
음식메뉴 : <input type="checkbox" name="menu1" value="한식">한식  <input type="checkbox" name="menu1" value="양식">양식
<input type="checkbox" name="menu1" value="뷔페">뷔페  <input type="checkbox" name="menu1" value="퓨전코스">퓨전코스 <br>
음식가격 : <input type="text" name="menuPrice" value="${dto.menuPrice}"> <br>
<input type="hidden" name="idx" value="${idx}"> <br>
<input type="hidden" name="hallIdx" value="${dto.hallIdx}"> <br>

<input type="button" value="등록하기" onclick="show()">
<input type="button" onclick="javascript:location.href='roomList.we?idx=${idx}'" value="뒤로가기">
</c:forEach>
</form>
</body>
</html>