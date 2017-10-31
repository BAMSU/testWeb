
<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

{emps:[
<c:forEach var="dto" items="${empList}">
{name:'${dto.name}',email:'${dto.email}',dept:'${dto.dept}'},
</c:forEach>
]}