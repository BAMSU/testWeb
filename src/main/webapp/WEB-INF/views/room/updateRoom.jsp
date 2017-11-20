<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap2.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="bootstrap/css/font-awesome2.min.css"
   media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="bootstrap/css/style2.css" media="screen"
   title="no title" charset="utf-8">
<meta charset="UTF-8">
<title>Love is staying</title>
<script>
function show() {
	
	var chk1 = 0;
	var chk2 = 0;
	
	
	for(i=0;i<document.fm.hallType1.length;i++){
		if(document.fm.hallType1[i].checked) {
			chk1 = chk1 + 1;
		}
	}
	for(i=0;i<document.fm.hallType2.length;i++){
		if(document.fm.hallType2[i].checked) {
			chk2 = chk2 + 1;
		}
	}
	
	if(chk1==0||chk2==0) {
		window.alert('웨딩홀 타입을 선택해주세요.');
	} else {
		
		var flag1 = 0;
		var flag2 = 0;
		var msg1 = '';
		
		for(i=0;i<document.fm.hallType1.length;i++){
			if(document.fm.hallType1[i].checked) {
				if(flag1>0) {
					msg1=msg1+',';
				}
				msg1= msg1+document.fm.hallType1[i].value;
				flag1 = flag1 + 1;
			}
		}
		msg1 = msg1 + '/';
		
		for(i=0;i<document.fm.hallType2.length;i++){
			if(document.fm.hallType2[i].checked) {
				if(flag2>0) {
					msg1=msg1+',';
				}
				
				msg1= msg1+document.fm.hallType2[i].value;
				flag2 = flag2 + 1;
			}
		}
		document.fm.type.value=msg1;
		
		var chk3 = 0;
		
		
		for(i=0;i<document.fm.menu1.length;i++){
			if(document.fm.menu1[i].checked) {
				chk3 = chk3 + 1;
			}
		}
		
		if(chk3==0) {
			window.alert('메뉴를 선택해주세요.');
		} else {
			
			var flag3 = 0;
			var msg2 = '';
			
			for(i=0;i<document.fm.menu1.length;i++){
				if(document.fm.menu1[i].checked) {
					if(flag3>0) {
						msg2=msg2+',';
					}
					msg2= msg2+document.fm.menu1[i].value;
					flag3 = flag3 + 1;
				}
			}
			
			document.fm.menu.value=msg2;
			
			fm.submit();
		}
	}
	
	
	
	
	
}



</script>
</head>
<body>
<%@include file="/adminheader.jsp"%>
<div class="song">
<article class="container">

      <div class="col-md-12">
         <div class="page-header">
            <h3 align="center">룸 수정하기</h3>
         </div>
         <form class="form-horizontal" name="fm" action="updateRoom.we" method="POST">
         <c:forEach var="dto" items="${list}">
         
         <div class="form-group">
               <label class="col-sm-3 control-label">룸 이름 </label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="name"
                     value="${dto.name}" required>
               </div>
                </div>
                
                 <div class="form-group">
               
                <label class="col-sm-3 control-label">영업일자 </label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="weekDay"
                     value="${dto.weekDay}" required>
              
               
               </div>
            </div>
            
            
            <div class="form-group">
            <input type="hidden" name="type" value="${dto.type}">
               <label class="col-sm-3 control-label" >예식타입</label>
               
               
               
               <div class="col-sm-6">
                <input type="checkbox" name="hallType1" value="동시">동시  <input type="checkbox" name="hallType1" value="분리">분리
                <br>
                <input type="checkbox" name="hallType2" value="하우스">하우스  <input type="checkbox" name="hallType2" value="웨딩홀">웨딩홀  
				<input type="checkbox" name="hallType2" value="호텔">호텔 
               </div>
            </div>
            
            
            
            <script>
               var apple ='${dto.type}';
               
               var pen1 = apple.split('/');
               var pen11 = pen1[0].split(',');
            	   
               var pen22 = pen1[1].split(',');
               
           		for(var i = 0; i < pen11.length; i++) {
           		
           		for (var j = 0; j < document.fm.hallType1.length; j++) {
           			
           	         if (document.fm.hallType1[j].value==pen11[i]) {
           	        	document.fm.hallType1[j].checked=true;
           	         }
           	      }
           	}
           		
           		
           		
           		 for(var i = 0; i < pen22.length; i++) {
               		
               		for (var j = 0; j < document.fm.hallType2.length; j++) {
               	         if (document.fm.hallType2[j].value==pen22[i]) {
               	        	 document.fm.hallType2[j].checked=true;
               	         }
               	      }
               	}
               </script>
            
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >하객수</label>
               
               <div class="col-sm-6">
                <input class="form-control" type="text" name="guest" value="${dto.guest}" required>
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >예식간격(분)</label>
               
               <div class="col-sm-6">
                <input class="form-control" type="number" name="interval" value="${dto.interval}" required>
               </div>
            </div>
            
            
            
            <div class="form-group">
            <input type="hidden" name="menu" value="${dto.menu}">
               <label class="col-sm-3 control-label" >음식메뉴</label>
               
               <div class="col-sm-6">
                <input type="checkbox" name="menu1" value="한식">한식  <input type="checkbox" name="menu1" value="양식">양식
<input type="checkbox" name="menu1" value="뷔페">뷔페  <input type="checkbox" name="menu1" value="퓨전코스">퓨전코스
               </div>
            </div>
            
            
            <script>
               var aapple ='${dto.menu}';
               
               var apen1 = aapple.split(',');
              
               
           		for(var i = 0; i < apen1.length; i++) {
           		
           		for (var j = 0; j < document.fm.menu1.length; j++) {
           			
           	         if (document.fm.menu1[j].value==apen1[i]) {
           	        	document.fm.menu1[j].checked=true;
           	         }
           	      }
           	}
               </script>
            
            
            
            
            <div class="form-group">
            <input type="hidden" name="idx" value="${idx}">
			<input type="hidden" name="hallIdx" value="${dto.hallIdx}">
               <label class="col-sm-3 control-label" >음식가격</label>
               
               <div class="col-sm-6">
                <input class="form-control" type="text" name="menuPrice" value="${dto.menuPrice}" required>
               </div>
            </div>
            
            
            <div class="form-group">
          <div class="col-sm-12 text-center">
			<input class="btn btn-primary" type="button" value="수정하기" onclick="show()">
				<input class="btn btn-primary" type="button" onclick="javascript:location.href='roomList.we?idx=${dto.hallIdx}'" value="뒤로가기">
          </div>
        </div>
         </c:forEach>
         </form>
         
      </div>

   </article>
</div>
<%@include file="/footer.jsp"%>

</body>
</html>