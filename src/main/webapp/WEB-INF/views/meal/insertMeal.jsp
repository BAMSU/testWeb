<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name = "fm" action="insertMeal.we" method="POST">
<input type="text" name="hall_idx" value="${idx}">
홀 이름 : <input type="text" name="hall_name" placeholder="뷔페"> <br>
하객수 : <input type="number" name="est_guest" placeholder="50,000원"> <br>
대관비 : <input type="number" name="hall_price1" placeholder="고가의 뷔페"> <br>
홀 설명 : <input type="text" name="hall_content" placeholder="고가의 뷔페"> <br>
Ourfit : <input type="number" name="ourfit_price" placeholder="고가의 뷔페"> <br>
룸1 식사종류 : <input type="text" name="meal" placeholder="고가의 뷔페"> <br>
룸2 식사종류 : <input type="text" name="meal_1" placeholder="고가의 뷔페"> <br>
룸1 식사비 : <input type=number name="meal_price" placeholder="고가의 뷔페"> <br>
룸2 식사비: <input type="number" name="meal_price2" placeholder="고가의 뷔페"> <br>
룸1 식사설명 : <input type="text" name="meal_content" placeholder="고가의 뷔페"> <br>
홀2 식사설명: <input type="text" name="meal_content2" placeholder="고가의 뷔페"> <br>
<input type="submit" value="견석서 등록하기">
</form>
</body>
</html>