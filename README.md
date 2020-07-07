# ServletAndJSP



## Basic Login without database

Want to see the welcome page after login and without login you are not able to visit

any of the pages.

Make sure you are log with valid password.

Pages are: 
	
	1. login.jsp

	2. welcome.jsp

	3. video.jsp

	4. logout.jsp


#### 1.login.jsp

```.jsp

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

```

#### Login Servlet

```.java

package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");

		if (uname.equals("anik") && (pass.equals("123"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}

	}

}

```

#### 2. Welcome.jsp

```.jsp

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
	<h1>
		welcome.... ${username} <a href="video.jsp">Video here</a>
	</h1>


	<form action="Logout">
		<input type="submit" value="Click Here to Logout." />
	</form>
	
</body>
</html>
```
#### 3. video.jsp

```.jsp

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


	<h1>Video page ...enjoy</h1>

</body>
</html>


```

#### 4. Logout

```.java

package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}

} 

````
## Login With JDBC

