<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
 <link type="text/css" rel="stylesheet" href="resources/css/login.css"> 
  
</head>
<body style="background-image: url('resources/images/background.jpg');">

	<div class="title_container">
		<h1>Register</h1>
    </div>
    <form action="registerProcess" method="POST">  
        <div class="form">   
                    <input type="email" placeholder="Enter Email" name="email" required>  
        
            <input type="text" placeholder="Enter Username" name="username" required>  

            <input type="password" placeholder="Enter Password" name="password" required>  
            <br/>
            <button type="submit">Register</button>   
            <br/>
          	<a href="${pageContext.request.contextPath}/login">Already have an account? Log in!</a>   
          
             
        </div>   
    </form>     


</body>
</html>