<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty sessionScope.id }"> 
	<h4>환영합니다.</h4>
	<input type="button" onclick="location='logout'" value="로그아웃">
</c:if>

<%-- <c:if test="${not empty sessionScope.id }">  
	
</c:if> --%>
</body>
</html>