<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<script type="text/javascript" src="js/html2canvas.js"></script>
<title>Love is staying</title>
</head>
<%@include file="/header.jsp" %>
<style>
	section{
		text-align: center;
		margin-left:100px;
		margin-right:100px;
		height: 1200px;
		
	}
	.rounded {border-radius:100em!important;}
.darkGrey {
  background:#595770;
  color:#fff;
  border:none;
  font-size:15px;
  width: 80px;
}
	.textda{
	
	}
	.imgda{
	position:absolute;  cursor:pointer; cursor:hand;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>

<script>
function capture() {
        html2canvas($("#canv"), {
              onrendered: function(canvas) {
                $("#imgSrc").val(canvas.toDataURL("image/png"));
                $.ajax({ 
	                type : "post",
	                data : $("form").serialize(),
                    url:   "imgsave.we?name=${sname}",
                    error: function(a, b, c){ 
                        alert("fail");
                    }, 
                    success: function (data) {
                        try{
                        	alert(",,");
                        }catch(e){                
                            alert('server Error!');
                        }
                    }
                });
              }
        });
    }
    function textplus(){
    	document.getElementById("ptext1").value=document.getElementById("text1").value
    	document.getElementById("ptext2").value=document.getElementById("text2").value
    	document.getElementById("ptext3").value=document.getElementById("text3").value
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
     document.onmouseup = null;
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
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
  };
  var loadFile2 = function(event) {
	    var output = document.getElementById('output2');
	    output.src = URL.createObjectURL(event.target.files[0]);
	  };
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
<body>
<section>
<br>
<img src="mobile_img/mobile.JPG" width="100%">
<br><br>
<div class="cardcontainer">
	<div id="left" style="text-align: center;">
		
	</div>
	<br>
	<img style="left:55px; top:620px;" src="mobile_img/imgselect.png" width="450" height="600" class="imgda"  border="0">
	<img style="left:880px; top:652px;" src="mobile_img/what.png" onmousedown="startDrag(event, this)" width="270"  height="520" class="imgda"  border="0">
	<div id="right">
		<form>
			<input type="hidden" name="imgSrc" id="imgSrc" />
			<br>
			<font style="text-align: right; float: right; margin-right: 50px;">모바일 청첩장 보여지는 영역</font><br>
		    <div id="canv" style="float:right; height: 500px; width: 250px; margin-right: 22px; margin-top: 30px;">
		    <img style="left:890px; top:660px;" src="mobile_img/123.png" width="250"  height="500" class="imgda" border="0">
				
	    		<img style="left:890px; top:912px;" src="order_img/${filename }" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
				<img style="left:220px; top:1034px;" src="mobile_img/KUBA04.jpg" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
				<img style="left:152px; top:976px;" src="mobile_img/31399058_IBHaG9w5_01.jpg" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
				<img style="left:112px; top:930px;"src="mobile_img/31399058_k39re2vx_14.jpg" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
				<img style="left:80px; top:876px;" src="mobile_img/artiz02.jpg" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
	    		<img style="left:110px; top:672px;" src="mobile_img/1.JPG" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
	    		<img style="left:106px; top:710px;" src="mobile_img/ex1.jpg" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
	    		<img style="left:146px; top:736px;" src="mobile_img/3.JPG" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
	    		<img style="left:160px; top:766px;" src="mobile_img/4.JPG" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0">
	    		<input type="text" id="ptext1" class="textda" 
				style="position:absolute; left:800px; top:700px; cursor:pointer; cursor:hand;
						border: 0px;  background-color: #ffffff;
					    background: transparent;"
				 onmousedown="startDrag(event, this)">
	    		<input type="text" id="ptext2"class="textda" 
				style="position:absolute; left:800px; top:750px; cursor:pointer; cursor:hand;
						border: 0px;  background-color: #ffffff;
					    background: transparent;"
				 onmousedown="startDrag(event, this)">
	    		<input type="text" id="ptext3"class="textda" 
				style="position:absolute; left:800px; top:800px; cursor:pointer; cursor:hand;
						border: 0px;  background-color: #ffffff;
					    background: transparent;"
				 onmousedown="startDrag(event, this)">
	    	</div>
		<input type="button" value="Next" onclick="capture()" class="btn btn-outline-disabled" style="margin-left: 100px;">
		</form>
		<div style="position:absolute; left:500px; top:700px; text-align: left;">
		
		문구 1 : <input type="text" id="text1">
		 <br><br>
		문구 2 : <input type="text" id="text2">
		<br><br>
		문구 3 : <input type="text" id="text3""><br><br>
		<input type="button" onclick="textplus()" class="darkGrey rounded"  value="문구 삽입">
		</div>
		<!-- <img style="left:198px; top:798px;" src="mobile_img/5.JPG" width="250" class="imgda" onmousedown="startDrag(event, this)" border="0"> -->
	</div>
</div>
		
<br>





<input type="button" value="텍스트 추가">
</section>
</body>
<%@include file="/footer.jsp" %>
</html>