<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>
<link type="text/css" rel="stylesheet" href="../resources/css/form.css">
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
<link type="text/css" rel="stylesheet" href="../resources/css/menu.css">
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">





</head>
<body
	style="background-image: url('../resources/images/background.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div class="formContainer">
				
				<br>
				<center>
					<h3>My Account</h3>
				</center>
				<form action="updateAcount"  method="POST">
					<div class="container">
						<label>Username
							: </label> <input value="${currentUser.username}" type="text" placeholder="Enter Username"
							name="username" required>  <label>Email: </label>
						<input value="${currentUser.email}" type="email" placeholder="Enter Email" name="email" required>
						<br /> <label>Password: </label> <input value="${currentUser.password}" type="text"
							placeholder="Enter Password" name="password" required>
						<br>
						<button type="submit">Update</button>
						<br> <br />


					</div>
				</form>

			</div>
		</div>
	</div>
</body>
</html>