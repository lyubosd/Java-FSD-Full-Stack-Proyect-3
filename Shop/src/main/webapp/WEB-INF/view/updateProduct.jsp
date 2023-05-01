<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>
<link type="text/css" rel="stylesheet" href="../resources/css/form.css">
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">



</head>
<body
	style="background-image: url('../resources/images/background.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div class="formContainer">

				<br>
				<center>
					<h3>Add a New Product</h3>
				</center>
				<br>
				<form action="updateProductProcess" method="POST">
					<div class="container">
						
						<input type="hidden"
							 name="productId" value="${product.id}"> 
					
						<label>Product Name : </label> <br /> <input  type="text"
							placeholder="Enter name" name="name" value="${product.name}" required> 
						<br>
						
						<label>Company : </label> <br /> <input  type="text"
							placeholder="Enter company" name="company" value="${product.company}" required> 
						<br>	
						
						<label>Size : </label> <br /> <input  type="text"
							placeholder="Enter size" name="size" value="${product.size}"  required> 
						<br>
						
					
						<label>Price : </label> <br /> <input  type="text"
							placeholder="Enter price" name="price" value="${product.size}"  required> 
						<br>
						
						<label>Image Link : </label> <br /> <input  type="text"
							placeholder="Enter image" name="image"  value="${product.image_link}"  required> 
						<br>
						<br>
						<button type="submit">Update</button>
						<br>


					</div>
				</form>
<br><br>
			</div>
		</div>
	</div>
</body>
</html>