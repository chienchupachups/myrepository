<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>
	<%@include file="all_component/navbar.jsp"%>


	<div class="container p-2">
		<h3 class="text-center">Hello, Chien Doan</h3>
		<div class="row p-5">
			<div class="col-md-6">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-6">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>
							</div>
							<h3>Login & Security (Edit Profile)</h3>
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
				<a href="#">
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