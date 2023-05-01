<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
<link type="text/css" rel="stylesheet" href="../resources/css/product.css">




</head>
<body
	style="background-image: url('../resources/images/background.jpg');">
	<div>
		<div>

			<jsp:include page="menu.jsp" />



			<div style="margin-top: 7px;">


				<form action="searchProducts" method="POST">
					<div >

						<input name="keySearch" id="searchBar" type="text"
							placeholder="Search Product" aria-label="Search">



						<button style="border-width: 0;padding: 12px;" type="submit">
							Search
						</button>

					</div>
				</form>


				<div id="cards_container" class="container">
					<div class="productContainer">

						<!-- loop over and print our customers -->
						<c:forEach var="product" items="${products}">

							<c:url var="orderLink" value="/homepage/orderProcess">
								<c:param name="productId" value="${product.id}" />
							</c:url>
							<c:url var="removeOrderLink" value="/homepage/removeOrder">
								<c:param name="productId" value="${product.id}" />
							</c:url>

							<div class="product">
								<img src=${product.image_link}>
								<div class="productBody">
									<h5>${product.name}</h5>
									<p>
										${product.company}<br>${product.size} inches<br>${product.price}$
									</p>

									<div class="productActions">
									<c:choose>
										<c:when test="${userProducts.contains(product.id)}">
											<a href="${removeOrderLink}"><i
												class="fa fa-shopping-cart fa-lg"></i> Remove from my Shop Cart</a>
										</c:when>

										<c:otherwise>


											<a href="${orderLink}"><i
												class="fa fa-shopping-cart fa-lg"></i> Add to my Shop Cart</a>
										</c:otherwise>
									</c:choose>
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