<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1) type속성을 지정하거나 pattern 속성을 지정하여 숫자를 형식화한다.</h3>
	<p>coin : ${coin }</p>
	<fmt:parseNumber value="${coin }" var="coinNum" />	
	<p>coinNum : ${coinNum }</p>
</body>
</html>
