<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>7장 JSP</h3>
	<p>JSTL 태그들의 Example ::: c:set</p>
	<p>1) escapeXml 속성의 기본값은 true이고, 특수 문자를 변환한다.</p>
	<c:set value="${member.userId }" var="id"/>
	<table border="1">
		<tr>
			<td>member.userId</td>
			<td>${id }</td>
		</tr>
	</table>
</body>
</html>