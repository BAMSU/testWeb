<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Print</title>
<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
</head>
<body>
<div id="canvas_div">
	여기에 정보를 입력한걸 ㅜㄹ...제발..되라...
</div>
<a onclick="makeShare()">얍</a>
<script>
	function makeShare(){
		element = $(".canvas_div");
		html2canvas(element,{
			onrendered : function(canvas){
				getCanvas = canvas;
				upload();
			}
		})
	}
	function upload(){
		var imageData = getCanvas.toDataURL("image/png");
		var formData = new FormData();
		formData.append('file', imageData);
		
		$.ajax({
			url : 'imgsave2.do',
			type:"POST",
			dataType : "json",
			data : formData,
			processData : false,
		contentType:false,
		success:function(data){
			
		},
		error : function(requestmstatus, error){
			console.log(request,status,error);
		}
		})
	}
</script>
</body>
</html>