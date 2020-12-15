<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	hey ${obj.firstName} ${obj.password}
	<!--  hey ${obj.email} , ${obj.password}-->
	${SPRING_SECURITY_LAST_EXCEPTION.message}
						<form enctype="application/json" method="GET" action="/login">
							user:
							<input type="text" id="userEmail" name="username" value='' ><br> <br>
							
							password:
							<input type="password" id="userPassword" name="password"><br>
							<button class="btn" type="submit">Login Here</button>
						</form>
</body>
</html>