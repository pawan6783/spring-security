<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Home Page
<hr>
<p>
User: <security:authentication property="principal.username"/>
<br>
Roles: <security:authentication property="principal.authorities"/>
</p>
<p>
<a href="${pageContext.request.contextPath}/leaders">Leadership meetings only (Only for meetings)</a>
</p>
<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	<input type="submit" value="Logout"/>
</form:form>
</body>
</html>