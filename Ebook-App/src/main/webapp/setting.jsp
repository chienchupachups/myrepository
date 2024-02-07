<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting Page</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f7f7f7;">

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"/>
	
	
	</c:if>


	<%@include file="all_component/navbar.jsp"%>


	<div class="container p-2">

		
		<h3 class="text-center">Hello, ${userobj.name }</h3>

		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Sell Old Book</h4>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Old Book</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>
							</div>
							<h4>Edit Profile</h4>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-4 mt-3">
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-location-dot fa-3x"></i>
							</div>
							<h4>Address</h4>
							<p>Edit address</p>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-4 mt-3">
				<a href="user_order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-4 mt-3">
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-success">
								<i class="fa-solid fa-circle-user fa-3x"></i>
							</div>
							<h4>Help Center</h4>
							<p>24/7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<div class="text-center">
		<%@include file="all_component/footer.jsp"%>
	</div>

</body>
</html>