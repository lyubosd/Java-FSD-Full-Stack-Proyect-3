<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<link type="text/css" rel="stylesheet" href="../resources/css/menu.css">

	<div class="sidenav">
	<img src="../resources/images/logoSportyShoes.png" id="logo" />


	<c:choose>
		<c:when test="${currentUser.type == 0 }">
				<nav class="menu">
					<a href="${pageContext.request.contextPath}/homepage/products">
						 Home</a>
					<a class="active" href="${pageContext.request.contextPath}/homepage/cartManagement">
						 My Shop Cart</a>
					<a href="${pageContext.request.contextPath}/user/account">
						 My Account</a>
					<a class="" href="${pageContext.request.contextPath}/login">Log Out </a>
				</nav>
		</c:when>

		<c:otherwise>
			<nav  class="menu">
			 <a class="nav-link active"
				href="${pageContext.request.contextPath}/admin/products">  <h style="font-size: 22px;">Manage Products</h>
			</a> 
			<a 
				href="${pageContext.request.contextPath}/admin/userManagement">User Management</a>
			<a 
				href="${pageContext.request.contextPath}/admin/orderManagement">Order Management</a> 
			<a 
				href="${pageContext.request.contextPath}/admin/addProduct">Add Product</a>
				
				<a 
				href="${pageContext.request.contextPath}/login">Log Out</a>

		</nav>

		</c:otherwise>
		
		</c:choose>

		
</div>

