<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	<h1>Welcome........ ${username}</h1>

	<h2>Click here for</h2>

	<a href="videos.jsp">Go to Video </a>

<br/>

	<form action="Logout" method="post">


		<input type="submit" value = "Logout"/>

	</form>

</body>

</html>
