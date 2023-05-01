<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user Management</title>
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
					<h3>Manage Users</h3>

				</center>
				<br>
				<div id="container">
					<center>
						<div id="content">

							<table style="width: 45%">

								<tr>
									<th>Email</th>
									<th>User Name</th>
									<th>Action</th>



								</tr>

								<c:forEach var="user" items="${users}">

									<c:if test="${user.type == 0}">



										<!-- construct an "delete" link with user id -->
										<c:url var="deleteLink" value="/admin/deleteUser">
											<c:param name="userId" value="${user.id}" />
										</c:url>
										<tr>
											<td>${user.email}</td>
											<td>${user.username}</td>
											<td><a class="actionButton" href="${deleteLink}">
													Delete</a></td>



										</tr>

									</c:if>
								</c:forEach>



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