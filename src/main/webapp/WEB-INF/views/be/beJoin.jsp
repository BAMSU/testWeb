<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<style type="text/css">
.td1 {
	width: auto;
}
</style>
</head>
<body>
<br>
<br>
<div style="width:80%; margin:auto;">
	<div class="alert alert-dismissible alert-warning" align="center" >
	  <h4>환영합니다!</h4>
	  	<p>사랑이 머물다와 함께 하기 위해서는 등록 신청과 승인이 필요합니다. <br>
	  	아래의 간단한 업체정보를 확인 후 담당자에게 개별 문의로 알려드립니다.</p>
	</div>
</div>
<!-- be_idx, be_sort, be_name, be_license, be_rep_tell, incharge_name, incharge_email, incharge_tell
, be_loc, be_size, be_park, be_empnum, be_consult, admin_permission -->
<div style="width:80%;margin:auto;">
<form action="beJoin.we" name="beJoinForm" method="post">
<table class="table table-striped table-hover table-bordered">
	<tr>
		<th colspan="4" text-align="center">업체 등록신청 양식</th>
	</tr>
   <tr class="table-danger">
      <td>업체 종류</td>
      <td colspan="3">
         <select name="be_sort" class="nav-item dropdown show">
            <option value="스튜디오" >스튜디오</option>
            <option value="드레스">드레스</option>
            <option value="메이크업">메이크업</option>
            <option value="예복">예복(남성정장)</option>
            <option value="웨딩카">웨딩카</option>
            <option value="웨딩슈즈">웨딩슈즈</option>
            <option value="부케">부케</option> 
         </select>
      </td>
   </tr>
   
   <tr>
      <td class="td1">업체명</td> 
      <td><input type="text" name="be_name" required></td> 
      <td class="td1">사업자 등록번호</td> 
      <td><input type="text" name="be_license" required placeholder="123-00-000"></td>
   </tr>
   
   <tr>
      <td>소재지</td> 
      <td><input type="text" name="be_loc" required ></td> 
      <td>매장규모</td> 
      <td style="size: 20%;"><input type="text" name="be_size" required placeholder="ex)50평규모"></td>
   </tr>
   
   <tr>
      <td>대표번호</td> 
      <td colspan="3"><input type="text" name="be_rep_tell" required></td> 
   </tr>
   
   <tr>
      <td>담당자명</td> 
      <td><input type="text" name="incharge_name" required></td> 
      <td>담당자 이메일</td> 
      <td><input type="text" name="incharge_email" required></td>
   </tr>
   
   <tr>
      <td>담당자 연락처</td> 
      <td colspan="3"><input type="text" name="incharge_tell" required></td> 
   </tr>
   
   <tr>
      <td>주차시설</td> 
      <td><input type="text" name="be_park" required placeholder="10대가능  or OO백화점"></td> 
      <td>임직원 수</td> 
      <td><input type="text" name="be_empnum"></td>
   </tr>
   
   <tr>
      <td>업체 아이디</td> 
      <td><input type="text" name="be_id" required></td> 
      <td>비밀번호</td> 
      <td><input type="password" name="be_pwd" required></td>
   </tr>
   
   <tr>
      <td colspan="4" align="center">
      	<input type="submit" value="업체등록신청"  class="btn btn-outline-primary">   
      	<a href="beLogin.we"><input type="button" value="돌아가기"  class="btn btn-outline-primary"></a>
      </td>
   </tr>
   
</table>
</form>
</div>
<br><br><br><br><br><br><br><br><br>
<%@include file="/footer.jsp" %>
</body>
</html>





