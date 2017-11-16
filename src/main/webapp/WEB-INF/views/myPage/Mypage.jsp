<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>마이페이지</h2>

<c:url var="contentUrl" value="myPage_Like.we"><c:param name="name">${sname}</c:param></c:url>
     <a href="${contentUrl}">관심상품 리스트</a>
<c:url var="contentUrl2" value="myPage_Review.we"><c:param name="writer">${sname}</c:param></c:url>
     <a href="${contentUrl2}">나의 리뷰 리스트</a>
<c:url var="contentUrl3" value="myPage_Ask.we"><c:param name="name">${sname}</c:param></c:url>
     <a href="${contentUrl3}">문의 리스트</a>
</body>
</html>