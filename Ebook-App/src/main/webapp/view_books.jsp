<%@page import="com.entity.User"%>
<%@page import="com.entity.Book_Dtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books Details</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>


	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	Book_Dtls b = dao.getBookById(bid);
	%>


	<div class="container">
		<div class="row p-5">
			<div class="col-md-6 text-center p-5 border bg-white">
				<!-- <img src="book/<%=b.getPhotoName()%>""></img> -->
				<img src="book/java.jpg"></img>
				<h4>
					Book Name:<span class="text-danger"><%=b.getBookname()%></span>
				</h4>
				<h4>
					Author Name:<span class="text-danger"><%=b.getAuthor()%></span>
				</h4>
				<h4>
					Category:<span class="text-danger"><%=b.getBookCategory()%></span>
				</h4>
			</div>

			<div class="col-md-6 text-center p-5 border bg-white ">
				<h2><%=b.getBookname()%></h2>
				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<h5 class="text-primary">Contact to Seller</h5>
				<h5 class="text-primary">
					<i class="fa-solid fa-envelope"></i> Email:
					<%=b.getEmail()%></h5>
				<%
				}
				%>



				<div class="row">



					<div class="col-md-4 text-success text-center p-2">
						<i class="fa-solid fa-money-bill-wave fa-3x"></i>
						<p>Cash On Delivery</p>
					</div>
					<div class="col-md-4 text-success text-center p-2">
						<i class="fa-solid fa-rotate-left fa-3x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-success text-center p-2">
						<i class="fa-solid fa-truck fa-3x"></i>
						<p>Free Shipping</p>
					</div>

				</div>



				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<div class="text-center p-3">
					<a href="index.jsp" class="btn btn-danger ml-2"><i
						class="fa-solid fa-cart-plus"></i> Continue Shopping</a> <a href=""
						class="btn btn-warning ml-2"><i
						class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>

				</div>
				<%
				} else {
				%>
				<%
				User user = (User) session.getAttribute("userobj");
				if ("Old".equals(b.getBookCategory())) {
				%>
				<div class="text-center p-3">
					<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=user.getId()%>"
						class="btn btn-danger ml-2"><i class="fa-solid fa-cart-plus"></i>
						Add Cart</a> <a href="" class="btn btn-warning ml-2"><i
						class="fa-solid fa-dollar-sign"></i> <%=b.getPrice()%></a>

				</div>
				<%
				}
				%>
				<%
				}
				%>



			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>