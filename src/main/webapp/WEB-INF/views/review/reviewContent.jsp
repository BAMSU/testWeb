<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>홀에 대한 정보</h2>
<table>
	
	<tr>
		<td><img src="/myweb/hall/${dto.room_idx}/r1.jpg" style="width: 250px;;height: 250px" /></td>
		<td>홀 이름</td>
		<td>${hallInfo.name }</td>
	</tr>
	<tr>
		
	
	</tr>

</table>

<h2>홀 REVIEW 본문보기</h2>
<table border="1" cellspacing="0" width="450">
	<tr>
		<td>번호</td>
		<td>${dto.review_idx}</td>	
		<td>글쓴이</td>
		<td>${dto.writer }</td> 
		
		
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="3">${dto.subject}</td>
		
	</tr>
	<tr>
		<td colspan="4"><lable>내용</lable><br>${dto.content }</td>
	</tr>
	
	<tr>
		<td>
		<a href="index.we">목록으로</a>
		
		</td>
	</tr>
</table> 
</body>
</html>