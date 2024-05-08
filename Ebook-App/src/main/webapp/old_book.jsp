<%@page import="com.entity.Book_Dtls"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User: Old Book</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<c:if test="${not empty succMsg }">
		<div class="text-center alert alert-success">${succMsg }</div>
		<c:remove var="succMsg" scope="session"></c:remove>
	</c:if>


	<div class="container p-5">
		<table class="table table-striped">
			<thead class="bg-primary text-black">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				User user = (User) session.getAttribute("userobj");
				String email = user.getEmail();
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<Book_Dtls> list = dao.getBookByOld(email, "Old");

				for (Book_Dtls b : list) {
				%>
				<tr>
					<td><%=b.getBookname()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><a
						href="delete_old_book?email=<%=email%>&&id=<%=b.getBookId()%>"
						class="btn btn-sm btn-danger">Delete</a></td>
				</tr>
				<%
				}
				%>




			</tbody>
		</table>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>