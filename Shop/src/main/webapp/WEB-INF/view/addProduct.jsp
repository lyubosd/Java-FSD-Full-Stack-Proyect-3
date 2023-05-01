<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link type="text/css" rel="stylesheet" href="../resources/css/form.css">
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
<link type="text/css" rel="stylesheet" href="../resources/css/menu.css">
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">


</head>
<body
	style="background-image: url('../resources/images/sportyshoes.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div class="formContainer">

				<br>
				<center>
					<h3>Add Product</h3>
				</center>
				<br>
				<form action="addProductProcess" method="POST">
					<div class="container">
						<label>Product Name: </label> <input type="text"
							placeholder="Enter name" name="name" required> 
						<br>
						
						<label>Company: </label> <input type="text"
							placeholder="Enter company" name="company" required> 
						<br>	
						
						<label>Size: </label> <input type="text"
							placeholder="Enter size" name="size" required> 
						<br>
						
						
						<label>Price: </label>  <input type="text"
							placeholder="Enter price" name="price" required> 
						<br>
						
						<label>Picture: </label> <input type="text"
							placeholder="Enter image" name="image" required> 
						<br>
						<br>
						<button type="submit">Add</button>
						<br>


					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>