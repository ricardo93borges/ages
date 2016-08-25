<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<div>
		<form method="post" action="/Acesso/Login">
			<fieldset>
				<legend>Login</legend>
				<label for="username">Username</label>
				<input type="text" name="username" placeholder="Username">
				<label for="password">Password</label>
				<input type="password" name="password" placeholder="Password">
				<input type="submit" name="login" value="Acessar"/>
			</fieldset>
		</form>
	</div>
</body>
</html>