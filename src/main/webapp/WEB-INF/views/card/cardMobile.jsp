<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<script type="text/javascript" src="js/html2canvas.js"></script>
<title>Insert title here</title>
</head>
<%@include file="/header.jsp" %>
<style>
	body{
		text-align: center;
		margin-left:100px;
		margin-right:100px;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>

<script>
function capture() {
    alert("ㅎㅇ");
        html2canvas($("#canv"), {
              onrendered: function(canvas) {
                $("#imgSrc").val(canvas.toDataURL("image/png"));
                $.ajax({ 
	                type : "post",
	                data : $("form").serialize(),
                    url:   "imgsave.we",
                    error: function(a, b, c){ 
                        alert("fail");
                    }, 
                    success: function (data) {
                        try{
                        	alert("성공~><ㅎ");
                        }catch(e){                
                            alert('server Error!');
                        }
                    }
                });
              }
        });
    }
 </script>
 
 <script>
var img_L = 0;
var img_T = 0;
var targetObj;

function getLeft(o){
     return parseInt(o.style.left.replace('px', ''));
}
function getTop(o){
     return parseInt(o.style.top.replace('px', ''));
}

// 이미지 움직이기
function moveDrag(e){
     var e_obj = window.event? window.event : e;
     var dmvx = parseInt(e_obj.clientX + img_L);
     var dmvy = parseInt(e_obj.clientY + img_T);
     targetObj.style.left = dmvx +"px";
     targetObj.style.top = dmvy +"px";
     return false;
}

// 드래그 시작
function startDrag(e, obj){
     targetObj = obj;
     var e_obj = window.event? window.event : e;
     img_L = getLeft(obj) - e_obj.clientX;
     img_T = getTop(obj) - e_obj.clientY;

     document.onmousemove = moveDrag;
     document.onmouseup = stopDrag;
     if(e_obj.preventDefault)e_obj.preventDefault(); 
}

// 드래그 멈추기
function stopDrag(){
     document.onmousemove = null;
     document.onmouseup = nll;
}
function draw() {
    var canvas = document.getElementById("canvas");
    if (canvas.getContext) {
      var ctx = canvas.getContext("2d");

      ctx.fillStyle = "rgb(200,0,0)";
      ctx.fillRect (10, 10, 50, 50);

      ctx.fillStyle = "rgba(0, 0, 200, 0.5)";
      ctx.fillRect (30, 30, 50, 50);
    }
  }
</script>
<script>
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }
        
        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function(){
    readURL(this);
});
</script>
<style>
	#img{
	width: 30%; 
	background: url("card_img/phoneimg.png"); 
	height: 800px;"
	}
	
	#left{
		width: 30%;
		height:600px;
		float: left;
	}
	#right{
		width: 70%;
		height:600px;
		float: right;
	
	}
</style>
<body style="text-align: center;">
<br>
<img src="card_img/mobile.JPG" width="80%">
<br><br>
<div style="width: 100%; height: 600px;">
	<div id="left">
		<input type="file" accept="image/*" onchange="loadFile(event)">
		<input type="file" accept="image/*" onchange="loadFile2(event)">
	</div>
	
	<div id="right">
		<form>
			<input type="hidden" name="imgSrc" id="imgSrc" />
				
		    <div id="canv" style="background-color: yellow; height: 600px; width: 300px; margin-left: 200px;">
		   		<img src="order_img/${filename }" width="300" style="position:absolute; left:300px; top:800px; cursor:pointer; cursor:hand" onmousedown="startDrag(event, this)" border="0">
	    	</div>
		<input type="button" value="제작하기" onclick="capture()">
		</form>
	</div>
</div>
		
<input type="button" value="이미지 추가">
<br>



<img id="output" width="300" style="position:absolute; left:200px; top:900px; cursor:pointer; cursor:hand" onmousedown="startDrag(event, this)" border="0">
<img id="output2" width="300" style="position:absolute; left:200px; top:600px; cursor:pointer; cursor:hand" onmousedown="startDrag(event, this)" border="0">
<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
  };
  var loadFile2 = function(event) {
	    var output = document.getElementById('output2');
	    output.src = URL.createObjectURL(event.target.files[0]);
	  };
</script>
<input type="button" value="텍스트 추가">
</body>
<%@include file="/footer.jsp" %>
</html>