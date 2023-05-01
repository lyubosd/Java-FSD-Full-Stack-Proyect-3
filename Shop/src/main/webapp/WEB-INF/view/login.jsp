<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
 <link type="text/css" rel="stylesheet" href="resources/css/login.css"> 
  
</head>
<body style="background-image: url('resources/images/background.jpg');">

	<div class="title_container">
		<h1>Administrative Login</h1>
    </div>
	<div class="login-page">
		<div class="form">
			<form class="login-form" action="loginProcess" method="POST">
				<input type="text" name="username" placeholder="username" /> 
				<input type="password" placeholder="password" name="password" required />
				<button type="submit">login</button>
	            <a href="${pageContext.request.contextPath}/register">Don't have an account? Register now!</a>   

			</form>
		</div>
	</div>
</body>
</html>