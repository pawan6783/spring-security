<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	.failed{
		color: red;
	}
</style>
</head>
<body>
	<h3>Login Form:</h3>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
				method="POST">
		<c:if test="${param.error != null}">
			<i class="failed">Sorry! Invalid username/password</i>		
		</c:if>
		<c:if test="${param.logout != null}">
			<i class="failed">You have been logged out</i>		
		</c:if>
		<p>
			User Name <input type="text" name="username"/>
		</p>
		<p>
			Password <input type="password" name="password"/>
		</p>
		<br>
		<input type="submit" value="Login"/>
	</form:form>
</body>
</html>