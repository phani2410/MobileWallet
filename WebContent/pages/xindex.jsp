<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--<spring:message code="label.helloworld" />-->
<html>
<head>
</head>
<body>
<table border="1">
<tr>
<th><h1> Fill the Form to register</h1></th>
<th><h1> Fill the Form to Login</h1></th>
</tr>
<tr>
<td>
	
	<form action="homeregister" method="post">
		       Name:<input type="text" name="name"><br />
		<br /> UserName: <input type="text" name="username"><br />
		<br /> Email Id: <input type="text" name="email"><br />
		<br /> Password: <input type="password" name="password"><br />
		<br /> <input type="submit" />
	</form>
	</td>
	<td>
	
	<form action="homelogin" method="post">
		Username: <input type="text" name="username"><br />
		<br /> Password: <input type="password" name="password"><br />
		<br /> <input type="submit" />
	</form>
	</td>
	</tr>
	</table>
	<%
		com.psl.model.Wallet w = (com.psl.model.Wallet)session.getAttribute("w");
	if(w!=null)
		out.println(w.getUsername());
	%>
</body>
</html>