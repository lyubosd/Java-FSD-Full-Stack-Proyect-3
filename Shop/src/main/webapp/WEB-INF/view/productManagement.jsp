<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management</title>
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
<link type="text/css" rel="stylesheet" href="../resources/css/product.css">




</head>
<body
	style="background-image: url('../resources/images/background.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div style="margin-top: 7px;">


				<form action="../homepage/searchProducts" method="POST">
					<div>

						<input name="keySearch" id="searchBar"
							type="text" placeholder="Search Product" aria-label="Search">



						<button style="border-width: 0;padding: 12px;" type="submit">
							Search
						</button>

					</div>
				</form>


				<div id="cards_container">
					<div class="productContainer">

						<!-- loop over and print our customers -->
						<c:forEach var="product" items="${products}">

							<c:url var="updateLink" value="/admin/updateProduct">
								<c:param name="productId" value="${product.id}" />
							</c:url>

							<c:url var="deleteLink" value="/admin/deleteProduct">
								<c:param name="productId" value="${product.id}" />
							</c:url>

							<div class="product">
								<img src="${product.getImage_link()}"/>
								<div class="productBody">
									<h5>${product.name}</h5>
									<p>
										${product.company}<br>${product.size} size<br>${product.price}&euro;
									</p>
									<div class="productActions">
										<div>
											<a href="${updateLink}" class="productBtnUpdate"> Update</a> 
											<a href="${deleteLink}" class="productBtnRemove">Remove</a>
										</div>
									</div>


								</div>
							</div>

						</c:forEach>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>