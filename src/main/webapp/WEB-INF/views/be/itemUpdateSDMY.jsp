<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="beHeader.jsp" %>
<c:set value="${dto}" var="dto"></c:set>

<h2>itemUpdateSDMY.jsp 입니당</h2>

업체명 : ${dto.sdmy_be }<br>
업체종류 : ${dto.sdmy_category}<br>
평균이용가격 : ${dto.sdmy_avg}<br>
조회수 : ${dto.readnum}<br>
상담수 : ${dto.consult}<br>
<img alt="thumbnail" src="${dto.sdmy_thumbnail}" width="20%"><br>
 
<img alt="img" src="${dto.sdmy_img1}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img2}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img3}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img4}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img5}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img6}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img7}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img8}" width="20%"><br>
</body>
</html>