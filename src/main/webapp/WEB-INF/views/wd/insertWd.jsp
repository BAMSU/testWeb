<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fa5970f9e39f19d9b4f5c706aac8d7f9&libraries=services"></script>

<script>
   function geo() {
      var geocoder = new daum.maps.services.Geocoder();
      var callback = function(result, status) {
         if (status === daum.maps.services.Status.OK) {
            document.fm.locationX.value = result[0].x;
            document.fm.locationY.value = result[0].y;
         }
      };
      geocoder.addressSearch(
            document.getElementById('sample4_roadAddress').value, callback);
   }
   function geocut() {

      var apple = document.getElementById('sample4_roadAddress').value;
      var pen = apple.split(' ');
      var msg = '';
      for (var i = 2; i < pen.length; i++) {

         if (i > 2) {
            msg = msg + " ";
         }
         msg = msg + pen[i];
      }

      var fineapple = document.getElementById('sample4_jibunAddress').value;
      var pen2 = fineapple.split(' ');
      var msg2 = '';
      for (var i = 0; i < pen.length - 1; i++) {

         if (i == 0) {
            document.fm.si.value = pen2[i];
         } else if (i == 1) {
            document.fm.gu.value = pen2[i];
         } else if (i == 2) {
            document.fm.dong.value = pen2[i];
         } else {
            msg2 = msg2 + pen2[i];
         }
      }

      document.fm.addr.value = msg2;

      document.fm.roadAddr.value = msg;
   }
   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
   function sample4_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                  // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                  var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                     extraRoadAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if (data.buildingName !== '' && data.apartment === 'Y') {
                     extraRoadAddr += (extraRoadAddr !== '' ? ', '
                           + data.buildingName : data.buildingName);
                  }
                  // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if (extraRoadAddr !== '') {
                     extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }
                  // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                  if (fullRoadAddr !== '') {
                     fullRoadAddr += extraRoadAddr;
                  }
                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                  document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                  geo();
                  geocut();

                  // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                  if (data.autoRoadAddress) {
                     //예상되는 도로명 주소에 조합형 주소를 추가한다.
                     var expRoadAddr = data.autoRoadAddress
                           + extraRoadAddr;
                     document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
                           + expRoadAddr + ')';
                  } else if (data.autoJibunAddress) {
                     var expJibunAddr = data.autoJibunAddress;
                     document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
                           + expJibunAddr + ')';
                  } else {
                     document.getElementById('guide').innerHTML = '';
                  }
               }
            }).open();
   }

   function show() {

      var flag2 = 0;
      var msg1 = '';
      for (i = 0; i < document.fm.hallType2.length; i++) {
         if (document.fm.hallType2[i].checked) {
            if (flag2 > 0) {
               msg1 = msg1 + ',';
            }

            msg1 = msg1 + document.fm.hallType2[i].value;
            flag2 = flag2 + 1;
         }
      }
      document.fm.hallType.value = msg1;

      var chk3 = 0;

      for (i = 0; i < document.fm.menu1.length; i++) {
         if (document.fm.menu1[i].checked) {
            chk3 = chk3 + 1;
         }
      }

      if (chk3 == 0) {
         window.alert('식사타입 선택해주세요.');
      } else {

         var flag3 = 0;
         var msg2 = '';

         for (i = 0; i < document.fm.menu1.length; i++) {
            if (document.fm.menu1[i].checked) {
               if (flag3 > 0) {
                  msg2 = msg2 + ',';
               }
               msg2 = msg2 + document.fm.menu1[i].value;
               flag3 = flag3 + 1;
            }
         }

         document.fm.menuType.value = msg2;

         fm.submit();
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
            <h1>
               홀 등록하기 <small>끄앗 폼!</small>
            </h1>
         </div>


         <form class="form-horizontal" name="fm" action="insertWd2.we">
            <div class="form-group">
               <label class="col-sm-3 control-label">홀 이름 </label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="name"
                     placeholder="ㅇㅇ웨딩홀" required>
               </div>
            </div>
            <div class="form-group">
            <input type="hidden" name="hallType">
               <label class="col-sm-3 control-label" >홀 타입 </label>
               
               <div class="col-sm-6">
                <input type="checkbox" name="hallType2" value="하우스">하우스
                <input type="checkbox" name="hallType2" value="웨딩홀">웨딩홀 
                <input type="checkbox" name="hallType2" value="호텔">호텔 
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >식사 가격</label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="mealCost"
                     placeholder="4.7만원~8.5만원" required>
               </div>
            </div>
            
            <div class="form-group">
            <input type="hidden" name="menuType" required>
               <label class="col-sm-3 control-label" >식사 타입</label>

               <div class="col-sm-6">
                <input type="checkbox" name="menu1" value="한식">한식
                <input type="checkbox" name="menu1" value="양식">양식 
                <input type="checkbox" name="menu1" value="뷔페">뷔페 
                <input type="checkbox" name="menu1" value="퓨전코스">퓨전코스 
               </div>
               
               
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >손님</label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="guest"
                     placeholder="최소40명/최대600명" required>
               </div>
            </div>
            
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >한줄 성명</label>

               <div class="col-sm-6">
                  <textarea class="form-control" name="ckPoint"
                     placeholder="영국 황실풍의 스카이홀" required></textarea>
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >오시는 길</label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="traffic"
                     placeholder="7호선 청담역 13번 출구 도보 10분 소요" required>
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >호선</label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="line"
                     placeholder="7호선" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >역 이름</label>

               <div class="col-sm-6">
                  <input class="form-control" type="text" name="station"
                     placeholder="청담역" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" >주소</label>

               <div class="col-sm-6">
                  <input class="form-control" type="text"
               id="sample4_roadAddress" placeholder="도로명주소" readOnly required>
               <input class="form-control" type="text" id="sample4_jibunAddress" placeholder="지번주소"
               readOnly required>
               
               <input type="button" onclick="sample4_execDaumPostcode()"
               value="우편번호 찾기" required> <br> 
             <span id="guide" style="color: #999"></span>
            <input type="hidden" name="locationY" required> <input
               type="hidden" name="locationX" required> <input
               type="hidden" name="si" required> <input type="hidden"
               name="gu" required> <input type="hidden" name="dong"
               required> <input type="hidden" name="addr" required>
            <input type="hidden" name="roadAddr" required>
               
                  
               </div>
            </div>
            
            
             <div class="form-group">
          <div class="col-sm-12 text-center">
          <input class="btn btn-primary" type="button" value="웨딩홀등록" onclick="show()">
          </div>
        </div>
         
         
         
            
            
         </form>
      </div>

   </article>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="bootstrap/js/bootstrap2.min.js"></script></div><%@include file="/footer.jsp"%>
</body>
</html>