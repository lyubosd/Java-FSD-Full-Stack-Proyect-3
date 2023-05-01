<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Management</title>
<link type="text/css" rel="stylesheet" href="../resources/css/form.css">
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
<link type="text/css" rel="stylesheet" href="../resources/css/menu.css">
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
<link type="text/css" rel="stylesheet" href="../resources/css/table.css">

</head>

<body
	style="background-image: url('../resources/images/background.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div>


				<br>
				<center>
					<h3>My Shop Cart</h3>

				</center>
				<br>
				<div id="container">
					<center>


						<div id="content">

							<table>

								<tr>

									<th>Name</th>
									<th>Company</th>
									<th>Size</th>
									<th>Price</th>


								</tr>

								<c:forEach var="userProducts" items="${userProducts}">
									<tr>

										<td>${userProducts.name}</td>
										<td>${userProducts.company}</td>
										<td>${userProducts.size}inches</td>
										<td>${userProducts.price}$</td>

									</tr>


								</c:forEach>

								<tr>
									<td colspan="4">Total Price = <strong>${total_price}$</strong></td>
								</tr>

							</table>
						</div>

					</center>
				</div>

			</div>
		</div>
	</div>
</body>
</html>