<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

	<form action="Login" method="post">


		<div class="container">

			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="uname" required> <br /> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="pass" required> <br />

			<button type="submit">Login</button>

		</div>

	</form>

</body>
</html>