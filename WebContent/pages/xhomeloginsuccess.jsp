<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
</head>
<body>
	Your Login is Successful.
	<br /><br />
	The following are the details.
	<br />
	<br>
	<span class="label">Name: </span>
	<span>${w.name}</span>
	<br />
	<br>
	<span class="label">Username: </span>
	<span>${w.username}</span>
	<br />
	<br>
	<span class="label">Email: </span>
	<span>${w.email}</span>

</body>
</html>