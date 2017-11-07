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

<h2>itemDetailSDMY.jsp 입니당</h2>

<c:set value="${dto}" var="dto"></c:set>
${dto.sdmy_be }
${dto.sdmy_category}
${dto.sdmy_avg}
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