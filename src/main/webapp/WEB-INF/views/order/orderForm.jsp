<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>매장 주문 프로그램</h2>
<form name="order" action="order.do" method="post">
상품1:상품이름-<input type="text" name="itemdto[0].title">/
개수-<input type="text" name="itemdto[0].num">/
비고-<input type="text" name="itemdto[0].bigo"><br>
상품2:상품이름-<input type="text" name="itemdto[1].title">/
개수-<input type="text" name="itemdto[1].num">/
비고-<input type="text" name="itemdto[1].bigo"><br>
상품3:상품이름-<input type="text" name="itemdto[2].title">/
개수-<input type="text" name="itemdto[2].num">/
비고-<input type="text" name="itemdto[2].bigo"><br>

주문매장:<input type="text" name="marketdto.marketname"><br>
주문번호:<input type="text" name="marketdto.markettel"><br>
<input type="submit" value="주문하기">
</form>
</body>
</html>