<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
   href="https://bootswatch.com/4/journal/bootstrap.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/demos/style.css" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<link href="https://fonts.googleapis.com/css?family=Montez"
   rel="stylesheet">
   
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>


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
section {
   width: 800px;
   margin: 0px auto;
}

table {
   margin: 0px auto;
   width: 400px;
}

ul.mylist, ol.mylist {
   list-style: none;
   margin: 0px;
   padding: 0px;
   max-width: 900px;
   width: 100%;
}

ul.mylist li, ol.mylist li {
   width: 175px;
   display: inline-block;
   padding: 10px;
   margin-bottom: 5px;
   border: 1px solid #FFA7A7;
   color: #FFA7A7;
   font-size: 15px;
   cursor: pointer;
}

ul.mylist li:hover, ol.mylist li:hover {
   background-color: #f6f6f6;
}

.style select {
   width: 175px;
   height: 30px;
   padding-left: 5px;
   font-size: 15px;
   color: #FFA7A7;
   border: 1px solid #FFA7A7;
   border-radius: 3px;
}

#dateofbirth {
   margin: 11px;
   width: 175px;
   height: 30px;
   padding-left: 5px;
   font-size: 15px;
   color: #FFA7A7;
   border: 1px solid #FFA7A7;
   border-radius: 3px;
}

#dateofbirth2 {
   margin-left: 11px;
   width: 175px;
   height: 30px;
   padding-left: 5px;
   font-size: 15px;
   color: #FFA7A7;
   border: 1px solid #FFA7A7;
   border-radius: 3px;
}
</style>

<script>
   var now = new Date();
   var today = '';
   var s_city = '';
   var a_city = '';
   var s_date = today;
   var a_date = today;
   var s = new Array(3);
   var a = new Array(3);
   var way = 0;
   var international = 0;

   
   $(function() {
      
      $('#dateofbirth').change(function() {
         s_date = $(this).val();
         s = s_date.split('-');
         s_date = s[0] + '' + s[1] + '' + s[2];
         if (s_date < today) {
            alert("오늘 날짜보다 이전 날짜입니다. " + today);
            window.location.reload();

         }
      });

   });

   $(function() {
      
      $('#dateofbirth2').change(function() {
         a_date = $(this).val();
         a = a_date.split('-');
         a_date = a[0] + '' + a[1] + '' + a[2];

         if (a_date < today) {
            alert("오늘 날짜보다 이전 날짜입니다. " + today);
            window.location.reload();

         }

      });
   });

   $(document).ready(function() {
      year = now.getFullYear();

      month = now.getMonth();

      date = now.getDate();

      monthtext = "";
      datetext = "";
      if (month + 1 >= 10) {
         monthtext = "" + (month + 1);
      } else {
         monthtext = "0" + (month + 1);
      }
      if (date >= 10) {
         datetext = "" + (date);
      } else {
         datetext = "0" + (date);
      }

      today = year + '' + monthtext + '' + datetext;

      $('#one-way').click(function() {
         $(function() {
            $("#dateofbirth2").hide();
            way = 1;
         });
      });
      $('#round-way').click(function() {
         $(function() {
            $("#dateofbirth2").show();
            way = 0;
         });
      });
      $('#tab_domestic').click(function() {

         $("#international-start").hide();
         $("#international-end").hide();
         $("#international-end1").hide();
         $("#international-end2").hide();
         $("#international-end3").hide();
         $("#domestic-start").show();
         $("#domestic-end").show();
         
         $("#domestic-end1").hide();
         $("#domestic-end2").hide();
         $("#domestic-end3").hide();
         $("#domestic-end4").hide();
         $("#domestic-end5").hide();
         $("#dateofbirth").val('가는날');
         $("#dateofbirth2").val('오는날');
         $("#tab_domestic").attr('background-color', '#FFA7A7');

         international = 0;

      });
      $('#tab_international').click(function() {
         $("#domestic-start").hide();
         $("#domestic-end").hide();
         $("#domestic-end1").hide();
         $("#domestic-end2").hide();
         $("#domestic-end3").hide();
         $("#domestic-end4").hide();
         $("#domestic-end5").hide();
         $("#international-end1").hide();
         $("#international-end2").hide();
         $("#international-end3").hide();
         $("#international-start").show();
         $("#international-end1").show();
         $("#dateofbirth").val('출국일');
         $("#dateofbirth2").val('귀국일');

         international = 1;

      });
      $('#domestic-start').change(function() {

         s_city = $(this).val();

         if (s_city == 'GMP') {
            $("#domestic-end").hide();
            $("#domestic-end2").hide();
            $("#domestic-end3").hide();
            $("#domestic-end4").hide();
            $("#domestic-end5").hide();
            $("#domestic-end1").show();

         } else if (s_city == 'PUS') {
            $("#domestic-end").hide();
            $("#domestic-end1").hide();
            $("#domestic-end3").hide();
            $("#domestic-end4").hide();
            $("#domestic-end5").hide();
            $("#domestic-end2").show();
         } else if (s_city == 'CJU') {
            $("#domestic-end").hide();
            $("#domestic-end1").hide();
            $("#domestic-end2").hide();
            $("#domestic-end4").hide();
            $("#domestic-end5").hide();
            $("#domestic-end3").show();
         } else if (s_city == 'RSU') {
            $("#domestic-end").hide();
            $("#domestic-end1").hide();
            $("#domestic-end3").hide();
            $("#domestic-end2").hide();
            $("#domestic-end5").hide();
            $("#domestic-end4").show();
         } else if (s_city == 'KPO') {
            $("#domestic-end").hide();
            $("#domestic-end1").hide();
            $("#domestic-end3").hide();
            $("#domestic-end4").hide();
            $("#domestic-end2").hide();
            $("#domestic-end5").show();
         }

      });
      $('#domestic-end').change(function() {
         a_city = $(this).val();

      });
      $('#domestic-end1').change(function() {
         a_city = $(this).val();

      });
      $('#domestic-end2').change(function() {
         a_city = $(this).val();

      });
      $('#domestic-end3').change(function() {
         a_city = $(this).val();

      });
      $('#domestic-end4').change(function() {
         a_city = $(this).val();

      });
      $('#domestic-end5').change(function() {
         a_city = $(this).val();

      });

      $('#international-start').change(function() {
         s_city = $(this).val();

         if (s_city == 'GMP') {
            $("#international-end").hide();
            $("#international-end2").hide();
            $("#international-end3").hide();
            $("#international-end1").show();

         } else if (s_city == 'PUS') {
            $("#international-end").hide();
            $("#international-end1").hide();
            $("#international-end3").hide();
            $("#international-end2").show();
         } else if (s_city == 'CJU') {
            $("#international-end").hide();
            $("#international-end1").hide();
            $("#international-end2").hide();
            $("#international-end3").show();
         }
      });
      $('#international-end').change(function() {
         a_city = $(this).val();

      });
      $('#international-end1').change(function() {
         a_city = $(this).val();

      });
      $('#international-end2').change(function() {
         a_city = $(this).val();

      });
      $('#international-end3').change(function() {
         a_city = $(this).val();

      });

   });

   

   function viewList() {
      if (s_city == '' || a_city == '' || s_date == '' || a_date == '') {
         alert('모든 정보를 입력해주세요');
      } else {
         location.href = 'flyList.we?&s_city=' + s_city + '&a_city='
               + a_city + '&s_date=' + s_date + '&a_date=' + a_date
               + '&way=' + way + '&international=' + international;
      }
   }
</script>
</head>
<body>
   <%@include file="/header.jsp"%>

   <div>
      <form id="airForm" name="domesticForm">
         <hr>
         <section>

            <br> <img alt="plane" src="honeyimg/plane.jpg">
            <p align="center" style="color:;">
               <font style="" size="10"><b> GoToHall</b></font>에서는 <font style=""
                  size="6"><b>김포, 제주, 부산, 여수, 포항</b></font> <br>총 5개의 <font
                  style="" size="8"><b>공항의 운항정보</b></font>에 대한 정보를 관리합니다.
            </p>
            <br>
            <div style="padding-left: 100px; padding-right: 100px;"
               align="center">
               <table>
                  <tr>
                     <td
                        style="padding: 10px; background-color: white; border: 1px solid #D5D5D5; height: 30px;"><label>항공권
                           조회</label></td>
                     <td align="right">
                        <div data-toggle="buttons">
                           <label for="round-way" class="btn btn-primary"> <input
                              type="radio" name="round_way" id="round-way" value="RT"
                              checked="" style=""> 왕복
                           </label>&nbsp;<label for="one-way" class="btn btn-primary"> <input
                              type="radio" name="round_way" id="one-way" value="OW">
                              편도
                           </label>
                        </div>
                     </td>
                     <!-- HND 도쿄/하네다
                   PEK 베이징/서우두
                   PVG 상하이
                   KIX 오사카
                   TSA 쑹산
                   VVO 블라디보스톡
                   SPN 사이판
                   SHA 상해
                   NRT 나리타
                   MFM 마카오
                   GLM 괌
                   DAD 다낭
                   CEB 세부
                   
            
                -->
                  </tr>
                  <tr>
                     <td
                        style="padding: 10px; background-color: white; border: 1px solid #D5D5D5; height: 30px;"
                        colspan="2">


                        <ul class="mylist">
                           <li id="tab_domestic" style="margin-right: 20px;">국내선</li>


                           <li id="tab_international">국제선</li>
                        </ul> <input type="hidden" id="domestic-round-way"
                        name="domestic_round_way" value="RT" /> <input type="hidden"
                        name="domestic_airline" value="KE" /> <input type="hidden"
                        name="domestic_airline" value="OZ" /> <input type="hidden"
                        name="domestic_airline" value="7C" /> <input type="hidden"
                        name="domestic_airline" value="LJ" /> <input type="hidden"
                        name="domestic_airline" value="TW" /> <input type="hidden"
                        name="domestic_airline" value="ZE" /> <input type="hidden"
                        name="domestic_airline" value="BX" />
                     </td>
                  </tr>
                  <tr>
                     <td colspan="2" align="center"
                        style="padding: 10px; background-color: white; border: 1px solid #D5D5D5; height: 30px;">
                        <div class="style">



                           <select id="domestic-start" name="domestic_start" title="출발지"
                              style="margin-right: 20px;">
                              <option value="">출발 공항</option>
                              <option value="GMP">서울/김포      </option>
                              <option value="PUS">부산/김해      </option>
                              <option value="CJU">제주      </option>
                              <option value="RSU">여수      </option>
                              <option value="KPO">포항      </option>
                           </select> <select id="international-start" name="domestic_start"
                              title="출발지" style="display: none; margin-right: 20px;">
                              <option value="">출발 공항</option>
                              <option value="GMP">서울/김포      </option>
                              <option value="PUS">부산/김해      </option>
                              <option value="CJU">제주      </option>
                           </select> <select id="domestic-end" name="domestic_start" title="도착지">
                              <option value="">도착 공항</option>
                              <option value="GMP">서울/김포      </option>
                              <option value="PUS">부산/김해      </option>
                              <option value="CJU">제주      </option>
                              <option value="RSU">여수      </option>
                              <option value="KPO">포항      </option>
                           </select> <select id="domestic-end1" name="domestic_start" title="도착지"
                              style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="PUS">부산/김해      </option>
                              <option value="CJU">제주      </option>
                              <option value="RSU">여수      </option>
                              <option value="KPO">포항      </option>
                           </select> <select id="domestic-end2" name="domestic_start" title="도착지"
                              style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="GMP">서울/김포      </option>
                              <option value="CJU">제주      </option>

                           </select> <select id="domestic-end3" name="domestic_start" title="도착지"
                              style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="GMP">서울/김포      </option>
                              <option value="PUS">부산/김해      </option>
                              <option value="RSU">여수      </option>
                           </select> <select id="domestic-end4" name="domestic_start" title="도착지"
                              style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="GMP">서울/김포      </option>
                              <option value="CJU">제주      </option>
                           </select> <select id="domestic-end5" name="domestic_start" title="도착지"
                              style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="GMP">서울/김포      </option>
                           </select> <select id="international-end" name="domestic_end" title="목적지"
                              style="display: none;">
                              <option value="">도착 공항</option>

                           </select> <select id="international-end1" name="domestic_end"
                              title="목적지" style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="HND">도쿄/하네다      </option>
                              <option value="PEK">베이징/서우두   </option>
                              <option value="CJU">상하이      </option>
                              <option value="RSU">오사카      </option>

                           </select> <select id="international-end2" name="domestic_end"
                              title="목적지" style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="HND">도쿄/하네다      </option>
                              <option value="PEK">베이징/서우두   </option>
                              <option value="CJU">상하이      </option>
                              <option value="RSU">오사카      </option>
                              <option value="KPO">사이판      </option>
                              <option value="GLM">괌         </option>
                              <option value="DAD">다낭         </option>
                              <option value="CEB">세부         </option>
                              <option value="NRT">나리타      </option>
                              <option value="SHA">상해         </option>
                           </select> <select id="international-end3" name="domestic_end"
                              title="목적지" style="display: none;">
                              <option value="">도착 공항</option>
                              <option value="PEK">베이징/서우두   </option>
                              <option value="CJU">상하이      </option>
                              <option value="RSU">오사카      </option>
                              <option value="NRT">나리타      </option>

                           </select>
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td
                        style="background-color: white; border: 1px solid #D5D5D5; height: 30px;"
                        colspan="2">
                   
                        <input type="date" name="reservation" id="dateofbirth"
                        value="가는날"   > 
                                                
                     <input type="date"  name="reservation"value="오는날" id="dateofbirth2">
                        </td>
                     <!-- <tr>
            <td style=" padding: 5px; background-color:white; border: 1px solid #D5D5D5; height:30px;" colspan="2"><select id="domestic-ea-adult" name="domestic_ea_adult"
               style="z-index: 10; opacity: 100;">
                  <option value="1">성인 1</option>
                  <option value="2">성인 2</option>
                  <option value="3">성인 3</option>
                  <option value="4">성인 4</option>
                  <option value="5">성인 5</option>
                  <option value="6">성인 6</option>
                  <option value="7">성인 7</option>
                  <option value="8">성인 8</option>
                  <option value="9">성인 9</option>
            </select> <select id="domestic-ea-children" name="domestic_ea_children"
               style="z-index: 10; opacity: 100;">
                  <option value="0">어린이 0</option>
                  <option value="1">어린이 1</option>
                  <option value="2">어린이 2</option>
                  <option value="3">어린이 3</option>
                  <option value="4">어린이 4</option>
                  <option value="5">어린이 5</option>
                  <option value="6">어린이 6</option>
                  <option value="7">어린이 7</option>
                  <option value="8">어린이 8</option>
                  <option value="9">어린이 9</option>
            </select> <select id="domestic-ea-infant" name="domestic_ea_infant"
               style="z-index: 10; opacity: 100;">
                  <option value="0">유아 0</option>
                  <option value="1">유아 1</option>
                  <option value="2">유아 2</option>
                  <option value="3">유아 3</option>
                  <option value="4">유아 4</option>
                  <option value="5">유아 5</option>
                  <option value="6">유아 6</option>
                  <option value="7">유아 7</option>
                  <option value="8">유아 8</option>
                  <option value="9">유아 9</option>
            </select></td>
         </tr>
          -->
               </table>
               <br>
               <button style="width: 400px;" type="button"
                  class="btn btn-primary btn-lg btn-block" onclick="viewList();"
                  style="cursor: pointer;">항공권 검색</button>
            </div>
            <br>

         </section>
      </form>
   </div>
   <hr>
   <%@include file="/footer.jsp"%>
</body>
</html>