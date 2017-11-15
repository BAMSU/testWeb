<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${empty sname }">
	<script>
		window.alert('로그인후 이용이 가능합니다.');
		location.href='index.we';
		
	</script>
</c:if>

<section>
	<article>	
	<h2 align="center">포토(REVIEW)후기 등록하기</h2>
	
	<form name="review_upload" action="hallReviewWrite.we" method="post" >




		<table  align="center"  style="width:600px;"  >
	<tr>
			<td  colspan ="3" style="width:600px;" ><hr></td>
		
		</tr>
		<tr>
			<td style=" font-size:10px; width:50px;"><b>WRITER</b></td><td><input type="text" name="writer"  size="40" style="font-size:12px;"></td>
			
		</tr>
		<tr>
			<td style=" font-size:10px; width:50px;"><b>SUBJECT</b></td><td><input type="text" name="subject" size="85"  style="font-size:12px;"></td>
			
		</tr>
		<tr>
			<td  colspan ="3" style="width:600px;" ><hr></td>
			
		
		</tr>

	
	
	
	</table>
	<table  align="center"    style="width:600px;" >
		<tr>
		<td align="left" style="width:200px; font-size: 12px;"><b>Hall NAME</b> | <input type="text" name="name" readonly="readonly" value="${hallInfo.name }" > <!--  value="${hallName}"--></td>
		<td align="left" colspan="2" style="widtj:350px; font-size:12px;"><b>Hall_id</b> |  <input type="text" name="room_idx"  value="${hall_idx}" readonly="readonly"  ></td>
					
		</tr>
	</table>
	<table  align="center"   style="width:600px;" >
		<tr>
		<td style="width: 150px;  font-size: 12px;"><b>  홀 평점</b></td>
		
		<td colspan="2">
		

		<lable>시설 | </lable><select name="avg1">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			
			</select>
			<lable>교통 | </lable><select name="avg2">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			
			</select>
			<lable>음식 | </lable><select name="avg3">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			
			</select>
			<lable>가격 | </lable><select name="avg4">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			
			</select>
			<lable>서비스 | </lable><select name="avg5">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			
			</select>
			</td>
		</tr>
		<tr>
			<td  colspan ="3" style="width:600px;" ><hr></td>
		</tr>
		 
		<tr>
			<td colspan="3">CONTENT...</td>
		</tr>
		<tr>
			<td colspan="3">
					<textarea row="10" cols="45 "name="content" style="height:200px; width: 600px;" ></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="right">
		
			<input type="reset" value = "다시작성" style="background: #FFFFFF;outline:none; border:0;color: #000000;  ">
			<input type="submit" value = "작성하기" style="background: #000000;outline:none; border:0;color: #FFFFFF; ">
		
			</td>
	
		</tr>
		
	
	</table>
	
			
	</form>
		
	</article>
	

</section>

</body>
</html>