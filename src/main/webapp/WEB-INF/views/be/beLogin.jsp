<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<title>Insert title here</title>
<script type="text/javascript">
function beJoin(){
	location.href="beJoin.we";
}
</script>
</head>
<body style="background-image: url('upload/beBackGround.jpg'); opacity: 0.7; background-size: cover;">
<c:if test="${!empty sessionScope.besid }">
	<script type="text/javascript">
		location.href="beIndex.we";
	</script>
</c:if>
<br><br><br><br>
<br><br><br><br>

<div style="width:40%;margin:auto;align:center;
border:4px double pink;background: white;
border-radius:30px;padding: 50px;">

    <form action="beLogin.we" method="post">
    
    <div class="form-group">
      <label for="exampleInputPassword1">Id</label>
      <input type="text" class="form-control" id="id" placeholder="id" name="be_id" required>
    </div>
	<div class="form-group">
      <label for="exampleInputPassword1">password</label>
      <input type="password" class="form-control" id="pwd" placeholder="Password" name="be_pwd" required>
    </div>
    <div style="margin:auto; width:fit-content;">
    
		<button type="submit" class="btn btn-primary">로그인</button>
		<input type="button" value="업체등록신청" onclick="beJoin()" class="btn btn-primary">
	</div>
	</form>
</div>

</body>
</html>





