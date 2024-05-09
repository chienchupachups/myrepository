<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook:Login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-3">
		<div class="row mt-2">
			<div class="col-lg-4 offset-lg-4">
				<div class="card" style="margin-top: 10px;">
					<div class="card-body">
						<h3 class="text-center">Login</h3>
						
						<c:if test="${not empty failedMsg }">
						<h5 class="text-center text-danger">${failedMsg }</h5>
						<c:remove var="failedMsg"></c:remove>
						</c:if>
						
						<c:if test="${not empty succMsg }">
						<h5 class="text-center text-success">${succMsg }</h5>
						<c:remove var="succMsg"></c:remove>
						</c:if>
						
							
						<form action="login" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>

							<div class="text-center">
								<button type="submit" class="btn" style="background: #D90429; color: white;">Login</button>
								<div class="text-center">
									<a href="register.jsp">Create Account</a>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>