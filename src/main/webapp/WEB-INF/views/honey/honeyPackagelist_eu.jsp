<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<style type="text/css">
section{
	width:800px;
	margin: 0px auto;
}
#plist {
	border: 0px; padding-top : 15px;
	border-spacing: 10px;
	padding-top: 15px;
}

#plist td {
	border-spacing: 2; width : 175px;
	height: 150px;
	width: 175px;
}

#plist img {
	width: 175px;
	height: 125px;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		
		<table>
			<tr>
				<td><img src="honeyimg/selecteduro.jpg" usemap="#worldmap"width="800px;"> <map
						id="worldmap" name="worldmap">
					<area shape="rect" alt="유럽" coords="42,122,90,183"
							href="honeyPackage.we?nation=eu" target="_self" />
						<area shape="rect" alt="몰디브" coords="181,290,227,353"
							href="honeyPackage.we?nation=moldive" target="_self" />
						<area shape="rect" alt="푸켓" coords="230,258,277,318"
							href="honeyPackage.we?nation=fucat" target="_self" />
						<area shape="rect" alt="발리" coords="280,301,316,361"
							href="honeyPackage.we?nation=vali" target="_self" />
						<area shape="rect" alt="호주" coords="318,345,360,405"
							href="honeyPackage.we?nation=hoju" target="_self" />
						<area shape="rect" alt="괌" coords="363,227,406,281"
							href="honeyPackage.we?nation=gwam" target="_self" />
						<area shape="rect" alt="사이판" coords="396,202,436,254"
							href="honeyPackage.we?nation=saipan" target="_self" />
						<area shape="rect" alt="하와이" coords="481,221,532,276"
							href="honeyPackage.we?nation=hawai" target="_self" />
					</map></td>
			</tr>
		</table>

		<h2>유럽</h2>
		<hr>
		<table border="1" id="plist">
			<tr>
				<td><div>
						<a href="honeyContent.we?nation=eu&idx=1"> <img
							src="honeyimg/imgeu/italy_benetia.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent.we?nation=eu&idx=1'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">물의 도시 베네티아/이태리<br>6박 7일로 정복하기<br></font>
					</div></td>
				<td><div>
						<a href="honeyContent.we?nation=eu&idx=2"> <img
							src="honeyimg/imgeu/croatia1.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent.we?nation=eu&idx=2.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">낭만적인 크로아티아 <br>3박 4일 풀 패키지
						</font>
					</div></td>
				<td><div>
						<a href="honeyContent.we?nation=eu&idx=3"> <img
							src="honeyimg/imgeu/praha.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent.we?nation=eu&idx=3'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">드라마같은 프라하 / 체코 <br>3박 4일 드라마 속으로
						</font>
					</div></td>
				<td><div>
						<a href="honeyContent.we?nation=eu&idx=4"> <img
							src="honeyimg/imgeu/paris.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent.we?nation=eu&idx=4'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">그리스 산토니니 <br>7일 by 유러브투어
						</font><br>
					</div></td>
			</tr>
			<tr>
				<td><div>
						<a href="honeyContent.we?nation=eu&idx=5"> <img
							src="honeyimg/imgeu/swis1.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent.we?nation=eu&idx=5'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">스위스의 속살 <br>9일 by 투리스타
						</font><br>
					</div></td>
				<td><div>
						<a href="honeyContent.we?nation=eu&idx=6"> <img
							src="honeyimg/imgeu/spain1.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent.we?nation=eu&idx=6'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">정렬과 축제의 도시 / 스페인 <br>8일 by 투어홀릭
						</font><br>
					</div></td>
			</tr>
		</table>

	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>