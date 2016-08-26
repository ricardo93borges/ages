<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
#form-wrapper {
	width: 300px;
	margin: auto;
}

form div {
	padding: 5px !important;
}

form fieldset{
	border-radius:16px;
}

form label{
	width:100%;
	text-align: center;
}

form input{
	width:100%;
	padding: 5px 0;
}

#login-btn-wrapper {
	text-align: center !important;
}

#login-btn {
	background: #3498db;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 5px 10px 5px 10px;
	text-decoration: none;
	border:none;
	width:100px;
}

#login-btn:hover {
	background: #3cb0fd;
	text-decoration: none;
	cursor:pointer;
}
</style>
</head>
<body>
	<div id="form-wrapper">
		<form method="post" action="/Acesso/Login">
			<fieldset>
				<legend style="text-align: center">LOGIN</legend>
				<div>
					<label for="username">Username</label>
					<input type="text" name="username" placeholder="Username">
				</div>
				<div>
					<label for="password">Password</label>
					<input type="password" name="password" placeholder="Password">
				</div>
				<div id="login-btn-wrapper">
					<input type="submit" name="login" id="login-btn" value="Acessar"/>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>