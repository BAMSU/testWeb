<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
<%@include file="/header.jsp" %>
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
	function setpValue(name){
	      document.getElementById("hallplace").value = name;
	}
	function setnValue(name){
	      document.getElementById("hallname").value = name;
	}
</script>
     <script>
      function insa(){
    	  window.open('insa.we','인사말',"width=300,height=500");
      }
      function hongu(){
    	  window.open('hongu.we','혼주',"width=500,height=400");
      }
      function place(){
    	  window.open('place.we','식장위치',"width=500,height=400");
      }
      function inpu(){
    	  var go1 = document.getElementById('nmgo').checked;
    	  var go2 = document.getElementById('nbgo').checked;
    	  var go3 = document.getElementById('ymgo').checked;
    	  var go4 = document.getElementById('yygo').checked;
    	  var mo1=document.getElementById('nmma').value;
    	  var ba1 = document.getElementById('nbba').value;
    	  var mba1=document.getElementById('nam').value;
    	  var mo2 = document.getElementById('ymma').value;
    	  var ba2 = document.getElementById('ybba').value;
    	  var mab2 = document.getElementById('yu').value;
    	  var nge=document.getElementById('nge').value;
    	  var yge=document.getElementById('yge').value;
    	  go1?go1="故":go1="";go2?go2="故":go2="";go3?go3="故":go3="";go4?go4="故":go4="";
    	  var mo11;var ba11; var mba11;var mo21; var ba21; var mab21;
    	  mo1!=""?mo11=mo1:mo11="○○○";  ba1!=""?ba11=ba1:ba11="○○○";  mba1!=""?mba11=mba1:mba11="○○○";
    	  mo2!=""?mo21=mo2:mo21="○○○";  ba2!=""?ba21=ba2:ba21="○○○";  mab2!=""?mab21=mab2:mab21="○○○";
    	  
    	  var nam = go1 + mo11  + " · " +go2 + ba11  + '의  '+nge+" "+ mba11;
    	  var ya = go3 + mo21 + " · " +go4 + ba21 + '의  ' +yge+" "+ mab21;
    	  document.getElementById("tinsamal").value = document.getElementById("insamal").value;
    	  document.getElementById('tnam').value = nam;
    	  document.getElementById('tyu').value = ya;
      	document.getElementById("tdate").value=document.getElementById("dateofbirth").value + " " + document.getElementById("sigan").value;
      	
      	document.getElementById("halltype").value=document.getElementById("hall").value
      }
    </script>
<style>

<style>

[type="date"] {
  background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}
body{
	margin-left:100px;
	margin-right:100px;
}
	.left-box {
	color:white;
  float: left;
  width: 50%;
  background-color: gray;
}
.right-box {
  float: right;
  width: 45%;
}
.valu{
		border:0 solid black;
		text-align:center;
		width: 400px;
	}
</style>
</head>
<body>
<form>
<br>
<div class='left-box'>
	<div>
	<h3 style="text-align: center;">PREVIEW</h3><br>
		<P style="font-size: 13px; color:white;  margin-left: 20px; margin-right: 20px;">고객님의 주문을 돕기 위한 미리보기 화면으로 실제 인쇄물과는 다를 수 있습니다.
		정확한 인쇄(초안) 화면은 주문진행 후 “초안보기”에서 확인하실 수 있습니다.</P>
	</div>
	<Br>
	<input type="hidden" name="imgSrc" id="imgSrc" />
    
    <div id="canv" style="text-align:center; color: black; background: white; margin-left: 30px; margin-right: 30px; height: 650px;">
    	<br><br>
        <textarea id="tinsamal" class="valu" style="height: 120px;" readonly></textarea><br>
		<input type="text" id="tnam" value="○○○ · ○○○ 의  - ○○ " class="valu" readonly><br>
		<input type="text" id="tyu" value="○○○ · ○○○ 의  - ○○ " class="valu" readonly><br><br><br>
		<input type="text" id="tdate" class="valu" readonly><br>
		<input type="text" id="tplace" class="valu" readonly><br>
		
				<img src="card_img/hangang.JPG" width="100%"; height="250px;">
				<br>
				<input type="text" class="valu"id="hallname" readonly="readonly"><br>
				<textarea id="hallplace" class="valu" style="height: 20px;" readonly></textarea>
    			<input type="text" class="valu" id="halltype" readonly="readonly">
   	<br><br>
    </div>
    
    <br><br><br>
      
</div>
</form>
<div class='right-box' style="margin-left: 40px;">
	<div>
	<br>
		인사말 <a onclick="insa()"><img src="card_img/insaimg.JPG" width="80px" height="20px"></a>
		<hr>
		<textarea rows="4" cols="50" id="insamal" onchange="inpu()"></textarea>
	</div>
	<br><br>
		신랑정보  <a onclick="hongu()"><img src="card_img/honguimg.JPG"width="95px" height="20px"></a>
		<hr>
	<div style="float: left; width:50%">
		고인 <input type="checkbox" id="nmgo" onchange="inpu()"> <input type="text" id="nmma"onchange="inpu()" style="width: 90px;" onchange="inpu()" required placeholder="혼주성함(부)" > <br>
		고인 <input type="checkbox" id="nbgo" onchange="inpu()"> <input type="text" id="nbba" onchange="inpu()"style="width: 90px;" required placeholder="혼주성함(모)">
	</div>
	<div style="float: right; width:50%">
		의 <select onchange="inpu()" id="nge">
			<option> - </option>
			<option>장남</option>
			<option>차남</option>
			<option>삼남</option>
			<option>사남</option>
			<option>막내</option>
			<option>질자</option>
			<option>손자</option>
			<option>아들</option>
		</select> <input type="text" id="nam" style="width: 90px;" onchange="inpu()">
	</div>
	<br><br><br><br>
		신부정보
		<hr>
	<div style="float: left; width:50%" >
		고인 <input type="checkbox" value="故" id="ymgo" onchange="inpu()"> <input type="text" id="ymma" onchange="inpu()" required placeholder="혼주성함(부)" style="width: 90px;"> <br>
		고인 <input type="checkbox" value="故" id="yygo" onchange="inpu()"> <input type="text" id="ybba" onchange="inpu()" required placeholder="혼주성함(모)" style="width: 90px;">
	</div>
	<div style="float: right; width:50%">
		의 <select onchange="inpu()" id="yge">
		<option> - </option>
			<option>장녀</option>
			<option>차녀</option>
			<option>삼녀</option>
			<option>사녀</option>
			<option>막내</option>
			<option>질녀</option>
			<option>손녀</option>
			<option>딸</option>
		</select> <input type="text" id="yu" style="width: 90px;"onchange="inpu()">
	</div>
	<br><br><br>
	<div>
		예식일시 <br>
		<input type="date" name="reservation" id="dateofbirth" onchange="inpu()">
		<select onchange="inpu()" id="sigan">
				<option>오전1시</option>
					<option>오전2시</option>
					<option>오전3시</option>
					<option>오전4시</option>
					<option>오전5시</option>
					<option>오전6시</option>
					<option>오전7시</option>
					<option>오전8시</option>
					<option>오전9시</option>
					<option>오전10시</option>
					<option>오전11시</option>
					<option>오전12시</option>
					<option>오후1시</option>
					<option>오후2시</option>
					<option>오후3시</option>
					<option>오후4시</option>
					<option>오후5시</option>
					<option>오후6시</option>
					<option>오후7시</option>
					<option>오후8시</option>
					<option>오후9시</option>
					<option>오후10시</option>
					<option>오후11시</option>
					<option>오후12시</option>
		</select>
		
	</div>
	<script>
	function hallser(){
		var sert = document.getElementById("serText").value;
		window.open('placeSer.we?serText='+sert,'홀 검색',"width=600,height=500");
	}
	</script>
	<div>
		식장정보<br>
			예식장 이름 : <input type="text" id="serText">
			<img src="card_img/ser.png" onclick="hallser()" width="30px" height="30px">
	</div>
	층/홀 : <input type="text" id="hall" onchange="inpu()" required placeholder="층과 홀" >
	<br><Br><br>
	<input type="button" class="btn btn-primary" value="Next" onclick ="capture()">

</div>
</body>
<%@include file="/footer.jsp" %>
</html>