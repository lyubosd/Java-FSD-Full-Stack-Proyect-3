<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Management</title>
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
<link type="text/css" rel="stylesheet" href="../resources/css/table.css">



</head>

<body
	style="background-image: url('../resources/images/sportyshoes.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div>


				<br>
				<center>
					<h3>Manage Orders</h3>
				</center>
				<br>
				<div id="container">
					<center>
						<div id="content">

							<table style="width: 65%">

								<tr>

									<th>User Name</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Action</th>



								</tr>

								<c:forEach var="order" items="${orders}">




									<!-- construct an "delete" link with user id -->
									<c:url var="deleteLink" value="/admin/deleteOrder">
										<c:param name="orderId" value="${order.id}" />
									</c:url>
									<tr>

										<td>${order.user.username}</td>
										<td>${order.product.name}</td>
										<td>${order.product.price}$</td>
										<td><a class="actionButton"  href="${deleteLink}">
												Delete</a></td>



									</tr>


								</c:forEach>

								<tr>
									<td colspan="4">Total Price = <strong>${totalPrice}$</strong></td>
								</tr>

							</table>
						</div>
						<br>

					</center>
				</div>

			</div>
		</div>
	</div>
</body>
</html>