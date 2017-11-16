<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript"> 
$(document).ready(function(){
	$("#execute").click(function(){
		url = "/main/createCode.we";
		var content = $("#content").val();
		$("#img").attr("src", url+"?content="+content); 
		}); 
	});
</script>

<body>
<div> <input id="content" type="text" name="content"/> 
<input type="button" id="execute" value="QR코드생성"/> 
<img id="img" style="display:none" onload="this.style.display='block'"/> </div>

</body>
</html>