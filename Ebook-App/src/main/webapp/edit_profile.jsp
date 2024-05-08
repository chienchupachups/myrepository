<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit profile</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Profile</h4>
						
						<c:if test="${not empty failedMsg }">
						<h5 class="text-center text-danger">${failedMsg }</h5>
						<c:remove var="failedMsg"></c:remove>
						</c:if>
						
						<c:if test="${not empty succMsg }">
						<h5 class="text-center text-success">${succMsg }</h5>
						<c:remove var="succMsg"></c:remove>
						</c:if>


						<form action="update_profile" method="post">
							<input type="hidden" name="id" value="${userobj.id }">


							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									name="fname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" value="${userobj.name }">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email Address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="${userobj.email }">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									name="phno" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="${userobj.phonenumber }">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputEmail1">
							</div>

							<div class="text-center p-2">

							<button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>