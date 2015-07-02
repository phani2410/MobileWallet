<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Wrong Email Id.
	<br />
	<br>
	ReEnter your Email below.<br/><br/>
	<form action="resetpassword">
Email Id: <input type="text" name="email">
<br /><br /> <input type="submit" />
</form><br /><br />
<form action="home">
Click to return to home page.
<br /><br /> <input type="submit" />
</form>
</body>
</html>