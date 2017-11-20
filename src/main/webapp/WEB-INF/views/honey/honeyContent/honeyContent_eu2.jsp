<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  
  function qnaSubmit(ymd){
	  var year = ymd.subString(6,9);
	  var mt = ymd.subString(0,1);
	  var day = ymd.subString(3,4);
	  //ymd=00/00/0000 01/(2)34/(5)6789
	  var wedding = document.getElementById("datepicker");
	  var year2 = wedding.subString(6,9);
	  var mt2 = ymd.subString(0,1);
	  var day2= ymd.subString(3,4);
	  if(year>year2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else if(year<year2&&mt>mt2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else if(year<year2&&mt<mt2&&day>day2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else{
		  window.alert('문의가 성공적으로 완료 되었습니다.\n 빠른 시일 내로 최적의 답변을 드리겠습니다.');
		  document.honeyQna.submit();
	  }
  };
  </script>

<style type="text/css">
section {
	width: 1000px;
	margin: 0px auto;
}

table {
	width: 800px;
	margin: 0px auto;
}

#box {
	width: 100%;
}
#t_div{
	margin: 0px auto;
	padding-left: 170px;
	padding-right: 170px;
	}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		<table border="1">
			<tr>
				<th colspan="4"><img style="width: 100%;"
					src="honeyimg/imgeu/croatia1.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆ 낭만적인 크로아티아
							3박 4일 풀 패키지 ☆ </strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th class="table-active" width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-10-20 ~
					2018-06-30</td>
				<th class="table-active" width="172">상품가격</th>
				<td width="230" style="text-align: center;">2,100,000원 ~
					2,400,000원</td>
			</tr>
			<tr>
				<th class="table-active">국가</th>
				<td style="text-align: center;">유럽</td>
				<th class="table-active">여행지역</th>
				<td style="text-align: center;">크로아티아</td>
			</tr>

			<tr>
				<td colspan="4"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">※ 해당
					정보는 전반적인 상품안내를 위한 내용이며, 고객님의 허니문 일정에 따라 호텔 객실, 항공 비용이 달라지므로 상담신청을
					해주시면 상세 상담을 드리도록 하겠습니다.</td>

			</tr>
		</table>

		<br>

		<table border="1">
			<tr>
				<th class="table-active" colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">리조트
					정보</th>
			</tr>
			<tr>
				<td><img src="honeyimg/imgeu/croatia2.jpg" style="width: 100%;"
					height="200"></td>
				<td>
					<TABLE id="box"
						style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt"
						border="1" cellSpacing="0" cellPadding="0" width="600"
						height="200">
						<TBODY>
							<TR
								style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
								<TD
									style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffffcc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1"
									width=615>
									<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt"
										class=MsoNormal align=left>
										<SPAN style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt"><SPAN
											style="COLOR: #008000"><STRONG>◆ 자그레브
													예정호텔&lt;준특급&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000">
												<BR>Hotel Dubrovnik / 두브로브니크 Rixos Hotel
												Libertas
										</SPAN> <BR> <BR> 두브로 브니크 해변의 파라솔 및 일광욕 의자에서 해변의 휴일을 즐겨보세요.
											풀서비스 스파의 트리트먼트로 몸을 가꾸고 릭소스 리베르타스 두브로브니크의 계절에 따라 운영 되는 야외 수영장
											및 실내 수영장 같은 편의시설 및 서비스를 이용할 수 있습니다. </span>
									</P>
								</TD>
							</TR>
						</TBODY>
					</TABLE>

				</td>
			</tr>
			<tr>
				<th class="table-active" style="line-height: 24px; padding: 12px 10px 12px 10px;">포함
					조항</th>
				<th class="table-active" style="line-height: 24px; padding: 12px 10px 12px 10px;">불포함
					조항</th>
			</tr>
			<tr>
				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%">
					<font style="vertical-align: top;" color="#0021b0" face="돋움체" size="2">1. 유럽왕복항공권<br>
					2. 항공텍스 및 유류할증료 : 459,100원
					<br>&nbsp;-&nbsp;2016.10.24 기준 항공텍스 및 유류할증료 
					<br>&nbsp;&nbsp; 입니다. 
					<br>&nbsp;- 유류할증료 및 항공 TAX 는  유가와 환율에 따라<br>&nbsp;&nbsp; 수시 요금 변동될 수 있습니다. 
					<br>&nbsp;- 항공권 발권시, 해당일의 정확한 TAX 및<br>&nbsp;&nbsp; 유류할증료를  재안내 해드립니다.
					<br>3.&nbsp;두브로브니크 자그레브&nbsp;왕복 항공권</font></p><p><font color="#0021b0" face="돋움체" size="2">
					4. 숙소 5박 및 조식<br>5. 1억원 보장 여행자보험<br>
					6. 여행정보  책자[2인 1권]<br>7. 멀티어뎁터/안전전대/목베개<br>8. 아시아나 항공 마일리지 적립</font>
					</p><p><font color="#0021b0" face="돋움체" size="2">
					&nbsp;- 발권 CLASS 별로 적립율은  상이합니다.<br><br></font></p>
					<p><font color="#0021b0" face="돋움체" size="2">*숙소에 따른 금액은 상기 요금표를 확인해주시기  바랍니다.</font>
				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">1. 일정에 명시되지 않은 개인경비</font></font>&nbsp;
					<p><font face="돋움체">
					<font color="#0021b0" size="2">2.&nbsp;유럽 호텔 관광 CITY TAX<br></font></font>&nbsp;
				</td>
			</tr>
		</table>
		<br>

		<table border="1">
			<tr>
				<th class="table-active" colspan="2" align="left"
					style="line-height: 24px; 
					padding: 12px 10px 12px 10px;">허니문
					일정</th>
			</tr>
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;">
						<strong>※ 기본 일정 : 인천-[항공]-자그레브(2박)-두브로브니크(2박)-자그레브(1박)-[항공]-인천<br style="margin: 0px; padding: 0px;">※ 항공사 : 카타르 항공</strong>
						▶ 1 일 ◀ 인천 / 도하 / 자그레브</strong></p><font face="돋움체" style="color: rgb(59, 59, 59); text-transform: none; line-height: 20px; text-indent: 0px; letter-spacing: normal; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; -webkit-text-stroke-width: 0px;"><font face="돋움체"><p>인천공항 출국수속(항공출발 3시간 전)<br>[QR 859 01시 20분]인천 국제공항 출발 <br>[05시 05분] 도하 도착<br>[QR 217 07시 00분]&nbsp;도하 출발<br>[12시 15분] 자그레브 도착 후 호텔투숙 &nbsp;</p><p style="margin: 0px; padding: 0px; -ms-word-break: break-all;">&nbsp;</p><p>숙소&nbsp;체크인 후 자유여행<br><font color="#ff6600"><strong>▒ 추천일정 ▒</strong></font><br>고고학 박물관, 스트로스마예로브 미술관, 근현대 미술관, 토미슬라브 광장</p><p>보타니칼 가든 등&nbsp;</p><p style="margin: 0px; padding: 0px; -ms-word-break: break-all;">&nbsp;</p><p><font color="#0084a0"><span style="color: rgb(0, 117, 200);">*항공 출발 3시간전 인천공항에 도착하여 해당 항공사 카운터에서 출국수속</span><br><span style="color: rgb(0, 117, 200);">*군미필자는 출국장  A와B카운터 사이에 병무신고 (국외여행허가서 지참) </span><br><span style="color: rgb(0, 117, 200);">*수화물 보내실때는 필히 BAGGAGE TAG을 보관해야함.</span><br><span style="color: rgb(0, 117, 200);">*기내에서  Immigration Card 영문으로 작성하기 (숙소란은 호스텔명을 기입)</span><br><span style="color: rgb(0, 117, 200);">*메트로 8호선 Aeropuerto역 탑승 30분 <span style="color: rgb(0, 117, 200);">소요</span> €  1</span><br><span style="color: rgb(0, 117, 200);">*Aerobus 시내까지 30분 소요 €2.5</span></font></p></font><p style="margin: 0px; padding: 0px; -ms-word-break: break-all;"><font color="#0084a0"><br></font></p></font><p style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><strong>▶ 2 일 ◀ 자그레브</strong></p><font face="돋움체"><p>숙소 조식 후 근교 도시 자유여행<br><font color="#ff6600"><strong>▒ 추천일정 ▒</strong></font><br>플리트비체 당일 관광&nbsp;</p><p><font color="#0084a0"><span style="color: rgb(0, 117, 200);">* 관광안내소 (인포메이션 센터&nbsp; ⓘ)</span><br><span style="color: rgb(0, 117, 200);">&nbsp;지도 판매(20Kn) 추천 코스와 소요시간 문의. ⓘ가 
문을 닫을 경우 매표소가</span><br><span style="color: rgb(0, 117, 200);">&nbsp;대신 한다.</span><br><span style="color: rgb(0, 117, 200);">* 자그레브 -&gt; 플리트비체 이동시간 : 버스를 이용하여 2시간 
30분.</span></font></p></font><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">&nbsp;</p><p style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><strong>▶ 3 일 ◀ 자그레브 / 두브로브니크</strong></p><font face="돋움체" style="color: rgb(59, 59, 59); text-transform: none; line-height: 20px; text-indent: 0px; letter-spacing: normal; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; -webkit-text-stroke-width: 0px;"><font face="돋움체"><p>숙소 조식 후 두브로브니크 이동(항공이동)</p><p><font color="#ff6600"><strong>▒ 추천일정 ▒</strong><br></font>필레 문, 성벽, 성 사비오르 성당, 오노프리우스 분수, 프란체스코 수도원과</p><p>박물관&nbsp;</p></font><p>&nbsp;</p></font><p><strong>▶ 4 일 ◀ 두브로브니크</strong></p><font face="굴림"><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><font color="#000000">숙소 조식 후 자유여행</font><br><font color="#ff6600"><strong>▒ 추천일정  ▒</strong><br></font><font color="#000000">플라차 대로, 스폰자 궁전과 국립기록 보관소, 오를란도브 게양대, 성브라이세</font></p><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><font color="#000000">성당, 스지르 산&nbsp;등<br><br></font></p></font><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><font color="#0084a0" face="돋움체"><br></font></p><p style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><strong>▶ 5 일 ◀ 두브로브니크 / 자그레브</strong></p><p>숙소 조식 및 자유여행 후 자그레브 이동(항공이동)</p><p><font color="#ff6600"><strong>▒ 추천일정  ▒ </strong></font><br>부자 카페, 렉터 궁전, 대성당, 올드 포트 등</p><p>&nbsp;</p><p><strong><font color="#79c101">▒&nbsp;이동여정  ▒</font></strong></p><p style="margin: 0px; padding: 0px; text-transform: none; line-height: 20px; text-indent: 0px; letter-spacing: normal; font-family: dotum; font-size: 12px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">항공을 이용하여 자그레브 이동<br>&nbsp;</p><p><strong>▶ 6 일 ◀ 자그레브</strong></p><p>숙소 조식 후 자그레브 공항 출국수속 (항공출발 3시간 전)<br>[QR 218 13시 15분]자그레브공항 출발 </p><p>[19시 40분] 도하 도착&nbsp;</p><font color="#0075c8" style="font: 12px/20px dotum; text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><p>&nbsp;</p></font><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><strong>▶&nbsp;7 일 ◀ 인천</strong></p><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">[QR 858 01시 30분] 도하 출발</p><p style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">[16시 00분] 인천국제공항 도착</p>
				</font></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;"><p><span style="color: rgb(58, 50, 195);">
					<strong>※ 일정변경을 내 마음대로, 나만의 여행 컨설팅!!</strong></span>
					<br>&nbsp;상품의 일정변경, 도시의 추가 및 변경, 도시별 가이드투어 신청까지 고객님의 입맛에 맞춰 구성 및 변경을 해드립니다.</p>
					<p>&nbsp;</p><p><strong><span style="color: rgb(58, 50, 195);">※ 상세한 오리엔테이션 &amp;
					 24시간 비상연락망 운영 !!</span></strong><br>&nbsp;
					 패키지 여행과는 달리 현지에서 대부분의 것을 혼자 해결해야 하는 자유여행은 현지 사정 및 문화 차이 등 수많은 돌발상황<br>
					 및 변수가 있습니다. 유럽 자유여행시 미처 예측을 하지 못해 발생되는 여러가지의 문제들을 상세한 오리엔테이션을 통해 미<br>
					 연에 방지해드리고 있으며, 해결이 안 되는 부분에 대해 24시간 비상연락망을 운영하여 최대한 신속하게 처리를 해드리고 있<br>습니다.
					 &nbsp; </p><p>&nbsp;</p><p><span style="color: rgb(58, 50, 195);"><strong>※ 항공 안내</strong>
					 </span><br>&nbsp;해당상품은 R 클래스 기준 요금이며, 해당 클래스의 좌석이 마감되었을 경우 추가비용이 발생될 수 있습니다. </p>
					 <p>&nbsp;</p><p><span style="color: rgb(58, 50, 195);"><strong>※ 행사진행 안내</strong></span><br>
					 - 상품예약 및 일정의 변경 또는 추가요청 사항에 관해 상담.<br>- 요청사항 관련하여 알려주신 이메일로 행사 일정표 및 견적서 발송.<br>- 
					 예약 확정시 예약금 입금.<br>- 항공권 발권<br>- 출발 1개월전 나머지 잔금 결제.<br>- 출발 전 1:1 개별 오리엔테이션 진행. 
					 (주말 요청시에는 전화로 미리 가능여부를 확인해주세요.)<br>- 즐거운 허니문 출발~^^</p></font></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td width="235"><a href="countryContent.we?country=croatia">
						<img src="honeyimg/imgeu/croatia3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=croatia'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">크로아티아<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=eu"> <img
						src="http://ifamily.co.kr/center/website/travel/1408689961_1.jpg"
						width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=eu'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">유럽 <br></font><font size="4">패키지<br>보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>
					</div>
				</td>
			</tr>
		</table>
		<hr>
		<div id="t_div">
			<table 
			class="table table-striped table-hover table-bordered"
			border="1" id="qna" >
				<tr >
					<th colspan="3">문의 하기</th>
				</tr>
				<tr >
					<td><font size="2">*이름</font></td>
					<td><input type="text" name="name" id="name" style="width: 300px;"></td>
					
				</tr >
				<tr >
					<td><font size="2">*휴대폰</font></td>
					<td><input type="text" name="tel" id="tel" style="width: 300px;"></td>
				</tr>
				<tr >
					<td><font size="2">*이메일</font></td>
					<td><input type="text" name="email" id="email">@ <select
						name="email">
							<option value="naver.com" selected>naver.com</option>
							<option value="nate.com" selected>nate.com</option>
							<option value="hanmail.net" selected>hanmail.net</option>
							<option value="hotmail.com" selected>hotmail.com</option>
							<option value="gmail.com" selected>gmail.com</option>
					</select></td>
				</tr>
				<tr >
					<td><font size="2">*결혼 예정일</font></td>
					<td><input type="text" id="datepicker" style="width: 300px;"></td>
				</tr>
				<tr >
					<td rowspan="2" valign="top"><font size="2">*문의 내용</font></td>
					<td rowspan="2"><textarea rows="5" 
							style="resize: none;width: 300px;"></textarea></td>
					</tr>
				<tfoot >
				<tr >
				<td colspan="2" align="right">
				<button type="button" class="btn btn-info">문의하기</button>
				</td>
				</tr>
				</tfoot>
			</table>
			</div>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>