<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
img{
	width: 50px;
}
/**별관련 css*/
.rating {
			width: 90px;
			margin: 0 auto 1em;
			font-size: 15px;
			overflow:hidden;
		}
.rating input {
  float: left;
  opacity: 0;
  position: absolute;
}
.rating a,
.rating label {
			float: right;
			color: #aaa;
			text-decoration: none;
			-webkit-transition: color .4s;
			-moz-transition: color .4s;
			-o-transition: color .4s;
			transition: color .4s;
		}

.rating input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) label:hover, /* hover current star */
.rating:not(:checked) label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating input:checked + label:hover, /* hover current star when changing rating */
.rating input:checked ~ label:hover,
.rating label:hover ~ input:checked ~ label, /* lighten current selection */
.rating input:checked ~ label:hover ~ label { color: #FFED85;  } 



</style>

<body>

<c:if test="${empty sname }">
	<script>
		window.alert('로그인후 이용이 가능합니다.');
		location.href='index.we';
		
	</script>
</c:if>



<section>
	<article>	
	<h2 align="center">홀(REVIEW)후기 등록하기</h2>
	
	<form name="review_upload" action="hallReviewWrite.we" method="post" >




		<table  align="center"  style="width:600px;"  >
	<tr>
			<td  colspan ="3" style="width:600px;" ><hr></td>
		
		</tr>
		<tr>
			<td style=" font-size:10px; width:50px;"><b>WRITER</b></td><td><input type="text" name="writer" value="${sname}" readonly="readonly"  size="40" style="font-size:12px;"></td>
			
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
			<td  colspan ="3" border="1" style="width:600px;" ><hr></td>
			
		</tr>
		<tr>
		<td colspan="3" style="width: 150px;  font-size: 12px;"><b>  홀 평점</b></td>
		
		</tr>
		
		<tr>
		

				<td class="rating" style="font-size: 15px;">
				시설 |
				  	<input name="avg1" id="e5" value="5" type="radio"><label for="e5">★</label>
					<input name="avg1" id="e4" value="4" type="radio"><label for="e4">★</label>
					<input name="avg1" id="e3" value="3" type="radio"><label for="e3">★</label>
					<input name="avg1" id="e2" value="2" type="radio"><label for="e2">★</label>
					<input name="avg1" id="e1" value="1" type="radio"><label for="e1">★</label>
				</td>
			
			
				<td class="rating" style="font-size: 15px;">
				교통 | 
				  	<input name="avg2" id="a5" value="5" type="radio"><label for="a5">★</label>
					<input name="avg2" id="a4" value="4" type="radio"><label for="a4">★</label>
					<input name="avg2" id="a3" value="3" type="radio"><label for="a3">★</label>
					<input name="avg2" id="a2" value="2" type="radio"><label for="a2">★</label>
					<input name="avg2" id="a1" value="1" type="radio"><label for="a1">★</label>
				</td>
			
			
					<td class="rating" style="font-size: 15px;">
					
				음식 |
				  	<input name="avg3" id="b5" value="5" type="radio"><label for="b5">★</label>
					<input name="avg3" id="b4" value="4" type="radio"><label for="b4">★</label>
					<input name="avg3" id="b3" value="3" type="radio"><label for="b3">★</label>
					<input name="avg3" id="b2" value="2" type="radio"><label for="b2">★</label>
					<input name="avg3" id="b1" value="1" type="radio"><label for="b1">★</label>
				</td>
				</tr>
				<tr>
		
			<td class="rating" style="font-size: 15px;">
				<lable>가격 | </lable>
				  	<input name="avg4" id="c5" value="5" type="radio"><label for="c5">★</label>
					<input name="avg4" id="c4" value="4" type="radio"><label for="c4">★</label>
					<input name="avg4" id="c3" value="3" type="radio"><label for="c3">★</label>
					<input name="avg4" id="c2" value="2" type="radio"><label for="c2">★</label>
					<input name="avg4" id="c1" value="1" type="radio"><label for="c1">★</label>
				</td>
			
					<td class="rating" style="font-size: 15px;">
					<lable>서비스 | </lable>
				  	<input name="avg5" id="d5" value="5" type="radio"><label for="d5">★</label>
					<input name="avg5" id="d4" value="4" type="radio"><label for="d4">★</label>
					<input name="avg5" id="d3" value="3" type="radio"><label for="d3">★</label>
					<input name="avg5" id="d2" value="2" type="radio"><label for="d2">★</label>
					<input name="avg5" id="d1" value="1" type="radio"><label for="d1">★</label>
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
			<input type="submit" value = "작성하기" id="checkbtn" style="background: #000000;outline:none; border:0;color: #FFFFFF; ">
		
			</td>
	
		</tr>
		
	
	</table>
	
			
	</form>
		
	</article>
	

</section>

</body>
</html>