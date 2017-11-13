<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
<script>
    function capture() {
    alert("ㅎㅇ");
        html2canvas($("#canv"), {
              onrendered: function(canvas) {
                $("#imgSrc").val(canvas.toDataURL("image/png"));
                $.ajax({
	                type : "post",
	                data : $("form").serialize(),
                    url:   "imgsave2.we",
                    error: function(a, b, c){ 
                        alert("fail");
                    }, 
                    success: function (data) {
                        try{
                        	alert("성공~><ㅎ");
                        	location.href="cardOrder.we?idx="+${idx }+"&filename="+data.filename;
                        	
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
	function setChildValue(name){
	      document.getElementById("insamal").value = name;
	      document.getElementById("tinsamal").value = name;
	}
</script>
     <script>
      function insa(){
    	  window.open('insa.we','인사말',"width=300,height=500");
      }
      function hongu(){
    	  window.open('hongu.we','혼주',"width=300,height=400");
      }
      function place(){
    	  window.open('place.we','식장위치',"width=500,height=400");
      }
      function inpu(){
    	  var go1 = document.getElementById('nmgo').checked;
    	  var go2 = document.getElementById('nbgo').checked;
    	  var go3 = document.getElementById('ymgo').checked;
    	  var go4 = document.getElementById('yygo').checked;
    	  go1?go1="故":go1="";go2?go2="故":go2="";go3?go3="故":go3="";go4?go4="故":go4="";
    	  var nam = go1 + document.getElementById('nmma').value + "。 " +go2 + document.getElementById('nbba').value + '의 '+ document.getElementById('nam').value;
    	  var ya = go3 + document.getElementById('ymma').value + "。 " +go4 + document.getElementById('ybba').value + '의 ' + document.getElementById('yu').value;
    	  document.getElementById("tinsamal").value = document.getElementById("insamal").value;
    	  document.getElementById('tnam').value = nam;
    	  document.getElementById('tyu').value = ya;
    	  document.getElementById('tplace').value = document.getElementById("mapplace").value;
      	document.getElementById("tdate").value=document.getElementById("datepicker").value;
      }
    </script>
<style>
body{
		margin-left:100px;
		margin-right:100px;
	}
.left-box {
  float: left;
  width: 50%;
}
.right-box {
  float: right;
  width: 50%;
}
</style>
</head>
<body>
<form>
<div class='left-box'>
	<div>
	<h3 style="text-align: center;">PREVIEW</h3>
		<P>고객님의 주문을 돕기 위한 미리보기 화면으로 실제 인쇄물과는 다를 수 있습니다.
		정확한 인쇄(초안) 화면은 주문진행 후 “초안보기”에서 확인하실 수 있습니다.</P>
	</div>
	
	<input type="hidden" name="imgSrc" id="imgSrc" />
    
    <div id="canv" style="color: blue; background: white;">
        <input type="text" id="tinsamal">
		<input type="text" id="tnam">
		<input type="text" id="tyu">
		<input type="text" id="tdate">
		<input type="text" id="tplace">
    </div>
    
    
      
</div>
<div class='right-box'>
	<div>
		인사말  <a onclick="insa()">인사말 찾기</a>
		<hr>
		<textarea rows="4" cols="50" id="insamal" onchange="inpu()"></textarea>
	</div>
	
		신랑정보  <a onclick="hongu()"> 혼주서열 표기법</a>
		<hr>
	<div style="float: left; width:50%">
		고인 <input type="checkbox" id="nmgo" onchange="inpu()"> <input type="text" id="nmma"onchange="inpu()" width="30"onchange="inpu()" required placeholder="혼주성함(부)"> <br>
		고인 <input type="checkbox" id="nbgo" onchange="inpu()"> <input type="text" id="nbba" onchange="inpu()"width="30" required placeholder="혼주성함(모)">
	</div>
	<div style="float: right; width:50%">
		의 <select>
			<option>관계</option>
			<option>장남</option>
			<option>차남</option>
			<option>삼남</option>
			<option>사남</option>
			<option>막내</option>
			<option>질자</option>
			<option>손자</option>
			<option>아들</option>
		</select> <input type="text" id="nam" width="50">
	</div>
	<br><br><br>
		신부정보
		<hr>
	<div style="float: left; width:50%">
		고인 <input type="checkbox" value="故" id="ymgo" onchange="inpu()"> <input type="text" id="ymma" onchange="inpu()" required placeholder="혼주성함(부)" width="30" > <br>
		고인 <input type="checkbox" value="故" id="yygo" onchange="inpu()"> <input type="text" id="ybba" onchange="inpu()" required placeholder="혼주성함(모)" width="30">
	</div>
	<div style="float: right; width:50%">
		의 <select>
			<option>관계</option>
			<option>장녀</option>
			<option>차녀</option>
			<option>삼녀</option>
			<option>사녀</option>
			<option>막내</option>
			<option>질녀</option>
			<option>손녀</option>
			<option>딸</option>
		</select> <input type="text" id="yu" width="50">
	</div>
	<br><br><br>
	<div>
		예식일시
		<br>
		  Date: <input type="text" id="datepicker" onchange="inpu()"/>
		<script> $(document).ready(function() { $("#datepicker").datepicker(); }); </script> <div id="datepicker"></div> 
		
	</div>
	<div>
		식장정보
			<input type="text" id="mapplace" onclick="place()">
	</div>
	<input type="text" id="filename" >
	<a onclick ="capture()">Next</a>
</div>
</form>
</body>
</html>