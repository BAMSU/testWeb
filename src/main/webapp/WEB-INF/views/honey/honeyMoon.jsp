<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<td>
<!-- 
	<img  src="/발리1.jpg"
	 usemap="#worldmap">
	 <map name="worldmap">
	 <area shape="rect" alt="유럽" coords="" href="" target="_blank">
	 <area shape="rect" alt="몰디브" coords="" href="" target="_blank">
	 <area shape="rect" alt="푸켓" coords="" href="" target="_blank">
	 <area shape="rect" alt="호주" coords="" href="" target="_blank">
	 <area shape="rect" alt="발리" coords="" href="" target="_blank">
	 <area shape="rect" coords="" href="" target="_blank">
	 
	 </map>
-->
<img alt="map" src="map.jpg"> 
	<a href="honeyList_eu.jsp">유럽</a> | <a href="honeyList_moldive.jsp">몰디브</a> | <a href="honeyList_fucat.jsp">푸켓</a>
	<br><a href="honeyList_vali.jsp">발리</a> | <a href="honeyList_hoju.jsp">호주</a>
	
	
	
	
</td>
</tr>
</table>
<table border="1">
<tr>
<th>문의 하기</th>
</tr>
<tr>
<td>*이름</td><td><input type="text" name="name" id="name"></td>
<td rowspan="4"><textarea rows="20" cols="20" readonly="readonly" style="resize: none;">이용약관</textarea></td>
</tr>
<tr>
<td>*휴대폰</td><td><input type="text" name="tel" id="tel"></td>
</tr>
<tr>
<td>*이메일</td><td><input type="text" name="email" id="email">@
<select name="email">
<option value="naver.com" selected>naver.com</option>
<option value="nate.com" selected>nate.com</option>
<option value="hanmail.net" selected>hanmail.net</option>
<option value="hotmail.com" selected>hotmail.com</option>
<option value="gmail.com" selected>gmail.com</option>
</select> 

</td>
</tr>
<tr>
<td>*결혼 예정일</td><td>
<%
             int year,month,day,max;
  
             Calendar cal = Calendar.getInstance();
  
             int y = cal.get(Calendar.YEAR);
             int m = cal.get(Calendar.MONTH)+1;
             int d = cal.get(Calendar.DAY_OF_MONTH);
  
             
             max=cal.getActualMaximum(Calendar.DAY_OF_MONTH); //현재달의 최대 일수를 구한다.
  
             out.println("<select name='year'>");
  
             for(year=y-3; year<=y+4; year++)
             {
                 out.println("<option value='");
                 out.println(year);
                 if(year==y)
             {
                 out.println("' selected>");
             }else{
                 out.println("'>");
             }
                 out.println(year);
                 out.println("</option>");
             }
             out.println("</select>년");
  

            out.println("<select name='month'>");
            for(month=1; month<=12; month++)
            {
                 if(month==m){
                       out.println("<option value='"+month+"' selected>"+month+"</option>");
                  }
                  else{ 
                       out.println("<option value='"+month+"'>"+month+"</option>");
                  }
             }
             out.println("</select>월");
  
    
             out.println("<select name='day'>");
  
             for(day=1; day<=max; day++) 
             {
                 if(day==d){
                       out.println("<option value='"+day+"' selected>"+day+"</option>");
                 }
                 else{
                       out.println("<option value='"+day+"'>"+day+"</option>");
                 }
             }
            out.println("</select>일");
     %>
</td>
</tr>
<tr>
<td rowspan="2" valign="top">*문의 내용</td>
<td rowspan="2"><textarea rows="10" cols="10"
 style="resize: none;"></textarea>
 </td><td><input type="checkbox" value="ygcheck" id="ygcheck">
 이용약관에 동의합니다</td>
</tr>
<tr><td align="center"><input type="button" value="문의하기"></td></tr>
</table>
</body>
</html>