<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addImage.we" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td style="vertical-align: top;">홀 사진</td>
		<td>
			룸1-1<input type="file" name="hall_img" required><br> 
			룸1-2<input type="file" name="hall_img" required><br> 
			룸1-3<input type="file" name="hall_img" required><br> 
			훔2-1<input type="file" name="hall_img" required><br> 
			훔2-2<input type="file" name="hall_img" required><br> 
			훔2-3<input type="file" name="hall_img" required><br> 
			신부대기실<input type="file" name="hall_img" required><br> 
			폐백실<input type="file" name="hall_img" required><br> 
		</td>
	</tr>
	
	<tr>
		<td>
			<input type="hidden" name="be_sort" value="${sessionScope.besort }">
			<input type="submit" value="등록 신청하기">
		</td>
	</tr>
</table>
</form>

</body>
</html>