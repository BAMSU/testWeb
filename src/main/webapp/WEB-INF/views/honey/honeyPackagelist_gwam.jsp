<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<style type="text/css">
section{
	width:800px;
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
	<table>
		<tr>
			<td>
<img src="selectedgwam.jpg" usemap="#worldmap" width="800px;"> <map
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
				</map>

	</td>
		</tr>
	</table>

	<h2>괌</h2>
	<hr>
	<table id="plist">
	<tr><td><div>
					<a href="honeyContent.we?nation=gwam&idx=1"> <img
						src="honeyimg/imggwam/gwam1.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent.we?nation=gwam&idx=1'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">오션뷰 힐튼 메인타워/ 괌 <br> 5일 by LotteGG
					</font><br>
				</div>
				</td>
				</tr>
	</table>
</body>
</html>