<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>
<body>
	You have Registered successfully.
	<br /><br />
	The following are the details.
	<br />
	<br>
	<span class="label">Name: </span>
	<span>${wallet.name}</span>
	<br />
	<br>
	<span class="label">Username: </span>
	<span>${wallet.username}</span>
	<br />
	<br>
	<span class="label">Email: </span>
	<span>${wallet.email}</span>
	<br />
	<br>
	Keep Your Password Secured.
	<br />
	<br>
</body> 