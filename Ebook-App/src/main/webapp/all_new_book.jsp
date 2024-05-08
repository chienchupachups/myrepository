<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.Book_Dtls"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All New Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/book.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%; margin-leftL -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000; # toast .display { visibility : visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {form { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

}
to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>

	<%
	User user = (User) session.getAttribute("userobj");
	%>


	<c:if test="${not empty addCart}">

		<div id="toast">${addCart}</div>

		<script type="text/javascript">


showToast();
function showToast(content){
	$('#toast').addClass("display");
	$('#toast').html(content);
	setTimeout(()=>{
		$("#toast").removeClass("display");
	},2000)
}


</script>
		<c:remove var="addCart" scope="session"></c:remove>
	</c:if>


	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row p-3">
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<Book_Dtls> list = dao.getAllNewBook();
			for (Book_Dtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
							
							<%
							if (user == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-5">Add
								Cart</a>

							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=user.getId()%>"
								class="btn btn-danger btn-sm ml-5">Add Cart</a>
							<%
							}
							%>

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>